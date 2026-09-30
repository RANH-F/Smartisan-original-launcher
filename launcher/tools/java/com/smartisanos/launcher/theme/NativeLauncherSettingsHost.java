package com.smartisanos.launcher.theme;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.provider.Settings;
import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import android.view.Window;
import com.smartisanos.launcher.reload.LoadingUiWindowCompat;

import java.io.InputStream;

public final class NativeLauncherSettingsHost {
    private NativeLauncherSettingsHost() {
    }

    public static void show(final Activity activity) {
        showMain(activity);
    }

    private static void showMain(final Activity activity) {
        String title = MaintainedLauncherSettingsHost.localizedDesktopSettingsLabel("Desktop Settings");
        activity.setTitle(title);
        LinearLayout root = new LinearLayout(activity);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackground(new StripeDrawable(dp(activity, 7), 0xfff7f7f5, 0xffeeeeec));
        root.addView(titleBar(activity, title, new View.OnClickListener() {
            public void onClick(View v) {
                activity.finish();
            }
        }), new LinearLayout.LayoutParams(-1, dp(activity, 54)));

        ScrollView scroll = new ScrollView(activity);
        scroll.setFillViewport(false);
        scroll.setOverScrollMode(View.OVER_SCROLL_ALWAYS);
        LinearLayout content = new LinearLayout(activity);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setPadding(dp(activity, 8), dp(activity, 10), dp(activity, 8), dp(activity, 28));
        scroll.addView(content, new ScrollView.LayoutParams(-1, -2));

        section(activity, content, "单板块视图");
        content.addView(gridCard(activity));
        content.addView(card(activity,
                iconRow(activity, "桌面主题", "设置桌面的背景主题", "setting_item_icon_launcher.png", toastClick(activity, "桌面主题页后续恢复")),
                iconRow(activity, "锁屏壁纸", "设置锁屏界面的壁纸", "setting_item_icon_wallpaper.png", toastClick(activity, "锁屏壁纸依赖系统壁纸服务")),
                iconRow(activity, "桌面翻页动画", "当前：" + animName(readGlobal(activity, "launcher_page_animation", 0)), "launcher_anim_video_preview.png", new View.OnClickListener() {
                    public void onClick(View v) {
                        cycleAnimation(activity);
                    }
                }),
                iconRow(activity, "应用图标", "可选用精心设计过的图标替换应用默认图标", "setting_item_icon_launcher.png", toastClick(activity, "应用图标页后续迁移"))));
        content.addView(card(activity,
                switchRow(activity, "隐藏桌面图标名称", "launcher_hide_lable", false),
                disabledSwitchRow(activity, "解锁时桌面的动画效果", true)));
        section(activity, content, "单板块视图切换至多板块视图");
        content.addView(introCard(activity));
        section(activity, content, "更多");
        content.addView(card(activity,
                defaultHomeRow(activity),
                iconRow(activity, "强迫症选项", "隐藏桌面图标名称、角标等细节开关", "setting_item_icon_obsession.png", new View.OnClickListener() {
                    public void onClick(View v) {
                        showObsession(activity);
                    }
                }),
                row(activity, "关于锤子桌面", "当前移植版，后续补齐版本信息", null)));

        root.addView(scroll, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        activity.setContentView(root);
    }

    private static void showObsession(final Activity activity) {
        activity.setTitle("强迫症选项");
        LinearLayout root = new LinearLayout(activity);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackground(new StripeDrawable(dp(activity, 7), 0xfff7f7f5, 0xffeeeeec));
        root.addView(titleBar(activity, "强迫症选项", new View.OnClickListener() {
            public void onClick(View v) {
                showMain(activity);
            }
        }), new LinearLayout.LayoutParams(-1, dp(activity, 54)));

        ScrollView scroll = new ScrollView(activity);
        scroll.setFillViewport(false);
        LinearLayout content = new LinearLayout(activity);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setPadding(dp(activity, 14), dp(activity, 14), dp(activity, 14), dp(activity, 28));
        scroll.addView(content, new ScrollView.LayoutParams(-1, -2));

        content.addView(card(activity,
                switchRow(activity, "隐藏桌面图标名称", "launcher_hide_lable", false)));
        content.addView(card(activity,
                switchRow(activity, "角标提醒", "launcher_hide_badge", false),
                switchRow(activity, "紧贴屏幕横扫清除角标", "launcher_badge_swipe_clean", true)));
        content.addView(card(activity,
                disabledSwitchRow(activity, "拨号面板模式", false),
                disabledSwitchRow(activity, "隐藏唱机中轴", false)));

        root.addView(scroll, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        activity.setContentView(root);
    }

    private static View titleBar(final Activity activity, String value, View.OnClickListener backClick) {
        FrameLayout bar = new FrameLayout(activity);
        bar.setBackgroundColor(0xfffbfbfb);
        View back = new BackChevronView(activity);
        back.setOnClickListener(backClick);
        bar.addView(back, new FrameLayout.LayoutParams(dp(activity, 54), -1, Gravity.LEFT));
        TextView title = text(activity, value, 21, 0xff555555, true);
        title.setGravity(Gravity.CENTER);
        bar.addView(title, new FrameLayout.LayoutParams(-1, -1));
        View line = new View(activity);
        line.setBackgroundColor(0x22000000);
        bar.addView(line, new FrameLayout.LayoutParams(-1, 1, Gravity.BOTTOM));
        return bar;
    }

    private static View gridCard(final Activity activity) {
        LinearLayout card = baseCard(activity);
        int mode = readLauncherMode(activity);
        LinearLayout row1 = new LinearLayout(activity);
        row1.setOrientation(LinearLayout.HORIZONTAL);
        row1.setPadding(dp(activity, 18), dp(activity, 12), dp(activity, 18), dp(activity, 8));
        card.addView(row1, new LinearLayout.LayoutParams(-1, dp(activity, 162)));
        row1.addView(option(activity, "十二宫格", "launcher_preview_grid_12.png", mode != 20, new View.OnClickListener() {
            public void onClick(View v) {
                confirmLauncherMode(activity, 12);
            }
        }), new LinearLayout.LayoutParams(0, -1, 1.0f));
        row1.addView(option(activity, "二十宫格", "launcher_preview_grid_20.png", mode == 20, new View.OnClickListener() {
            public void onClick(View v) {
                confirmLauncherMode(activity, 20);
            }
        }), new LinearLayout.LayoutParams(0, -1, 1.0f));

        LinearLayout row2 = new LinearLayout(activity);
        row2.setOrientation(LinearLayout.HORIZONTAL);
        row2.setPadding(dp(activity, 18), 0, dp(activity, 18), dp(activity, 10));
        card.addView(row2, new LinearLayout.LayoutParams(-1, dp(activity, 118)));
        row2.addView(option(activity, "材质主题", null, true, null), new LinearLayout.LayoutParams(0, -1, 1.0f));
        row2.addView(option(activity, "透明主题", null, false, toastClick(activity, "透明主题 key 下一步迁移")), new LinearLayout.LayoutParams(0, -1, 1.0f));
        return card;
    }

    private static View option(Context context, String label, String imageAsset, boolean selected, View.OnClickListener listener) {
        LinearLayout box = new LinearLayout(context);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setGravity(Gravity.CENTER);
        box.setClickable(listener != null);
        if (listener != null) {
            box.setOnClickListener(listener);
        }
        if (imageAsset != null) {
            ImageView image = assetImage(context, imageAsset);
            if (image != null) {
                image.setScaleType(ImageView.ScaleType.FIT_CENTER);
                LinearLayout.LayoutParams imageLp = new LinearLayout.LayoutParams(dp(context, 38), dp(context, 48));
                imageLp.bottomMargin = dp(context, 4);
                box.addView(image, imageLp);
            }
        }
        TextView tv = text(context, label, 17, selected ? 0xff444444 : 0xff8a8a8a, false);
        tv.setGravity(Gravity.CENTER);
        box.addView(tv, new LinearLayout.LayoutParams(-1, -2));
        Badge badge = new Badge(context, selected);
        LinearLayout.LayoutParams badgeLp = new LinearLayout.LayoutParams(dp(context, 34), dp(context, 34));
        badgeLp.topMargin = dp(context, 6);
        box.addView(badge, badgeLp);
        return box;
    }

    private static View iconRow(Context context, String title, String sub, String asset, View.OnClickListener listener) {
        LinearLayout box = new LinearLayout(context);
        box.setOrientation(LinearLayout.HORIZONTAL);
        box.setGravity(Gravity.CENTER_VERTICAL);
        box.setPadding(dp(context, 18), 0, dp(context, 18), 0);
        box.setClickable(listener != null);
        if (listener != null) {
            box.setOnClickListener(listener);
        }
        ImageView image = assetImage(context, asset);
        if (image != null) {
            image.setScaleType(ImageView.ScaleType.FIT_CENTER);
            box.addView(image, new LinearLayout.LayoutParams(dp(context, 54), dp(context, 54)));
        }
        LinearLayout texts = new LinearLayout(context);
        texts.setOrientation(LinearLayout.VERTICAL);
        texts.setGravity(Gravity.CENTER_VERTICAL);
        texts.setPadding(dp(context, 18), 0, 0, 0);
        texts.addView(text(context, title, 18, 0xff333333, true), new LinearLayout.LayoutParams(-1, -2));
        if (sub != null && sub.length() > 0) {
            texts.addView(text(context, sub, 14, 0xff8c8c8c, false), new LinearLayout.LayoutParams(-1, -2));
        }
        box.addView(texts, new LinearLayout.LayoutParams(0, -1, 1.0f));
        box.addView(arrowView(context), new LinearLayout.LayoutParams(dp(context, 30), -1));
        return box;
    }

    private static View row(Context context, String title, String sub, View.OnClickListener listener) {
        LinearLayout box = new LinearLayout(context);
        box.setOrientation(LinearLayout.HORIZONTAL);
        box.setGravity(Gravity.CENTER_VERTICAL);
        box.setPadding(dp(context, 20), 0, dp(context, 18), 0);
        box.setClickable(listener != null);
        if (listener != null) {
            box.setOnClickListener(listener);
        }
        LinearLayout texts = new LinearLayout(context);
        texts.setOrientation(LinearLayout.VERTICAL);
        texts.setGravity(Gravity.CENTER_VERTICAL);
        texts.addView(text(context, title, 18, 0xff333333, true), new LinearLayout.LayoutParams(-1, -2));
        if (sub != null && sub.length() > 0) {
            texts.addView(text(context, sub, 14, 0xff8c8c8c, false), new LinearLayout.LayoutParams(-1, -2));
        }
        box.addView(texts, new LinearLayout.LayoutParams(0, -1, 1.0f));
        box.addView(arrowView(context), new LinearLayout.LayoutParams(dp(context, 30), -1));
        return box;
    }

    private static View defaultHomeRow(final Activity activity) {
        String sub = isSmartisanHomeDefault(activity) ? "Smartisan 桌面" : "当前：" + defaultHomeLabel(activity);
        return row(activity, "默认桌面", sub, new View.OnClickListener() {
            public void onClick(View v) {
                openDefaultHomeSettings(activity);
            }
        });
    }

    private static View switchRow(final Context context, String title, final String key, boolean def) {
        LinearLayout box = new LinearLayout(context);
        box.setOrientation(LinearLayout.HORIZONTAL);
        box.setGravity(Gravity.CENTER_VERTICAL);
        box.setPadding(dp(context, 20), 0, dp(context, 19), 0);
        TextView tv = text(context, title, 18, 0xff333333, true);
        box.addView(tv, new LinearLayout.LayoutParams(0, -1, 1.0f));
        final ToggleView toggle = new ToggleView(context, readSystemBool(context, key, def), true);
        toggle.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                boolean next = !toggle.isChecked();
                toggle.setChecked(next);
                Settings.System.putString(context.getContentResolver(), key, Boolean.toString(next));
            }
        });
        box.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                toggle.performClick();
            }
        });
        box.addView(toggle, new LinearLayout.LayoutParams(dp(context, 54), dp(context, 32)));
        return box;
    }

    private static View disabledSwitchRow(final Context context, String title, boolean checked) {
        LinearLayout box = new LinearLayout(context);
        box.setOrientation(LinearLayout.HORIZONTAL);
        box.setGravity(Gravity.CENTER_VERTICAL);
        box.setPadding(dp(context, 20), 0, dp(context, 19), 0);
        TextView tv = text(context, title, 18, 0xff555555, true);
        box.addView(tv, new LinearLayout.LayoutParams(0, -1, 1.0f));
        ToggleView toggle = new ToggleView(context, checked, false);
        box.addView(toggle, new LinearLayout.LayoutParams(dp(context, 54), dp(context, 32)));
        return box;
    }

    private static View multiBlockIntro(Context context) {
        LinearLayout box = new LinearLayout(context);
        box.setOrientation(LinearLayout.HORIZONTAL);
        box.setGravity(Gravity.CENTER);
        box.setPadding(dp(context, 20), dp(context, 20), dp(context, 20), dp(context, 20));

        ImageView left = assetImage(context, "launcher_preview_grid_12.png");
        if (left != null) {
            left.setAlpha(90);
            left.setScaleType(ImageView.ScaleType.FIT_CENTER);
            box.addView(left, new LinearLayout.LayoutParams(0, dp(context, 116), 1.0f));
        }

        TextView arrow = text(context, ">", 24, 0x33666666, false);
        arrow.setGravity(Gravity.CENTER);
        box.addView(arrow, new LinearLayout.LayoutParams(dp(context, 48), dp(context, 116)));

        ImageView right = assetImage(context, "launcher_preview_grid_20.png");
        if (right != null) {
            right.setAlpha(90);
            right.setScaleType(ImageView.ScaleType.FIT_CENTER);
            box.addView(right, new LinearLayout.LayoutParams(0, dp(context, 116), 1.0f));
        }
        return box;
    }

    private static LinearLayout card(Context context, View... rows) {
        LinearLayout card = baseCard(context);
        for (int i = 0; i < rows.length; i++) {
                card.addView(rows[i], new LinearLayout.LayoutParams(-1, dp(context, 78)));
            if (i + 1 < rows.length) {
                View line = new View(context);
                line.setBackgroundColor(0xffeeeeee);
                card.addView(line, new LinearLayout.LayoutParams(-1, 1));
            }
        }
        return card;
    }

    private static LinearLayout baseCard(Context context) {
        LinearLayout card = new LinearLayout(context);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setBackground(round(0xffffffff, dp(context, 6), 0x1a000000));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -2);
        lp.leftMargin = dp(context, 0);
        lp.rightMargin = dp(context, 0);
        lp.bottomMargin = dp(context, 10);
        card.setLayoutParams(lp);
        return card;
    }

    private static LinearLayout introCard(Context context) {
        LinearLayout card = baseCard(context);
        card.addView(multiBlockIntro(context), new LinearLayout.LayoutParams(-1, dp(context, 150)));
        return card;
    }

    private static void section(Context context, LinearLayout content, String title) {
        TextView tv = text(context, title, 14, 0xff666666, true);
        tv.setPadding(dp(context, 12), dp(context, 7), 0, dp(context, 8));
        content.addView(tv, new LinearLayout.LayoutParams(-1, -2));
    }

    private static void confirmLauncherMode(final Activity activity, final int mode) {
        int current = readLauncherMode(activity);
        if (current == mode) {
            Toast.makeText(activity, "当前已经是" + mode + "宫格", Toast.LENGTH_SHORT).show();
            return;
        }
        showConfirmDialog(activity, "切换桌面宫格",
                "切换为" + mode + "宫格后，需要重新启动桌面才能生效。",
                "取消",
                "切换",
                new View.OnClickListener() {
                    public void onClick(View v) {
                        saveLauncherMode(activity, mode);
                    }
                });
    }

    private static void saveLauncherMode(Context context, int mode) {
        // The preference stores 20, but the original base-page id for a
        // 4 x 5 board is PAGE_1_4X5_MODE (9).
        int oldPageMode = readLauncherMode(context) == 20 ? 9 : 12;
        int pageMode = mode == 20 ? 9 : 12;
        int multiBlockMode = mode == 20 ? 0x50 : 0x30;
        try {
            Settings.Global.putInt(context.getContentResolver(), "launcher_mode", mode);
            Settings.Global.putInt(context.getContentResolver(), "launcher_multi_block_mode", multiBlockMode);
            Settings.Global.putInt(context.getContentResolver(), "launcher_grids_x", mode == 20 ? 4 : 3);
            Settings.Global.putInt(context.getContentResolver(), "launcher_grids_y", mode == 20 ? 5 : 4);
        } catch (Throwable ignored) {
        }
        MaintainedLauncherSettingsHost.migrateLauncherModeAndRestart(
                context, oldPageMode, pageMode);
    }

    private static void restartLauncher(final Context context) {
        if (context instanceof Activity) {
            showRestartLoading((Activity) context);
        }
        Handler handler = new Handler(Looper.getMainLooper());
        handler.postDelayed(new Runnable() {
            public void run() {
                startLauncherFromForeground(context);
                if (context instanceof Activity) {
                    ((Activity) context).finish();
                }
            }
        }, 650);
    }

    private static void startLauncherFromForeground(Context context) {
        try {
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.setClassName(context.getPackageName(), "com.smartisanos.launcher.LauncherAlias");
            intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_NO_ANIMATION | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            intent.addCategory(Intent.CATEGORY_HOME);
            if (context instanceof Activity) {
                ((Activity) context).overridePendingTransition(0, 0);
            }
            context.startActivity(intent);
            if (context instanceof Activity) {
                ((Activity) context).overridePendingTransition(0, 0);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void showRestartLoading(Activity activity) {
        try {
            tuneWindowForLoading(activity);
            RestartLoadingView loadingView = new RestartLoadingView(activity);
            activity.setContentView(loadingView);
            loadingView.start();
        } catch (Throwable ignored) {
        }
    }

    private static void tuneWindowForLoading(Activity activity) {
        LoadingUiWindowCompat.apply(activity.getWindow());
    }

    private static final class RestartLoadingView extends View implements Runnable {
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF rect = new RectF();
        private final Handler handler = new Handler(Looper.getMainLooper());
        private int frame;

        RestartLoadingView(Context context) {
            super(context);
            setBackgroundColor(Color.BLACK);
        }

        void start() {
            handler.removeCallbacks(this);
            handler.post(this);
        }

        public void run() {
            frame = (frame + 1) % 8;
            invalidate();
            handler.postDelayed(this, 120);
        }

        protected void onDetachedFromWindow() {
            handler.removeCallbacks(this);
            super.onDetachedFromWindow();
        }

        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            int w = getWidth();
            int h = getHeight();
            if (w <= 0 || h <= 0) {
                return;
            }
            float density = getResources().getDisplayMetrics().density;
            float panelW = Math.min(w * 0.78f, 430f * density);
            float panelH = Math.max(74f * density, h * 0.092f);
            float left = (w - panelW) * 0.5f;
            float top = (h - panelH) * 0.5f - statusBarHeight() * 0.5f;
            if (top < 0f) {
                top = 0f;
            }
            rect.set(left, top, left + panelW, top + panelH);
            paint.setColor(0xff151b1d);
            canvas.drawRoundRect(rect, panelH * 0.5f, panelH * 0.5f, paint);

            float block = Math.max(8f * density, panelH * 0.13f);
            float gap = block * 0.33f;
            float startX = left + panelW * 0.1f;
            float startY = top + (panelH - (block * 3f + gap * 2f)) * 0.5f;
            for (int row = 0; row < 3; row++) {
                for (int col = 0; col < 3; col++) {
                    int index = row * 3 + col;
                    int alpha = 170 + ((index + frame) % 4) * 20;
                    paint.setColor((alpha << 24) | 0x00eeeeee);
                    float x = startX + col * (block + gap);
                    float y = startY + row * (block + gap);
                    canvas.drawRoundRect(x, y, x + block, y + block, block * 0.12f, block * 0.12f, paint);
                }
            }
            canvas.save();
            paint.setColor(0xffeeeeee);
            float cx = startX + block * 1.15f;
            float cy = startY + block * 3.08f;
            canvas.rotate(22f + frame * 5f, cx, cy);
            canvas.drawRoundRect(cx - block * 0.45f, cy - block * 0.45f, cx + block * 0.45f, cy + block * 0.45f, block * 0.14f, block * 0.14f, paint);
            canvas.restore();
        }

        private int statusBarHeight() {
            try {
                int id = getResources().getIdentifier("status_bar_height", "dimen", "android");
                if (id > 0) {
                    return getResources().getDimensionPixelSize(id);
                }
            } catch (Throwable ignored) {
            }
            return 0;
        }
    }

    private static void showConfirmDialog(final Activity activity, String title, String message, String negative, String positive, final View.OnClickListener positiveClick) {
        MaintainedLauncherSettingsHost.showSharedConfirmDialog(activity, title, message,
                negative, positive, positiveClick);
    }

    private static TextView dialogButton(Context context, String label, int color) {
        TextView button = text(context, label, 16, color, false);
        button.setGravity(Gravity.CENTER);
        button.setClickable(true);
        return button;
    }

    private static void cycleAnimation(Context context) {
        int current = readGlobal(context, "launcher_page_animation", 0);
        int next = current == 0 ? 3 : (current == 3 ? 4 : (current == 4 ? 6 : 0));
        Settings.Global.putInt(context.getContentResolver(), "launcher_page_animation", next);
        Toast.makeText(context, "桌面翻页动画：" + animName(next), Toast.LENGTH_SHORT).show();
    }

    private static void openDefaultHomeSettings(Activity activity) {
        if (requestHomeRole(activity)) {
            return;
        }
        if (startAction(activity, "android.settings.HOME_SETTINGS")) {
            return;
        }
        if (startAction(activity, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS")) {
            return;
        }
        if (startAction(activity, "miui.intent.action.PREFERRED_APPLICATION_SETTINGS")) {
            return;
        }
        if (startAction(activity, Settings.ACTION_SETTINGS)) {
            return;
        }
        Toast.makeText(activity, "请在系统设置中将锤子桌面设为默认桌面", Toast.LENGTH_LONG).show();
    }

    private static boolean requestHomeRole(Activity activity) {
        if (Build.VERSION.SDK_INT < 29) {
            return false;
        }
        try {
            Object roleManager = activity.getSystemService("role");
            if (roleManager == null) {
                return false;
            }
            Class<?> cls = Class.forName("android.app.role.RoleManager");
            String roleHome = (String) cls.getField("ROLE_HOME").get(null);
            Boolean available = (Boolean) cls.getMethod("isRoleAvailable", String.class).invoke(roleManager, roleHome);
            if (!available.booleanValue()) {
                return false;
            }
            Boolean held = (Boolean) cls.getMethod("isRoleHeld", String.class).invoke(roleManager, roleHome);
            if (held.booleanValue()) {
                return false;
            }
            Intent intent = (Intent) cls.getMethod("createRequestRoleIntent", String.class).invoke(roleManager, roleHome);
            activity.startActivityForResult(intent, 0);
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static boolean startAction(Activity activity, String action) {
        try {
            activity.startActivity(new Intent(action));
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static boolean isSmartisanHomeDefault(Context context) {
        ResolveInfo info = resolveDefaultHome(context);
        if (info == null || info.activityInfo == null) {
            return false;
        }
        String pkg = info.activityInfo.packageName;
        return context.getPackageName().equals(pkg) || "com.smartisanos.launcher".equals(pkg);
    }

    private static String defaultHomeLabel(Context context) {
        ResolveInfo info = resolveDefaultHome(context);
        if (info == null || info.activityInfo == null || "android".equals(info.activityInfo.packageName)) {
            return "未设置默认桌面";
        }
        try {
            CharSequence label = info.activityInfo.applicationInfo.loadLabel(context.getPackageManager());
            if (label != null && label.length() > 0) {
                return label.toString();
            }
        } catch (Throwable ignored) {
        }
        return info.activityInfo.packageName;
    }

    private static ResolveInfo resolveDefaultHome(Context context) {
        try {
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_HOME);
            return context.getPackageManager().resolveActivity(intent, PackageManager.MATCH_DEFAULT_ONLY);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static String animName(int value) {
        if (value == 3) return "立体翻转";
        if (value == 4) return "百叶窗";
        if (value == 6) return "切牌";
        return "默认动画";
    }

    private static int readGlobal(Context context, String key, int def) {
        try {
            return Settings.Global.getInt(context.getContentResolver(), key, def);
        } catch (Throwable e) {
            return def;
        }
    }

    private static int readLauncherMode(Context context) {
        try {
            SharedPreferences prefs = context.getSharedPreferences("com.smartisanos.launcher_prefs", 0);
            int mode = prefs.getInt("prefs_key_launcher_mode", -1);
            if (mode == 20 || mode == 12) {
                return mode;
            }
        } catch (Throwable ignored) {
        }
        int global = readGlobal(context, "launcher_mode", 12);
        if (global == 20) {
            return 20;
        }
        return 12;
    }

    private static boolean readSystemBool(Context context, String key, boolean def) {
        String value = Settings.System.getString(context.getContentResolver(), key);
        return value == null ? def : Boolean.parseBoolean(value);
    }

    private static View.OnClickListener toastClick(final Context context, final String message) {
        return new View.OnClickListener() {
            public void onClick(View v) {
                Toast.makeText(context, message, Toast.LENGTH_SHORT).show();
            }
        };
    }

    private static TextView text(Context context, String value, int sp, int color, boolean bold) {
        TextView tv = new TextView(context);
        tv.setText(value);
        tv.setTextSize(sp);
        tv.setTextColor(color);
        tv.setGravity(Gravity.CENTER_VERTICAL);
        tv.setIncludeFontPadding(true);
        if (bold) {
            tv.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        } else {
            tv.setTypeface(Typeface.create("sans-serif", Typeface.NORMAL));
        }
        return tv;
    }

    private static View arrowView(Context context) {
        ImageView arrow = assetImage(context, "setting_item_arrow.png");
        if (arrow != null) {
            arrow.setAlpha(160);
            arrow.setScaleType(ImageView.ScaleType.CENTER);
            return arrow;
        }
        TextView fallback = text(context, ">", 26, 0xffbbbbbb, false);
        fallback.setGravity(Gravity.CENTER);
        return fallback;
    }

    private static GradientDrawable round(int color, int radius, int strokeColor) {
        GradientDrawable d = new GradientDrawable();
        d.setColor(color);
        d.setCornerRadius(radius);
        d.setStroke(1, strokeColor);
        return d;
    }

    private static int dp(Context context, int value) {
        return (int) (value * context.getResources().getDisplayMetrics().density + 0.5f);
    }

    private static ImageView assetImage(Context context, String name) {
        Bitmap bitmap = assetBitmap(context, name);
        if (bitmap == null) {
            return null;
        }
        ImageView image = new ImageView(context);
        image.setImageBitmap(bitmap);
        return image;
    }

    private static Bitmap assetBitmap(Context context, String name) {
        InputStream in = null;
        try {
            in = context.getAssets().open("settings_native/" + name);
            return BitmapFactory.decodeStream(in);
        } catch (Throwable ignored) {
            return null;
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private static final class StripeDrawable extends android.graphics.drawable.Drawable {
        private final int step;
        private final int bg;
        private final int line;
        private final Paint paint = new Paint();

        StripeDrawable(int step, int bg, int line) {
            this.step = step;
            this.bg = bg;
            this.line = line;
        }

        public void draw(Canvas canvas) {
            canvas.drawColor(bg);
            paint.setColor(line);
            for (int x = 0; x < getBounds().width(); x += step) {
                canvas.drawLine(x, 0, x, getBounds().height(), paint);
            }
        }

        public void setAlpha(int alpha) {
            paint.setAlpha(alpha);
        }

        public void setColorFilter(android.graphics.ColorFilter filter) {
            paint.setColorFilter(filter);
        }

        public int getOpacity() {
            return android.graphics.PixelFormat.OPAQUE;
        }
    }

    private static final class Badge extends View {
        private final boolean selected;
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Path path = new Path();

        Badge(Context context, boolean selected) {
            super(context);
            this.selected = selected;
        }

        protected void onDraw(Canvas canvas) {
            float w = getWidth();
            float h = getHeight();
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(selected ? 0xffdd514b : 0xffe9edf0);
            canvas.drawCircle(w / 2, h / 2, Math.min(w, h) / 2 - 1.5f, paint);
            if (selected) {
                path.reset();
                path.moveTo(w * 0.30f, h * 0.52f);
                path.lineTo(w * 0.44f, h * 0.66f);
                path.lineTo(w * 0.72f, h * 0.34f);
                paint.setColor(Color.WHITE);
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeWidth(3.2f);
                paint.setStrokeCap(Paint.Cap.ROUND);
                paint.setStrokeJoin(Paint.Join.ROUND);
                canvas.drawPath(path, paint);
                paint.setStrokeCap(Paint.Cap.BUTT);
                paint.setStyle(Paint.Style.FILL);
            }
        }
    }

    private static final class ToggleView extends View {
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private boolean checked;
        private final boolean active;

        ToggleView(Context context, boolean checked, boolean active) {
            super(context);
            this.checked = checked;
            this.active = active;
            setClickable(active);
        }

        boolean isChecked() {
            return checked;
        }

        void setChecked(boolean checked) {
            this.checked = checked;
            invalidate();
        }

        protected void onDraw(Canvas canvas) {
            float w = getWidth();
            float h = getHeight();
            float pad = dp(getContext(), 2);
            float radius = h / 2.0f;

            paint.setStyle(Paint.Style.FILL);
            paint.setColor(active ? (checked ? 0xffdfe7f7 : 0xfff7f7f7) : 0xfff4f4f4);
            canvas.drawRoundRect(0, pad, w, h - pad, radius, radius, paint);

            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(1.0f);
            paint.setColor(active ? (checked ? 0xffc6d6f1 : 0xffe6e6e6) : 0xffeeeeee);
            canvas.drawRoundRect(0.5f, pad + 0.5f, w - 0.5f, h - pad - 0.5f, radius, radius, paint);

            float knobRadius = h / 2.0f - dp(getContext(), 3);
            float cx = checked ? w - h / 2.0f : h / 2.0f;
            float cy = h / 2.0f;

            paint.setStyle(Paint.Style.FILL);
            paint.setColor(0x22000000);
            canvas.drawCircle(cx, cy + dp(getContext(), 1), knobRadius, paint);

            paint.setColor(active ? 0xffffffff : 0xfffbfbfb);
            canvas.drawCircle(cx, cy, knobRadius, paint);

            if (checked && active) {
                paint.setColor(0xff6fa7f8);
                canvas.drawCircle(dp(getContext(), 19), cy, dp(getContext(), 5), paint);
            } else {
                paint.setColor(active ? 0xffececec : 0xffeeeeee);
                canvas.drawCircle(w - dp(getContext(), 16), cy, dp(getContext(), 5), paint);
            }
        }
    }

    private static final class BackChevronView extends View {
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Path path = new Path();

        BackChevronView(Context context) {
            super(context);
            setClickable(true);
        }

        protected void onDraw(Canvas canvas) {
            float cx = getWidth() * 0.58f;
            float cy = getHeight() * 0.50f;
            float size = Math.min(getWidth(), getHeight()) * 0.19f;
            path.reset();
            path.moveTo(cx + size * 0.45f, cy - size);
            path.lineTo(cx - size * 0.45f, cy);
            path.lineTo(cx + size * 0.45f, cy + size);
            paint.setColor(0xff8b8b8b);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(4.2f);
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setStrokeJoin(Paint.Join.MITER);
            canvas.drawPath(path, paint);
        }
    }

    private static final class FallbackPreviewDrawable extends android.graphics.drawable.Drawable {
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final int mode;

        FallbackPreviewDrawable(int mode) {
            this.mode = mode;
        }

        public void draw(Canvas canvas) {
            float w = getBounds().width();
            float h = getBounds().height();
            paint.setColor(0xff22252a);
            canvas.drawRoundRect(0, 0, w, h, 16, 16, paint);
            paint.setColor(0xff3d434a);
            canvas.drawRoundRect(8, 10, w - 8, h - 12, 8, 8, paint);
            int[] colors = {0xffd94c45, 0xff2d77c5, 0xffd9c269};
            int rows = mode == 20 ? 5 : 4;
            for (int y = 0; y < rows; y++) {
                for (int x = 0; x < 3; x++) {
                    paint.setColor(colors[(x + y) % colors.length]);
                    canvas.drawCircle(28 + x * 25, 36 + y * 26, 5, paint);
                }
            }
            paint.setColor(0xffffffff);
            canvas.drawCircle(w / 2, h - 16, 4, paint);
        }

        public void setAlpha(int alpha) {
            paint.setAlpha(alpha);
        }

        public void setColorFilter(android.graphics.ColorFilter filter) {
            paint.setColorFilter(filter);
        }

        public int getOpacity() {
            return android.graphics.PixelFormat.TRANSLUCENT;
        }
    }
}
