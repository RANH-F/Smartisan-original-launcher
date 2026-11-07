"""Capture one Launcher page-flip session without changing device settings.

Run --preflight first. With --capture, swipe the device by hand during the
recording; use separate runs for the default and blinds animations.
"""

import argparse
import hashlib
import json
import re
import subprocess
import time
from pathlib import Path


DEFAULT_ADB = r"D:\sdk\platform-tools\adb.exe"
PACKAGE = "com.smartisanos.launcher"


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--serial", required=True)
    parser.add_argument("--adb", default=DEFAULT_ADB)
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument("--apk", type=Path, default=Path("build/launcher-signed.apk"))
    parser.add_argument("--animation", choices=("default", "blinds"), required=True)
    parser.add_argument("--preflight", action="store_true")
    parser.add_argument("--capture", type=int, metavar="SECONDS")
    args = parser.parse_args()
    if args.preflight == (args.capture is not None):
        parser.error("select exactly one of --preflight or --capture SECONDS")
    if args.capture is not None and not 10 <= args.capture <= 45:
        parser.error("capture duration must be 10-45 seconds")
    if not re.fullmatch(r"[A-Za-z0-9._:-]+", args.serial):
        parser.error("invalid serial")

    base = [args.adb, "-s", args.serial]

    def adb(*parts, timeout=20, check=True):
        return subprocess.run(base + list(parts), capture_output=True, timeout=timeout,
                              check=check)

    def shell(*parts):
        result = adb("shell", *parts, check=False)
        return result.stdout.decode("utf-8", "replace").strip()

    state = adb("get-state").stdout.decode("ascii", "replace").strip()
    if state != "device":
        raise RuntimeError(f"{args.serial}: ADB state is {state}")
    paths = shell("pm", "path", PACKAGE).splitlines()
    base_path = next((line.partition(":")[2] for line in paths
                      if line.startswith("package:") and line.endswith("base.apk")), None)
    if not base_path:
        raise RuntimeError("Launcher base.apk is not installed")

    installed_hash_output = shell("sha256sum", base_path)
    match = re.match(r"([0-9a-fA-F]{64})\s", installed_hash_output)
    installed_hash = match.group(1).lower() if match else None
    local_hash = hashlib.sha256(args.apk.read_bytes()).hexdigest() if args.apk.is_file() else None
    surface = shell("dumpsys", "SurfaceFlinger")
    gpu_lines = [line.strip() for line in surface.splitlines()
                 if re.search(r"GLES:|GL_VENDOR|GL_RENDERER|GL_VERSION", line, re.I)][:8]
    metadata = {
        "serial": args.serial,
        "model": shell("getprop", "ro.product.model"),
        "device": shell("getprop", "ro.product.device"),
        "sdk": shell("getprop", "ro.build.version.sdk"),
        "release": shell("getprop", "ro.build.version.release"),
        "build_fingerprint": shell("getprop", "ro.build.fingerprint"),
        "egl_implementation": shell("getprop", "ro.hardware.egl"),
        "gpu_lines": gpu_lines,
        "display": shell("wm", "size"),
        "launcher_apk_path": base_path,
        "installed_sha256": installed_hash,
        "local_sha256": local_hash,
        "installed_matches_local": installed_hash == local_hash if installed_hash and local_hash else None,
        "animation_expected": args.animation,
        "animation_system": shell("settings", "get", "system", "launcher_page_animation"),
        "animation_global": shell("settings", "get", "global", "launcher_page_animation"),
        "launcher_pid_before": shell("pidof", PACKAGE),
        "capture_seconds": args.capture,
        "captured_at_unix": time.time(),
    }
    args.out.mkdir(parents=True, exist_ok=True)
    (args.out / "device.json").write_text(json.dumps(metadata, ensure_ascii=False, indent=2),
                                          encoding="utf-8")
    print(json.dumps(metadata, ensure_ascii=False, indent=2))
    if args.preflight:
        return
    if not installed_hash:
        raise RuntimeError("Installed APK hash unavailable; capture stopped before recording")

    remote = f"/sdcard/Download/codex-page-flip-{int(time.time())}.mp4"
    log_file = (args.out / "graphics.log").open("wb")
    log = subprocess.Popen(base + ["logcat", "-v", "epoch", "-T", "1",
                           "AndroidRuntime:E", "libEGL:W", "OpenGLRenderer:W",
                           "GLConsumer:W", "Mali:W", "SMEngine:W", "*:E"],
                           stdout=log_file, stderr=subprocess.DEVNULL)
    try:
        (args.out / "before.png").write_bytes(adb("exec-out", "screencap", "-p").stdout)
        print(f"Recording {args.capture}s; swipe manually now ({args.animation}).", flush=True)
        adb("shell", "screenrecord", "--time-limit", str(args.capture), remote,
            timeout=args.capture + 15)
        adb("pull", remote, str(args.out / "flip.mp4"), timeout=60)
        (args.out / "after.png").write_bytes(adb("exec-out", "screencap", "-p").stdout)
        metadata["launcher_pid_after"] = shell("pidof", PACKAGE)
        metadata["video_bytes"] = (args.out / "flip.mp4").stat().st_size
        (args.out / "device.json").write_text(json.dumps(metadata, ensure_ascii=False, indent=2),
                                              encoding="utf-8")
    finally:
        log.terminate()
        try:
            log.wait(timeout=5)
        except subprocess.TimeoutExpired:
            log.kill()
            log.wait(timeout=5)
        log_file.close()
        adb("shell", "rm", "-f", remote, check=False)


if __name__ == "__main__":
    main()
