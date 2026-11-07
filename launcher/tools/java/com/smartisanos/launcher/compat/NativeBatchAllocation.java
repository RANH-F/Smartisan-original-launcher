package com.smartisanos.launcher.compat;

import android.os.Build;
import android.os.Process;
import dalvik.system.BaseDexClassLoader;

/** Retains the original native constructor/destructor and scopes extra storage to batch owners. */
public final class NativeBatchAllocation {
    private static final boolean ARM64_ENGINE = Build.VERSION.SDK_INT >= 23
            && Process.is64Bit() && usesArm64Engine();

    private NativeBatchAllocation() {}

    public static long create(boolean batchOwner) {
        // Other ABIs retain their original library and JNI allocation path.
        if (!ARM64_ENGINE) return 0;
        return Arm64.allocate(batchOwner);
    }

    private static boolean usesArm64Engine() {
        ClassLoader loader = NativeBatchAllocation.class.getClassLoader();
        String library = loader instanceof BaseDexClassLoader
                ? ((BaseDexClassLoader) loader).findLibrary("launcher_opt") : null;
        return isArm64Library(library, System.getProperty("os.arch", ""));
    }

    private static boolean isArm64Library(String library, String architecture) {
        // A translated ARM64 APK still runs inside an x86_64 VM. The selected engine path,
        // rather than the device's preferred ABI, identifies the native library we must pair.
        if (library != null) {
            if (library.contains("/arm64-v8a/") || library.contains("/arm64/")) return true;
            if (library.contains("/x86_64/") || library.contains("/x86/")) return false;
        }
        return "aarch64".equals(architecture) || "arm64".equals(architecture);
    }

    private static final class Arm64 {
        static {
            System.loadLibrary("launcher_opt");
            System.loadLibrary("launcher_batch_compat");
        }

        private static native long allocate(boolean batchOwner);
    }
}
