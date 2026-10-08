package com.smartisanos.launcher.data;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/** Final label anchors for ordinary desktop application cells. */
public final class DesktopLabelMetrics {
    public static final int GRID_12 = 12;
    public static final int GRID_20 = 20;
    // Legacy engine/resource lookup key for the port's 4x5 desktop, never a 9-icon option.
    public static final int LEGACY_ENGINE_KEY_GRID_20 = 9;

    public static int desktopGridCount(int engineKey) {
        return engineKey == LEGACY_ENGINE_KEY_GRID_20 || engineKey == GRID_20 ? GRID_20 : GRID_12;
    }

    private static final float BASE_WIDTH = 1080.0f;
    // Current 1080 resources: MODE_12 = 108 - (160 / 2 - 8) - 43 / 2,
    // MODE_20 = 82 - (118 / 2 - 8) - 36 / 2.  These are the accepted
    // 1080 visible artwork-to-label-top gaps, not icon scaling factors.
    private static final float BASE_GAP_MODE_12 = 14.5f;
    private static final float BASE_GAP_MODE_20 = 13.0f;
    private static final int BASE_TEXT_SIZE_MODE_12 = 36;
    private static final int BASE_TEXT_SIZE_MODE_20 = 30;
    private static volatile int sTextSizeAdjustment;

    private DesktopLabelMetrics() {
    }

    public static void setDesktopTextSizeAdjustment(int adjustment) {
        sTextSizeAdjustment = Math.max(0, Math.min(10, adjustment));
    }

    public static float resolveLabelCenterY(Object property, Object label,
            float fallbackY) {
        final float artwork = positive(number(property, "icon_size_origin_resize"),
                positive(number(property, "icon_size_origin"), 0.0f));
        final float labelHeight = positive(labelHeight(label),
                positive(number(property, "text_font_size"), 0.0f));
        if (artwork <= 0.0f || labelHeight <= 0.0f) {
            return fallbackY;
        }
        final float artworkBottom = artwork * 0.5f
                - number(property, "icon_offset_y");
        return -(artworkBottom + desktopGapForCurrentGrid() * widthScale()
                + labelHeight * 0.5f);
    }

    static float desktopGapForCurrentGrid() {
        return currentDesktopMode() == 20 ? BASE_GAP_MODE_20 : BASE_GAP_MODE_12;
    }

    /** The already-validated visible artwork-to-label gap, resolution scaled. */
    public static float finalVisualGap() {
        return desktopGapForCurrentGrid() * widthScale();
    }

    /** Desktop labels follow resolution width, never the user's icon-size setting. */
    public static int resolveDesktopTextSize(Object property, int fallback) {
        final int mode = currentDesktopMode();
        if (!isCurrentDesktopProperty(property)) {
            return fallback;
        }
        final int base = mode == 20 ? BASE_TEXT_SIZE_MODE_20 : BASE_TEXT_SIZE_MODE_12;
        return Math.max(1, Math.round(base * widthScale()) + sTextSizeAdjustment);
    }

    static float widthScale() {
        try {
            Class<?> constants = Class.forName(
                    "com.smartisanos.launcher.data.Constants");
            Field width = constants.getField("window_width");
            int value = width.getInt(null);
            return value > 0 ? value / BASE_WIDTH : 1.0f;
        } catch (Throwable ignored) {
            return 1.0f;
        }
    }

    private static int currentDesktopMode() {
        try {
            Class<?> constants = Class.forName(
                    "com.smartisanos.launcher.data.Constants");
            Field mode = constants.getDeclaredField("SINGLE_PAGE_MODE");
            mode.setAccessible(true);
            int value = mode.getInt(null);
            return desktopGridCount(value);
        } catch (Throwable ignored) {
            return 12;
        }
    }

    private static boolean isCurrentDesktopProperty(Object property) {
        if (property == null) {
            return false;
        }
        try {
            Class<?> constants = Class.forName(
                    "com.smartisanos.launcher.data.Constants");
            Method mode = constants.getMethod("mode", Integer.TYPE);
            Field current = constants.getDeclaredField("SINGLE_PAGE_MODE");
            current.setAccessible(true);
            return mode.invoke(null, Integer.valueOf(current.getInt(null))) == property;
        } catch (Throwable ignored) {
            return false;
        }
    }

    static float labelHeight(Object label) {
        if (label == null) {
            return 0.0f;
        }
        try {
            Method method = label.getClass().getMethod("getHeight");
            Object value = method.invoke(label);
            return value instanceof Number ? ((Number) value).floatValue() : 0.0f;
        } catch (Throwable ignored) {
            return 0.0f;
        }
    }

    static float number(Object target, String fieldName) {
        if (target == null) {
            return 0.0f;
        }
        try {
            Field field = target.getClass().getField(fieldName);
            Object value = field.get(target);
            return value instanceof Number ? ((Number) value).floatValue() : 0.0f;
        } catch (Throwable ignored) {
            return 0.0f;
        }
    }

    static float positive(float value, float fallback) {
        return value > 0.0f ? value : fallback;
    }
}
