"""Run the actual circle renderer with Android Canvas, without changing app data."""
import argparse
import os
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parents[3]


def main():
    parser = argparse.ArgumentParser(__doc__)
    parser.add_argument('--serial', required=True)
    parser.add_argument('--jdk', required=True, type=Path)
    parser.add_argument('--sdk', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    parser.add_argument('--visual', action='store_true')
    parser.add_argument('--packages', nargs='+', default=[])
    parser.add_argument('--renderer', type=Path, default=ROOT / 'launcher/tools/java/com/smartisanos/launcher/theme/DefaultIconCircleRenderer.java')
    args = parser.parse_args()
    if args.packages and not args.visual:
        parser.error('--packages requires --visual')
    args.output.mkdir(parents=True, exist_ok=True)

    def run(command, name):
        result = subprocess.run(list(map(str, command)), capture_output=True, text=True,
                                encoding='utf8', errors='replace', timeout=120)
        (args.output / name).write_text(result.stdout + result.stderr, encoding='utf8')
        if result.returncode:
            raise RuntimeError(result.stdout + result.stderr)
        return result.stdout

    classes, dex = args.output / 'classes', args.output / 'dex'
    classes.mkdir(exist_ok=True)
    dex.mkdir(exist_ok=True)
    # Give a baseline snapshot its required Java source filename.
    renderer = args.output / 'DefaultIconCircleRenderer.java'
    renderer.write_bytes(args.renderer.read_bytes())
    run([args.jdk / 'bin/javac.exe', '-encoding', 'UTF-8', '-source', '8', '-target', '8',
         '-bootclasspath', args.sdk / 'platforms/android-36/android.jar', '-d', classes,
         renderer, Path(__file__).with_name('CircleVisualProbe.java' if args.visual else 'DefaultCircleProbe.java')], 'compile.log')
    jar = args.output / 'probe.jar'
    run([args.jdk / 'bin/jar.exe', 'cf', jar, '-C', classes, '.'], 'jar.log')
    os.environ['JAVA_HOME'] = str(args.jdk)
    run([args.sdk / 'build-tools/37.0.0/d8.bat', '--min-api', '23', '--output', dex, jar], 'dex.log')
    adb = [args.sdk / 'platform-tools/adb.exe', '-s', args.serial]
    remote = '/data/local/tmp/default-circle-regression.dex'
    run([*adb, 'push', dex / 'classes.dex', remote], 'push.log')
    try:
        main_class = 'CircleVisualProbe' if args.visual else 'DefaultCircleProbe'
        command = 'CLASSPATH=' + remote + ' app_process /system/bin ' + main_class
        if args.visual:
            command += ' /data/local/tmp/default-circle-visual.png'
            command += ''.join(' ' + package for package in args.packages)
        result = run([*adb, 'shell', command], 'device.log')
        if args.visual:
            if args.packages:
                for package in args.packages:
                    for suffix in ('raw', 'rendered'):
                        name = package + '.' + suffix + '.png'
                        run([*adb, 'pull', '/data/local/tmp/default-circle-visual.png.' + name,
                             args.output / name], 'pull-' + name + '.log')
            else:
                run([*adb, 'pull', '/data/local/tmp/default-circle-visual.png', args.output / 'visual.png'], 'pull.log')
        expected = 'DEFAULT_CIRCLE_VISUAL_WRITTEN' if args.visual else 'DEFAULT_CIRCLE_COMPLETE_ARTWORK'
        if expected not in result:
            raise AssertionError('missing completion marker')
        print(result)
    finally:
        run([*adb, 'shell', 'rm', '-f', remote, '/data/local/tmp/default-circle-visual.png'], 'cleanup.log')
        for package in args.packages:
            for suffix in ('raw', 'rendered'):
                run([*adb, 'shell', 'rm', '-f', '/data/local/tmp/default-circle-visual.png.'
                     + package + '.' + suffix + '.png'], 'cleanup-' + package + '-' + suffix + '.log')


if __name__ == '__main__':
    main()
