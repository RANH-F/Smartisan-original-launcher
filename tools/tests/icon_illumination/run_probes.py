#!/usr/bin/env python3
"""Compare stock Smartisan native blur and GPU pixels with the current port shader.

Requires two authorized ADB devices, JDK, SDK (android-30/build-tools 36.1.0),
Pillow and numpy. Uses shell app_process; never installs or replaces stock Launcher.
"""
import argparse
import json
from pathlib import Path
import re
import shutil
import subprocess
import numpy as np
from PIL import Image

ROOT = Path(__file__).resolve().parents[3]

def fragment(path):
    source = path.read_text(encoding="utf-8")
    method = source.split('.method private static qA()Ljava/lang/String;', 1)[1].split('.end method', 1)[0]
    chunks = re.findall(r'const-string v1, (".*")', method)
    return ''.join(json.loads(value.replace("\\'", "'")) for value in chunks)

def main():
    parser = argparse.ArgumentParser(__doc__)
    for key in ("original", "target", "jdk", "sdk"):
        parser.add_argument("--" + key, required=True)
    parser.add_argument("--output", default=str(ROOT / 'build/icon-illumination-probes'))
    args = parser.parse_args()
    output, jdk, sdk = Path(args.output), Path(args.jdk), Path(args.sdk)
    output.mkdir(parents=True, exist_ok=True)
    classes, dex = output / 'classes', output / 'dex'
    classes.mkdir(exist_ok=True); dex.mkdir(exist_ok=True)
    adb = sdk / 'platform-tools/adb.exe'

    def run(command):
        result = subprocess.run([str(c) for c in command], check=True, capture_output=True,
                                text=True, encoding='utf-8', errors='replace', timeout=120)
        return result.stdout

    sources = [ROOT / 'launcher/tools/java/com/smartisanos/launcher/theme/IconProjectionBlur.java',
               Path(__file__).with_name('OriginalShadowProbe.java'),
               Path(__file__).with_name('ProjectionGpuProbe.java')]
    run([jdk / 'bin/javac.exe', '-encoding', 'UTF-8', '-source', '8', '-target', '8',
         '-bootclasspath', sdk / 'platforms/android-30/android.jar', '-d', classes, *sources])
    run([jdk / 'bin/jar.exe', 'cf', output / 'probe.jar', '-C', classes, '.'])
    import os
    os.environ['JAVA_HOME'] = str(jdk)
    run([sdk / 'build-tools/36.1.0/d8.bat', '--min-api', '26', '--output', dex, output / 'probe.jar'])
    remote = '/data/local/tmp/smartisan-projection-contract'
    device_dex = '/data/local/tmp/smartisan-projection-contract.dex'

    def device(serial, *command):
        return run([adb, '-s', serial, *command])

    for serial in (args.original, args.target):
        device(serial, 'push', dex / 'classes.dex', device_dex)
    log = device(args.original, 'shell', f'CLASSPATH={device_dex} app_process /system/bin '
                 f'OriginalShadowProbe {remote}-golden')
    (output / 'native-blur.log').write_text(log, encoding='utf-8')
    assert log.count('maxAlphaError=0 changedPixels=0 totalAlphaError=0') == 21, log
    golden = output / 'golden'
    golden.mkdir(exist_ok=True)
    device(args.original, 'pull', remote + '-golden/.', golden)
    gpu_input = output / 'gpu-input'
    gpu_input.mkdir(exist_ok=True)
    for mask in golden.glob('size192-*.png'):
        shutil.copy2(mask, gpu_input / mask.name)
    original = fragment(ROOT / 'clean_launcher_raw/smali/com/smartisanos/smengine/mymaterial/g.1.smali')
    current = fragment(ROOT / 'launcher/smali/com/smartisanos/smengine/mymaterial/g.1.smali')
    # Stable mathematical comparison makes the old GPU appearance discrepancy measurable.
    stable_function = '''vec2 SFSOffset(in vec3 lightPos, in vec3 planePos,
        in float dist, in float lightRadius) {
        vec3 l = lightPos / 4096.0; vec3 p = planePos / 4096.0;
        return (dist / 1000.0) * (l.xy / max(length(l-p), 0.000001));
    }\n'''
    stable = original[:original.index('vec2 SFSOffset')] + stable_function + original[original.index('vec4 SmartisanFakeShadow'):]
    for name, code in [('original', original), ('legacy', current), ('stable', stable)]:
        (gpu_input / (name + '-fragment.glsl')).write_text(code, encoding='utf-8')
    for name, serial in [('original', args.original), ('target', args.target)]:
        device(serial, 'push', str(gpu_input) + '/.', remote + '-gpu')
        log = device(serial, 'shell', f'CLASSPATH={device_dex} app_process /system/bin '
                     f'ProjectionGpuProbe {remote}-gpu')
        (output / (name + '-gpu.log')).write_text(log, encoding='utf-8')
        destination = output / name
        destination.mkdir(exist_ok=True)
        device(serial, 'pull', remote + '-gpu/.', destination)
    for pose in ('front', 'left', 'right', 'up', 'down', 'small', 'diagonal', 'edge', 'back'):
        a = np.asarray(Image.open(output / 'original' / ('original-' + pose + '.png')).getchannel('A')).astype(int)
        b = np.asarray(Image.open(output / 'target' / ('legacy-' + pose + '.png')).getchannel('A')).astype(int)
        difference = np.abs(a-b)
        print(pose, 'maxAlphaError=', difference.max(), 'meanAlphaError=', difference.mean())
        assert difference.max() <= 1 and difference.mean() < .03, pose
    print('NATIVE_BLUR_AND_GPU_CONTRACT=PASS (desktop visual acceptance remains separate)')

if __name__ == '__main__':
    main()
