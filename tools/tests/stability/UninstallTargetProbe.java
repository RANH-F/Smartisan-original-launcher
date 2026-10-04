package com.smartisanos.launcher.compat;

import android.content.Intent;
import android.os.Looper;
import android.os.UserHandle;
import com.smartisanos.launcher.ja;
import com.smartisanos.launcher.a.oa;
import com.smartisanos.launcher.model.ProfileRepository;

/** Real Android Intent/Parcel/UserHandle, with intercepted launches and profile/model facts. */
public final class UninstallTargetProbe {
    private static int checks;
    private static void check(boolean value) {
        checks++;
        if (!value) throw new AssertionError("check " + checks);
    }
    public static final class Item {
        public long id = 7;
        public int userId, itemType;
        public String packageName = "fixture.uninstall.target";
        Item(int user) { userId = user; }
    }
    private static void blocked(int user) {
        int calls = ja.context.calls, animated = oa.animated;
        UninstallCompat.requestUninstallItem(new Item(user));
        check(ja.context.calls == calls);
        check(!UninstallCompat.isSystemUninstallPending());
        check(oa.animated == animated + 1);
        UninstallCompat.onLauncherResumed();
        check(oa.animated == animated + 1);
    }
    private static void intent(int index, String action, int user) throws Exception {
        Intent request = ja.context.intents.get(index);
        check(action.equals(request.getAction()));
        check("package:fixture.uninstall.target".equals(request.getDataString()));
        UserHandle target = request.getParcelableExtra(Intent.EXTRA_USER);
        check(target != null && ((Integer) UserHandle.class.getMethod("getIdentifier").invoke(target)) == user);
        check(request.getFlags() == Intent.FLAG_ACTIVITY_NEW_TASK);
    }
    public static void main(String[] args) throws Exception {
        Looper.prepareMainLooper();
        if (args.length > 0 && "baseline".equals(args[0])) {
            UninstallCompat.requestUninstallItem(new Item(999));
            check(ja.context.calls == 1);
            check(!ja.context.intents.get(0).hasExtra(Intent.EXTRA_USER));
            System.out.println("BASELINE_ANDROID_CLONE_DISPATCH_LOST_USER checks=" + checks);
            return;
        }
        for (int user : new int[] { 10, 999, 128, -1 }) blocked(user);
        ProfileRepository.unresolved = true; blocked(0); ProfileRepository.unresolved = false;
        ProfileRepository.unknownSerial = true; blocked(0); ProfileRepository.unknownSerial = false;
        int calls = ja.context.calls, animated = oa.animated;
        Item current = new Item(0);
        UninstallCompat.requestUninstallItem(current);
        intent(calls, Intent.ACTION_UNINSTALL_PACKAGE, 0);
        check(UninstallCompat.isSystemUninstallPending());
        UninstallCompat.requestUninstallItem(new Item(999));
        check(ja.context.calls == calls + 1 && oa.animated == animated);
        UninstallCompat.onLauncherResumed();
        check(oa.animated == animated + 1);
        calls = ja.context.calls; ja.context.failures = 1;
        UninstallCompat.requestUninstallItem(current);
        intent(calls, Intent.ACTION_UNINSTALL_PACKAGE, 0);
        intent(calls + 1, Intent.ACTION_DELETE, 0);
        UninstallCompat.onLauncherResumed();
        ProfileRepository.current = 12; calls = ja.context.calls;
        UninstallCompat.requestUninstallItem(current);
        intent(calls, Intent.ACTION_UNINSTALL_PACKAGE, 12);
        UninstallCompat.onLauncherResumed();
        System.out.println("PASS ANDROID_UNINSTALL_TARGET_CHECKS=" + checks);
    }
}
