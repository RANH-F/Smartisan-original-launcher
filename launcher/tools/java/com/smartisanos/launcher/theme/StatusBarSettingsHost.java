package com.smartisanos.launcher.theme;

import android.app.Activity;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import com.smartisanos.home.settings.SettingItemSwitch;
import com.smartisanos.launcher.compat.StatusBarHeightCompat;
import com.smartisanos.launcher.reload.LauncherColdReloadCoordinator;

/** Binds only the maintained-style status-bar/cutout settings page. */
final class StatusBarSettingsHost {
    private static final String SETTINGS_PKG = MaintainedLauncherSettingsHost.SETTINGS_PKG;
    private static final int[] EXTRA_VALUES = {-4, -2, 0, 2, 4, 6, 8, 10, 12, 14, 16};

    private StatusBarSettingsHost() {}

    static void show(final Activity activity) {
        try {
            final MaintainedLauncherSettingsHost.SettingsResourceContext context =
                    MaintainedLauncherSettingsHost.createSettingsContext(activity);
            final Resources resources = context.getResources();
            final View root = MaintainedLauncherSettingsHost.inflate(
                    activity, context, "setting_status_bar_compat");
            final Draft draft = new Draft(StatusBarHeightCompat.isAutoEnabled(activity),
                    StatusBarHeightCompat.getExtraDp(activity));
            final SettingItemSwitch automatic = (SettingItemSwitch) root.findViewById(
                    resources.getIdentifier("item_id_status_bar_auto", "id", SETTINGS_PKG));
            final TextView extraValue = (TextView) root.findViewById(resources.getIdentifier(
                    "status_bar_extra_value", "id", SETTINGS_PKG));
            final TextView current = (TextView) root.findViewById(resources.getIdentifier(
                    "status_bar_current_value", "id", SETTINGS_PKG));

            MaintainedLauncherSettingsHost.bindBackTitle(activity, resources, root, "view_title",
                    string(resources, "status_bar_compat_title", "状态栏设置"),
                    "STATUS_BAR_COMPAT", MaintainedLauncherSettingsHost.backToMainAction(activity));
            automatic.setChecked(draft.autoEnabled);
            MaintainedLauncherSettingsHost.bindSwitchControlOnly(automatic, new View.OnClickListener() {
                @Override public void onClick(View view) {
                    draft.autoEnabled = !draft.autoEnabled;
                    automatic.setCheckedAnimated(draft.autoEnabled);
                    updatePreview(activity, resources, draft, extraValue, current);
                    applyAndReload(activity, resources, draft);
                }
            });
            View extra = root.findViewById(resources.getIdentifier(
                    "item_id_status_bar_extra", "id", SETTINGS_PKG));
            extra.setOnClickListener(new View.OnClickListener() {
                @Override public void onClick(View view) {
                    String[] labels = new String[EXTRA_VALUES.length];
                    int selected = 0;
                    for (int i = 0; i < EXTRA_VALUES.length; i++) {
                        labels[i] = adjustmentLabel(resources, EXTRA_VALUES[i]);
                        if (EXTRA_VALUES[i] == draft.extraDp) selected = i;
                    }
                    MaintainedLauncherSettingsHost.showSmartisanConfirmedSingleChoiceDialog(activity,
                            string(resources, "status_bar_extra_title", "状态栏高度调整"),
                            labels, selected, string(resources, "status_bar_cancel", "取消"),
                            string(resources, "status_bar_confirm", "确定"),
                            new MaintainedLauncherSettingsHost.SingleChoiceListener() {
                                @Override public void onSelected(int which) {
                                    if (which < 0 || which >= EXTRA_VALUES.length) return;
                                    draft.extraDp = EXTRA_VALUES[which];
                                    updatePreview(activity, resources, draft, extraValue, current);
                                    applyAndReload(activity, resources, draft);
                                }
                            });
                }
            });
            updatePreview(activity, resources, draft, extraValue, current);
            final TextView dockValue = (TextView) root.findViewById(resources.getIdentifier(
                    "dock_extra_value", "id", SETTINGS_PKG));
            dockValue.setText(adjustmentLabel(resources, StatusBarHeightCompat.getDockExtraDp(activity)));
            root.findViewById(resources.getIdentifier("item_id_dock_extra", "id", SETTINGS_PKG))
                    .setOnClickListener(new View.OnClickListener() {
                @Override public void onClick(View view) {
                    String[] labels = new String[EXTRA_VALUES.length];
                    int oldValue = StatusBarHeightCompat.getDockExtraDp(activity);
                    int selected = 0;
                    for (int i = 0; i < EXTRA_VALUES.length; i++) {
                        labels[i] = adjustmentLabel(resources, EXTRA_VALUES[i]);
                        if (EXTRA_VALUES[i] == oldValue) selected = i;
                    }
                    MaintainedLauncherSettingsHost.showSmartisanConfirmedSingleChoiceDialog(activity,
                            string(resources, "dock_extra_title", "DOCK栏高度调整"), labels, selected,
                            string(resources, "status_bar_cancel", "取消"),
                            string(resources, "status_bar_confirm", "确定"),
                            new MaintainedLauncherSettingsHost.SingleChoiceListener() {
                        @Override public void onSelected(int which) {
                            if (which < 0 || which >= EXTRA_VALUES.length) return;
                            int value = EXTRA_VALUES[which];
                            if (value == StatusBarHeightCompat.getDockExtraDp(activity)) return;
                            if (!StatusBarHeightCompat.saveDockExtraDp(activity, value)) {
                                Toast.makeText(activity, string(resources, "status_bar_save_failed",
                                        "设置保存失败"), Toast.LENGTH_SHORT).show();
                                return;
                            }
                            dockValue.setText(adjustmentLabel(resources, value));
                            if (LauncherColdReloadCoordinator.beginStatusBarCompatReload(activity)) {
                                activity.finish();
                                activity.overridePendingTransition(0, 0);
                            }
                        }
                    });
                }
            });
            MaintainedLauncherSettingsHost.tuneScrollBars(root);
            MaintainedLauncherSettingsHost.setSettingsContentView(
                    activity, context, resources, root, true);
        } catch (Throwable error) {
            MaintainedLauncherSettingsHost.showInfoDialog(
                    activity, "状态栏设置", "无法打开状态栏设置");
        }
    }

    private static void applyAndReload(Activity activity, Resources resources, Draft draft) {
        boolean unchanged = draft.autoEnabled == StatusBarHeightCompat.isAutoEnabled(activity)
                && draft.extraDp == StatusBarHeightCompat.getExtraDp(activity);
        if (unchanged) return;
        if (!StatusBarHeightCompat.saveSettings(activity, draft.autoEnabled, draft.extraDp)) {
            Toast.makeText(activity, string(resources, "status_bar_save_failed",
                    "状态栏设置保存失败"), Toast.LENGTH_SHORT).show();
            return;
        }
        if (!LauncherColdReloadCoordinator.beginStatusBarCompatReload(activity)) {
            Toast.makeText(activity, string(resources, "status_bar_reload_failed",
                    "桌面重新加载失败，请返回桌面后重试"), Toast.LENGTH_SHORT).show();
            return;
        }
        activity.finish();
        activity.overridePendingTransition(0, 0);
    }

    private static void updatePreview(Activity activity, Resources resources, Draft draft,
            TextView extraValue, TextView current) {
        if (extraValue != null) extraValue.setText(adjustmentLabel(resources, draft.extraDp));
        if (current == null) return;
        StatusBarHeightCompat.Preview preview = StatusBarHeightCompat.preview(
                activity, draft.autoEnabled, draft.extraDp);
        String value;
        if (!draft.autoEnabled) {
            value = format(resources, "status_bar_current_manual_format",
                    "当前：系统 %1$d dp · 微调 %2$s · 最终 %3$d dp",
                    preview.systemDp, signedDp(draft.extraDp), preview.effectiveDp);
        } else if (preview.hasTopCutout || draft.extraDp != 0) {
            value = format(resources, "status_bar_current_auto_format",
                    "当前：自动 %1$d dp · 微调 %2$s · 最终 %3$d dp",
                    preview.autoDp, signedDp(draft.extraDp), preview.effectiveDp);
        } else {
            value = format(resources, "status_bar_current_system_format",
                    "当前：系统状态栏 %1$d dp · 最终 %2$d dp",
                    preview.systemDp, preview.effectiveDp);
        }
        current.setText(value);
    }

    private static String signedDp(int value) {
        return (value > 0 ? "+" : "") + value + " dp";
    }

    private static String adjustmentLabel(Resources resources, int value) {
        return value == 0 ? string(resources, "adjustment_default_value", "默认")
                : signedDp(value);
    }

    private static String string(Resources resources, String name, String fallback) {
        return MaintainedLauncherSettingsHost.getString(resources, name, fallback);
    }

    private static String format(Resources resources, String name, String fallback,
            Object... values) {
        return String.format(java.util.Locale.getDefault(), string(resources, name, fallback), values);
    }

    private static final class Draft {
        boolean autoEnabled;
        int extraDp;
        Draft(boolean autoEnabled, int extraDp) {
            this.autoEnabled = autoEnabled;
            this.extraDp = extraDp;
        }
    }
}
