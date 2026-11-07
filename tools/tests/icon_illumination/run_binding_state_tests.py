"""Exercise real APK texture binding and shader caches with isolated GLES contexts."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import struct


def main():
    parser = argparse.ArgumentParser(__doc__)
    for name in ('serial', 'apk', 'output', 'jdk', 'sdk'):
        parser.add_argument('--' + name, required=True)
    parser.add_argument('--mode', choices=('binding', 'shader-context', 'texture-context', 'texture-delete', 'mesh-context', 'shadow-context', 'fbo-context', 'fbo-failure', 'depth-release', 'depth-target', 'depth-stale'), default='binding')
    args = parser.parse_args()
    out, jdk, sdk = Path(args.output), Path(args.jdk), Path(args.sdk)
    for directory in ('classes', 'stubs', 'dex'):
        (out / directory).mkdir(parents=True, exist_ok=True)
    # Ca/Ea/f are compile-only. Texture modes additionally package the explicit World router.
    sources = {
        'com/smartisanos/smengine/Ca.java': 'package com.smartisanos.smengine; public class Ca {}',
        'com/smartisanos/smengine/mymaterial/f.java': '''package com.smartisanos.smengine.mymaterial;
public class f {public f(String a,String b,String c){} protected void Ht(){}
public void create(){} public void As(){} protected int d(int i,String n){return -1;}
protected int e(int i,String n){return -1;}
protected android.graphics.Bitmap hb(String n){return null;}
protected boolean a(String n,com.smartisanos.smengine.Ca s,int i){return false;}}''',
    }
    texture_mode = args.mode.startswith('texture-')
    if texture_mode:
        sources['com/smartisanos/smengine/Ea.java'] = 'package com.smartisanos.smengine; public class Ea {public Ea(){}}'
        # Test-only World router; the APK's real Material, TextureManager and Texture execute.
        sources['com/smartisanos/smengine/Ra.java'] = '''package com.smartisanos.smengine;
public final class Ra {private static final Ea M=new Ea(); private static final Ra I=new Ra();
public static Ra getInstance(){return I;} public Ea rt(){return M;}}'''
    shadow_mode = args.mode == 'shadow-context'
    if shadow_mode:
        sources['com/smartisanos/smengine/Ea.java'] = 'package com.smartisanos.smengine; public class Ea {public Ea(){} public void resetProjectionBindings(){}}'
        sources['com/smartisanos/smengine/La.java'] = 'package com.smartisanos.smengine; public interface La {void b(float f);void d(float f);}'
        sources['com/smartisanos/smengine/d.java'] = 'package com.smartisanos.smengine; public class d {}'
        sources['com/smartisanos/smengine/Ra.java'] = '''package com.smartisanos.smengine;
public final class Ra {private static final Ea M=new Ea(); private static final Ra I=new Ra();
public static Ra getInstance(){return I;} public Ea rt(){return M;}
public void a(La listener){} public d Zs(){return null;} public void wt(){}}'''
        sources['com/smartisanos/launcher/theme/t.java'] = '''package com.smartisanos.launcher.theme;
public class t {private static final t I=new t(); public static t getInstance(){return I;}
public void a(javax.microedition.khronos.egl.EGLContext context){}}'''
    stub_files = []
    for name, body in sources.items():
        path = out / 'stubs' / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(body, encoding='utf-8')
        stub_files.append(path)
    logs = []

    def run(command, check=True):
        result = subprocess.run(list(map(str, command)), capture_output=True, text=True,
                                encoding='utf-8', errors='replace', timeout=60)
        logs.append(result.stdout + result.stderr)
        (out / 'run.log').write_text(''.join(logs), encoding='utf-8')
        print(result.stdout + result.stderr, end='')
        if check:
            result.check_returncode()
        return result

    run([jdk / 'bin/javac.exe', '-encoding', 'UTF-8', '-cp', sdk / 'platforms/android-36/android.jar',
         '-d', out / 'classes', *stub_files, Path(__file__).with_name('MaterialBindingProbe.java')])
    env_before = os.environ.get('JAVA_HOME')
    os.environ['JAVA_HOME'] = str(jdk)
    try:
        runtime_router = [out / 'classes/com/smartisanos/smengine/Ra.class'] if texture_mode or shadow_mode else []
        if shadow_mode:
            runtime_router.append(out / 'classes/com/smartisanos/launcher/theme/t.class')
        run([sdk / 'build-tools/37.0.0/d8.bat', '--min-api', '23', '--classpath', out / 'classes',
             '--lib', sdk / 'platforms/android-36/android.jar', '--output', out / 'dex',
             *sorted((out / 'classes').glob('MaterialBindingProbe*.class')), *runtime_router])
    finally:
        if env_before is None:
            os.environ.pop('JAVA_HOME', None)
        else:
            os.environ['JAVA_HOME'] = env_before
    class_count = struct.unpack_from('<I', (out / 'dex/classes.dex').read_bytes(), 96)[0]
    if class_count != (6 if shadow_mode else 5 if texture_mode else 4):
        raise AssertionError('Unexpected runtime class set; compile-only stubs must not enter DEX')
    (out / 'probe-metadata.json').write_text(json.dumps({
        'mode': args.mode, 'apkSha256': hashlib.sha256(Path(args.apk).read_bytes()).hexdigest(),
        'probeDexClasses': class_count, 'testWorldRouter': texture_mode or shadow_mode, 'testThemeSink': shadow_mode,
    }, indent=2) + '\n', encoding='utf-8')
    adb = [sdk / 'platform-tools/adb.exe', '-s', args.serial]
    remote = '/data/local/tmp/smartisan-material-binding'
    try:
        run([*adb, 'push', out / 'dex/classes.dex', remote + '.dex'])
        run([*adb, 'push', args.apk, remote + '.apk'])
        result = run([*adb, 'shell', 'CLASSPATH=' + remote + '.dex:' + remote + '.apk',
                      'app_process', '/system/bin', 'MaterialBindingProbe', args.mode], check=False)
        expected = {'binding': 'PASS MATERIAL_BINDING', 'shader-context': 'PASS SHADER_CONTEXT',
                    'texture-context': 'PASS TEXTURE_CONTEXT', 'texture-delete': 'PASS TEXTURE_DELETE', 'mesh-context': 'PASS MESH_CONTEXT', 'shadow-context': 'PASS SHADOW_CONTEXT', 'fbo-context': 'PASS FBO_CONTEXT', 'fbo-failure': 'PASS FBO_FAILURE', 'depth-release': 'PASS DEPTH_RELEASE', 'depth-target': 'PASS DEPTH_TARGET', 'depth-stale': 'PASS DEPTH_STALE'}[args.mode]
        if result.returncode or expected not in result.stdout:
            raise SystemExit('Real APK GPU state probe failed; see run.log')
    finally:
        run([*adb, 'shell', 'rm', '-f', remote + '.dex', remote + '.apk'])


if __name__ == '__main__':
    main()
