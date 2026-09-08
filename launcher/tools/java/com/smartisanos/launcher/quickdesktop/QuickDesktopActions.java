package com.smartisanos.launcher.quickdesktop;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.provider.AlarmClock;
import android.provider.MediaStore;
import android.widget.Toast;

import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

/** Cross-ROM action fallbacks for the fixed original Magic Flow entries. */
final class QuickDesktopActions {
    private QuickDesktopActions() {
    }

    static boolean openLauncherSettings(Context context) {
        MaintainedLauncherSettingsHost.openQuickDesktopSettings(context);
        QuickDesktopController.markActionLaunchPending("open-quick-desktop-settings");
        return true;
    }

    static boolean openSearch(Context context) {
        MaintainedLauncherSettingsHost.openLauncherSearch(context);
        QuickDesktopController.markActionLaunchPending("open-search");
        return true;
    }

    static boolean openMusic(Context context) {
        String selectedPackage = QuickDesktopController.getSelectedMusicPackage(context);
        if (selectedPackage.length() > 0) {
            if (launchPackage(context, selectedPackage)) return true;
            return unavailable(context, "所选音乐软件");
        }
        if (launchPackage(context, "com.smartisanos.music")) {
            return true;
        }
        if (launchFirst(context, "com.android.bbkmusic", "com.vivo.music",
                "com.oplus.music", "com.miui.player", "com.sec.android.app.music",
                "com.google.android.apps.youtube.music")) {
            return true;
        }
        return requireHandled(context,
                start(context, new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_APP_MUSIC)),
                "音乐软件");
    }

    static boolean openAlipay(Context context, boolean paymentCode) {
        if (QuickDesktopController.PAYMENT_WECHAT.equals(
                QuickDesktopController.getPaymentProvider(context))) {
            return openWeChatPayment(context, paymentCode);
        }
        if (!isPackageInstalled(context, "com.eg.android.AlipayGphone")) {
            return unavailable(context, "支付宝");
        }
        String uri = paymentCode
                ? "alipays://platformapi/startapp?appId=20000056&chInfo=ch_chuizi_left"
                : "alipays://platformapi/startapp?appId=10000007&chInfo=ch_chuizi_left"
                        + "&source=shortcut&showOthers=true";
        Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(uri));
        intent.setPackage("com.eg.android.AlipayGphone");
        if (start(context, intent)) {
            return true;
        }
        return requireHandled(context,
                launchPackage(context, "com.eg.android.AlipayGphone"), "支付宝");
    }

    private static boolean openWeChatPayment(Context context, boolean paymentCode) {
        if (!isPackageInstalled(context, "com.tencent.mm")) {
            return unavailable(context, "微信");
        }
        String shortcutId = paymentCode
                ? "launch_type_offline_wallet" : "launch_type_scan_qrcode";
        if (startWeChatShortcut(context, shortcutId)) return true;
        Toast.makeText(context, paymentCode
                ? "当前微信版本未提供收付款快捷入口，已打开微信"
                : "当前微信版本未提供扫一扫快捷入口，已打开微信",
                Toast.LENGTH_SHORT).show();
        return requireHandled(context, launchPackage(context, "com.tencent.mm"), "微信");
    }

    static boolean openShortcut(Context context, int index) {
        switch (index) {
            case 0:
                if (startComponent(context, "com.smartisanos.notes",
                        "com.smartisanos.notes.CreateNotesActivity")) return true;
                return requireHandled(context,
                        launchFirst(context, "com.smartisanos.notes", "com.android.notes"),
                        "便签软件");
            case 1:
                if (startComponent(context, "com.android.calendar",
                        "com.android.calendar.event.EditEventActivity")) return true;
                return requireHandled(context, start(context, new Intent(Intent.ACTION_MAIN)
                        .addCategory(Intent.CATEGORY_APP_CALENDAR)), "日历软件");
            case 2:
                if (startComponent(context, "com.smartisanos.recorder",
                        "com.smartisanos.recorder.activity.RecorderActivity")) return true;
                return requireHandled(context,
                        start(context, new Intent(MediaStore.Audio.Media.RECORD_SOUND_ACTION)),
                        "录音软件");
            case 3:
                if (startComponent(context, "com.smartisanos.calculator",
                        "com.smartisanos.calculator.Calculator")) return true;
                if (launchFirst(context, "com.android.bbkcalculator",
                        "com.coloros.calculator", "com.miui.calculator",
                        "com.sec.android.app.popupcalculator")) return true;
                return requireHandled(context, start(context, new Intent(Intent.ACTION_MAIN)
                        .addCategory(Intent.CATEGORY_APP_CALCULATOR)), "计算器软件");
            case 4:
                return openAlipay(context, false);
            case 5:
                if (startComponent(context, "com.smartisanos.clock",
                        "com.smartisanos.clock.activity.ClockActivity")) return true;
                if (launchFirst(context, "com.android.BBKClock", "com.coloros.alarmclock",
                        "com.android.deskclock", "com.sec.android.app.clockpackage")) return true;
                return requireHandled(context,
                        start(context, new Intent(AlarmClock.ACTION_SHOW_ALARMS)), "时钟软件");
            default:
                return false;
        }
    }

    static boolean openCalendar(Context context) {
        return start(context, new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_APP_CALENDAR));
    }

    static boolean openBrowser(Context context) {
        return start(context, new Intent(Intent.ACTION_VIEW, Uri.parse("https://www.kuaidi100.com/")));
    }

    private static boolean launchFirst(Context context, String... packages) {
        for (String packageName : packages) {
            if (launchPackage(context, packageName)) return true;
        }
        return false;
    }

    private static boolean launchPackage(Context context, String packageName) {
        Intent intent = context.getPackageManager().getLaunchIntentForPackage(packageName);
        return intent != null && start(context, intent);
    }

    private static boolean startComponent(Context context, String packageName, String className) {
        return start(context, new Intent().setComponent(new ComponentName(packageName, className)));
    }

    private static boolean start(Context context, Intent intent) {
        try {
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(intent);
            // Keep this window attached until the target has actually covered Launcher. A fixed
            // delay can expire before a large app draws and expose the desktop in between.
            QuickDesktopController.markActionLaunchPending("launch-entry");
            return true;
        } catch (ActivityNotFoundException | SecurityException error) {
            return false;
        }
    }

    private static boolean startWeChatShortcut(Context context, String shortcutId) {
        if (Build.VERSION.SDK_INT < 25) return false;
        try {
            LauncherApps launcherApps = (LauncherApps) context.getSystemService(
                    Context.LAUNCHER_APPS_SERVICE);
            if (launcherApps == null) return false;
            launcherApps.startShortcut("com.tencent.mm", shortcutId, null, null,
                    Process.myUserHandle());
            QuickDesktopController.markActionLaunchPending("wechat-shortcut-" + shortcutId);
            return true;
        } catch (RuntimeException error) {
            return false;
        }
    }

    private static boolean isPackageInstalled(Context context, String packageName) {
        try {
            context.getPackageManager().getApplicationInfo(packageName, 0);
            return true;
        } catch (android.content.pm.PackageManager.NameNotFoundException ignored) {
            return false;
        }
    }

    private static boolean requireHandled(Context context, boolean handled, String appName) {
        return handled || unavailable(context, appName);
    }

    private static boolean unavailable(Context context, String appName) {
        Toast.makeText(context, "未安装" + appName, Toast.LENGTH_SHORT).show();
        return false;
    }
}
