package com.smartisanos.launcher.theme;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

import com.smartisanos.launcher.quickdesktop.QuickDesktopController;

import java.util.LinkedHashMap;

/**
 * Owns the Quick Desktop settings pages and their app/provider selection UI.
 *
 * <p>This is deliberately kept separate from {@link MaintainedLauncherSettingsHost}: the latter
 * remains the router and shared Smartisan settings-shell owner, while this class owns only the
 * feature-specific bindings. Preferences, layouts and navigation semantics are unchanged.</p>
 */
final class QuickDesktopSettingsHost {
    private static final String TAG = "QuickDesktopSettings";
    private static final String SETTINGS_PKG = MaintainedLauncherSettingsHost.SETTINGS_PKG;

    private static final String[] SYSTEM_MUSIC_PACKAGES = {
            "com.smartisanos.music", "com.android.bbkmusic", "com.vivo.music",
            "com.oplus.music", "com.miui.player", "com.sec.android.app.music",
            "com.android.music", "com.google.android.music", "com.android.mediacenter",
            "com.huawei.music", "com.meizu.media.music"
    };
    private static final String[] THIRD_PARTY_MUSIC_PACKAGES = {
            "com.tencent.qqmusic", "com.luna.music", "com.netease.cloudmusic",
            "com.kugou.android", "cn.kuwo.player", "cmccwm.mobilemusic",
            "com.spotify.music", "com.google.android.apps.youtube.music",
            "com.apple.android.music", "com.ting.mp3.android"
    };

    private QuickDesktopSettingsHost() {
    }

    static void show(final Activity activity) {
        show(activity, true);
    }

    private static void show(final Activity activity, boolean forward) {
        try {
            final MaintainedLauncherSettingsHost.SettingsResourceContext context =
                    MaintainedLauncherSettingsHost.createSettingsContext(activity);
            final Resources resources = context.getResources();
            View root = MaintainedLauncherSettingsHost.inflate(
                    activity, context, "setting_quick_desktop");
            MaintainedLauncherSettingsHost.bindBackTitle(activity, resources, root, "view_title",
                    string(resources, "quick_desktop_settings_title", "快捷桌面设置"),
                    "QUICK_DESKTOP", MaintainedLauncherSettingsHost.backToMainAction(activity));
            bindCardSwitch(activity, resources, root,
                    "item_id_quick_desktop_music_payment",
                    QuickDesktopController.CARD_MUSIC_PAYMENT);
            View musicPaymentItem = root.findViewById(resources.getIdentifier(
                    "item_id_quick_desktop_music_payment", "id", SETTINGS_PKG));
            if (musicPaymentItem != null) {
                musicPaymentItem.setClickable(true);
                musicPaymentItem.setOnClickListener(new View.OnClickListener() {
                    public void onClick(View view) {
                        if (QuickDesktopController.isCardEnabled(activity,
                                QuickDesktopController.CARD_MUSIC_PAYMENT)) {
                            showMedia(activity);
                        }
                    }
                });
            }
            bindCardSwitch(activity, resources, root, "item_id_quick_desktop_shortcuts",
                    QuickDesktopController.CARD_SHORTCUTS);
            bindCardSwitch(activity, resources, root, "item_id_quick_desktop_calendar",
                    QuickDesktopController.CARD_CALENDAR);
            bindCardSwitch(activity, resources, root, "item_id_quick_desktop_life",
                    QuickDesktopController.CARD_LIFE);
            bindSignature(activity, resources, root);

            // Details belong to the enabled music/payment card's secondary page.
            hide(resources, root, "item_id_quick_desktop_music_app");
            hide(resources, root, "item_id_quick_desktop_payment_provider");
            hide(resources, root, "item_id_quick_desktop_music_access");
            hide(resources, root, "quick_desktop_music_access_tips");

            // Phase 4 exposes this only with a complete AppWidgetHost lifecycle.
            hide(resources, root, "quick_desktop_other_widgets_section_title");
            hide(resources, root, "item_id_quick_desktop_other_widgets");
            hide(resources, root, "quick_desktop_other_widgets_section_tips");
            MaintainedLauncherSettingsHost.tuneScrollBars(root);
            MaintainedLauncherSettingsHost.setSettingsContentView(
                    activity, context, resources, root, forward);
        } catch (Throwable error) {
            Log.e(TAG, "Unable to open quick desktop settings", error);
            MaintainedLauncherSettingsHost.showInfoDialog(
                    activity, "快捷桌面设置", "无法打开快捷桌面设置");
        }
    }

    private static void bindSignature(final Activity activity, final Resources resources,
            View root) {
        final TextView valueView = (TextView) root.findViewById(resources.getIdentifier(
                "quick_desktop_custom_text_value", "id", SETTINGS_PKG));
        if (valueView != null) {
            valueView.setText(QuickDesktopController.getCustomHeaderText(activity));
        }
        View item = root.findViewById(resources.getIdentifier(
                "item_id_quick_desktop_custom_text", "id", SETTINGS_PKG));
        if (item == null) return;
        item.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                MaintainedLauncherSettingsHost.showSingleInputDialog(activity,
                        string(resources, "quick_desktop_custom_text_dialog_title", "个性签名"),
                        QuickDesktopController.getCustomHeaderText(activity),
                        new MaintainedLauncherSettingsHost.SingleInputListener() {
                            public boolean onConfirm(EditText input, String value) {
                                QuickDesktopController.setCustomHeaderText(activity, value);
                                if (valueView != null) {
                                    valueView.setText(QuickDesktopController
                                            .getCustomHeaderText(activity));
                                }
                                return true;
                            }
                        });
            }
        });
    }

    private static void showMedia(final Activity activity) {
        try {
            final MaintainedLauncherSettingsHost.SettingsResourceContext context =
                    MaintainedLauncherSettingsHost.createSettingsContext(activity);
            final Resources resources = context.getResources();
            View root = MaintainedLauncherSettingsHost.inflate(
                    activity, context, "setting_quick_desktop_media");
            MaintainedLauncherSettingsHost.bindBackTitle(activity, resources, root, "view_title",
                    string(resources, "quick_desktop_media_settings_title", "音乐与快捷支付"),
                    "QUICK_DESKTOP_MEDIA", new Runnable() {
                        public void run() {
                            show(activity, false);
                        }
                    });
            bindMusicApp(activity, resources, root);
            bindPaymentProvider(activity, resources, root);
            bindMusicAccess(activity, resources, root);
            MaintainedLauncherSettingsHost.tuneScrollBars(root);
            MaintainedLauncherSettingsHost.setSettingsContentView(
                    activity, context, resources, root, true);
        } catch (Throwable error) {
            Log.e(TAG, "Unable to open quick desktop media settings", error);
            MaintainedLauncherSettingsHost.showInfoDialog(
                    activity, "音乐与快捷支付", "无法打开音乐与快捷支付设置");
        }
    }

    private static void bindMusicApp(final Activity activity, final Resources resources,
            View root) {
        final TextView valueView = (TextView) root.findViewById(resources.getIdentifier(
                "quick_desktop_music_app_value", "id", SETTINGS_PKG));
        updateMusicAppValue(activity, resources, valueView);
        View item = root.findViewById(resources.getIdentifier(
                "item_id_quick_desktop_music_app", "id", SETTINGS_PKG));
        if (item != null) {
            item.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    showMusicAppDialog(activity, resources, valueView);
                }
            });
        }
    }

    private static void bindPaymentProvider(final Activity activity,
            final Resources resources, View root) {
        final TextView valueView = (TextView) root.findViewById(resources.getIdentifier(
                "quick_desktop_payment_provider_value", "id", SETTINGS_PKG));
        updatePaymentValue(activity, resources, valueView);
        View item = root.findViewById(resources.getIdentifier(
                "item_id_quick_desktop_payment_provider", "id", SETTINGS_PKG));
        if (item != null) {
            item.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    showPaymentDialog(activity, resources, valueView);
                }
            });
        }
    }

    private static void bindMusicAccess(final Activity activity,
            final Resources resources, View root) {
        final TextView valueView = (TextView) root.findViewById(resources.getIdentifier(
                "quick_desktop_music_access_value", "id", SETTINGS_PKG));
        updateMusicAccessValue(activity, resources, valueView);
        View item = root.findViewById(resources.getIdentifier(
                "item_id_quick_desktop_music_access", "id", SETTINGS_PKG));
        if (item != null) {
            item.setOnClickListener(new View.OnClickListener() {
                public void onClick(View view) {
                    com.smartisanos.launcher.badge.BadgeBridge
                            .openNotificationAccessSettings(activity);
                }
            });
        }
        root.getViewTreeObserver().addOnWindowFocusChangeListener(
                new android.view.ViewTreeObserver.OnWindowFocusChangeListener() {
                    public void onWindowFocusChanged(boolean hasFocus) {
                        if (hasFocus) updateMusicAccessValue(activity, resources, valueView);
                    }
                });
    }

    private static void updateMusicAccessValue(Context context, Resources resources,
            TextView valueView) {
        if (valueView == null) return;
        boolean granted = com.smartisanos.launcher.badge.BadgeBridge
                .hasNotificationAccess(context);
        valueView.setText(string(resources, granted
                ? "quick_desktop_music_access_granted"
                : "quick_desktop_music_access_not_granted", granted ? "已开启" : "去设置"));
    }

    private static void updateMusicAppValue(Context context, Resources resources,
            TextView valueView) {
        if (valueView == null) return;
        String packageName = QuickDesktopController.getSelectedMusicPackage(context);
        if (!TextUtils.isEmpty(packageName) && !isKnownMusicPackage(packageName)) {
            QuickDesktopController.setSelectedMusicPackage(context, "");
            packageName = "";
        }
        PackageManager pm = context.getPackageManager();
        if (TextUtils.isEmpty(packageName)) {
            valueView.setText(applicationLabel(pm, resolveDefaultMusicPackage(pm),
                    string(resources, "quick_desktop_music_app_system_default", "系统音乐")));
            return;
        }
        valueView.setText(applicationLabel(pm, packageName, packageName));
    }

    private static void showMusicAppDialog(final Activity activity,
            final Resources resources, final TextView valueView) {
        final LinkedHashMap<String, String> candidates = new LinkedHashMap<String, String>();
        PackageManager pm = activity.getPackageManager();
        String defaultPackage = resolveDefaultMusicPackage(pm);
        candidates.put("", applicationLabel(pm, defaultPackage,
                string(resources, "quick_desktop_music_app_system_default", "系统音乐")));
        for (String packageName : THIRD_PARTY_MUSIC_PACKAGES) {
            addInstalledMusicPackage(pm, packageName, candidates);
        }
        if (!TextUtils.isEmpty(defaultPackage)) candidates.remove(defaultPackage);
        String selected = QuickDesktopController.getSelectedMusicPackage(activity);
        if (!TextUtils.isEmpty(selected) && !candidates.containsKey(selected)) {
            QuickDesktopController.setSelectedMusicPackage(activity, "");
            selected = "";
        }
        final String[] packages = candidates.keySet().toArray(new String[candidates.size()]);
        String[] labels = candidates.values().toArray(new String[candidates.size()]);
        int checked = 0;
        for (int i = 0; i < packages.length; i++) {
            if (packages[i].equals(selected)) checked = i;
        }
        MaintainedLauncherSettingsHost.showSmartisanSingleChoiceDialog(activity,
                string(resources, "quick_desktop_music_app_dialog_title", "选择音乐应用"),
                labels, checked, new MaintainedLauncherSettingsHost.SingleChoiceListener() {
                    public void onSelected(int which) {
                        if (which < 0 || which >= packages.length) return;
                        QuickDesktopController.setSelectedMusicPackage(activity, packages[which]);
                        updateMusicAppValue(activity, resources, valueView);
                    }
                });
    }

    private static String resolveDefaultMusicPackage(PackageManager pm) {
        for (String packageName : SYSTEM_MUSIC_PACKAGES) {
            if (pm.getLaunchIntentForPackage(packageName) != null) return packageName;
        }
        return "";
    }

    private static boolean isKnownMusicPackage(String packageName) {
        for (String candidate : SYSTEM_MUSIC_PACKAGES) {
            if (candidate.equals(packageName)) return true;
        }
        for (String candidate : THIRD_PARTY_MUSIC_PACKAGES) {
            if (candidate.equals(packageName)) return true;
        }
        return false;
    }

    private static String applicationLabel(PackageManager pm, String packageName,
            String fallback) {
        if (TextUtils.isEmpty(packageName)) return fallback;
        try {
            CharSequence label = pm.getApplicationLabel(pm.getApplicationInfo(packageName, 0));
            return TextUtils.isEmpty(label) ? fallback : label.toString();
        } catch (Throwable ignored) {
            return fallback;
        }
    }

    private static void addInstalledMusicPackage(PackageManager pm, String packageName,
            LinkedHashMap<String, String> output) {
        if (TextUtils.isEmpty(packageName) || output.containsKey(packageName)
                || pm.getLaunchIntentForPackage(packageName) == null) return;
        output.put(packageName, applicationLabel(pm, packageName, packageName));
    }

    private static void updatePaymentValue(Context context, Resources resources,
            TextView valueView) {
        if (valueView == null) return;
        boolean weChat = QuickDesktopController.PAYMENT_WECHAT.equals(
                QuickDesktopController.getPaymentProvider(context));
        valueView.setText(string(resources, weChat
                ? "quick_desktop_payment_wechat" : "quick_desktop_payment_alipay",
                weChat ? "微信" : "支付宝"));
    }

    private static void showPaymentDialog(final Activity activity,
            final Resources resources, final TextView valueView) {
        final String[] providers = {QuickDesktopController.PAYMENT_ALIPAY,
                QuickDesktopController.PAYMENT_WECHAT};
        String[] labels = {string(resources, "quick_desktop_payment_alipay", "支付宝"),
                string(resources, "quick_desktop_payment_wechat", "微信")};
        int checked = QuickDesktopController.PAYMENT_WECHAT.equals(
                QuickDesktopController.getPaymentProvider(activity)) ? 1 : 0;
        MaintainedLauncherSettingsHost.showSmartisanSingleChoiceDialog(activity,
                string(resources, "quick_desktop_payment_provider_dialog_title",
                        "选择快捷支付应用"), labels, checked,
                new MaintainedLauncherSettingsHost.SingleChoiceListener() {
                    public void onSelected(int which) {
                        if (which < 0 || which >= providers.length) return;
                        QuickDesktopController.setPaymentProvider(activity, providers[which]);
                        updatePaymentValue(activity, resources, valueView);
                    }
                });
    }

    private static void bindCardSwitch(Activity activity, Resources resources, View root,
            String idName, String cardKey) {
        MaintainedLauncherSettingsHost.bindQuickDesktopCardSwitch(
                activity, resources, root, idName, cardKey);
    }

    private static void hide(Resources resources, View root, String idName) {
        MaintainedLauncherSettingsHost.hide(resources, root, idName);
    }

    private static String string(Resources resources, String name, String fallback) {
        return MaintainedLauncherSettingsHost.getString(resources, name, fallback);
    }
}
