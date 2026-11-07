package com.smartisanos.launcher.data;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class FolderCellPositionAdapter {
    private static final String FOLDER_PAGE_CLASS = "com.smartisanos.launcher.view.b.a";
    private static final String FOLDER_CONTAINER_CLASS = "com.smartisanos.launcher.view.b.t";
    private static final int COLUMN_COUNT = 3;
    private static final int MIDDLE_ROW = 1;

    private FolderCellPositionAdapter() {
    }

    public static float adjustX(Object page, int row, int column, float x) {
        if (page == null || !isFolderPage(page) || !isFolderMode(page)) {
            return x;
        }
        return columnCenterX(folderLayoutProperty(), column, x);
    }

    public static float adjustY(Object page, int row, int column, float y) {
        if (page == null || !isFolderPage(page) || !isFolderMode(page)) {
            return y;
        }
        Object layoutProperty = folderLayoutProperty();
        if (!FolderVisualGeometry.isFolderLayoutProperty(layoutProperty)) {
            return y;
        }
        Float middleY = cellY(COLUMN_COUNT + clampColumn(column));
        if (middleY == null) {
            return y;
        }
        return middleY
                + FolderVisualGeometry.contentGroupCenterCorrectionYForFolder(layoutProperty)
                + (MIDDLE_ROW - row) * FolderVisualGeometry.rowGapForFolder(layoutProperty);
    }

    public static float adjustYByIndex(Object page, int index, float y) {
        if (index < 0) {
            return y;
        }
        return adjustY(page, index / COLUMN_COUNT, index % COLUMN_COUNT, y);
    }

    /**
     * Returns folder-safe cell centers without changing the global Constants
     * array shared by the desktop and folder page views.
     */
    public static Object adaptPositions(Object owner, Object positions) {
        if (!hasExactClassName(owner, FOLDER_CONTAINER_CLASS)
                || !isFolderMode(owner)
                || positions == null
                || !positions.getClass().isArray()) {
            return positions;
        }
        Object layoutProperty = folderLayoutProperty();
        if (!FolderVisualGeometry.isFolderLayoutProperty(layoutProperty)) {
            return positions;
        }
        try {
            float correctionY = FolderVisualGeometry.contentGroupCenterCorrectionYForFolder(layoutProperty);
            float rowGap = FolderVisualGeometry.rowGapForFolder(layoutProperty);
            float frameWidth = floatField(layoutProperty, "folder_bookcase_width", 0.0f);
            float left = floatField(layoutProperty, "page_view_margin_left", 0.0f);
            float right = floatField(layoutProperty, "page_view_margin_right", 0.0f);
            int length = Array.getLength(positions);
            Object adapted = Array.newInstance(positions.getClass().getComponentType(), length);
            Class<?> pointType = null;
            Constructor<?> copyConstructor = null;
            for (int index = 0; index < length; index++) {
                Object source = Array.get(positions, index);
                Object copy = null;
                if (source != null) {
                    Class<?> sourceType = source.getClass();
                    if (sourceType != pointType) {
                        copyConstructor = sourceType.getDeclaredConstructor(sourceType);
                        copyConstructor.setAccessible(true);
                        pointType = sourceType;
                    }
                    copy = copyConstructor.newInstance(source);
                    float x = floatField(copy, "x", 0.0f);
                    setFloatField(copy, "x",
                            columnCenterX(frameWidth, left, right, index % COLUMN_COUNT, x));
                    float y = floatField(copy, "y", 0.0f);
                    setFloatField(copy, "y",
                            adjustedY(positions, index, y, correctionY, rowGap));
                }
                Array.set(adapted, index, copy);
            }
            return adapted;
        } catch (Throwable ignored) {
            return positions;
        }
    }

    private static boolean isFolderPage(Object page) {
        if (hasExactClassName(page, FOLDER_PAGE_CLASS)
                || hasExactClassName(page, FOLDER_CONTAINER_CLASS)) {
            return true;
        }
        Object container = getField(page, "dl");
        return hasExactClassName(container, FOLDER_CONTAINER_CLASS);
    }

    private static boolean hasExactClassName(Object target, String name) {
        return target != null && name.equals(target.getClass().getName());
    }

    private static boolean isFolderMode(Object page) {
        Object owner = hasExactClassName(page, FOLDER_CONTAINER_CLASS)
                ? page : getField(page, "dl");
        if (!hasExactClassName(owner, FOLDER_CONTAINER_CLASS)) {
            return false;
        }
        try {
            Method currentModeMethod = owner.getClass().getMethod(
                    "getSinglePageMode");
            int currentMode =
                    ((Number) currentModeMethod.invoke(owner)).intValue();
            Class<?> constants = Class.forName(
                    "com.smartisanos.launcher.data.Constants");
            Method folderModeMethod = constants.getMethod(
                    "getPAGE_1_3X3_MODE_FOLDER");
            int folderMode =
                    ((Number) folderModeMethod.invoke(null)).intValue();
            return currentMode == folderMode;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static Object getField(Object target, String name) {
        if (target == null) {
            return null;
        }
        Class<?> cls = target.getClass();
        while (cls != null) {
            try {
                Field field = cls.getDeclaredField(name);
                field.setAccessible(true);
                return field.get(target);
            } catch (Throwable ignored) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    private static float adjustedY(Object positions, int index, float fallback,
            float correctionY, float rowGap) {
        int column = clampColumn(index % COLUMN_COUNT);
        int middleIndex = COLUMN_COUNT + column;
        if (middleIndex >= Array.getLength(positions)) {
            return fallback;
        }
        Object middle = Array.get(positions, middleIndex);
        if (middle == null) {
            return fallback;
        }
        float middleY = floatField(middle, "y", fallback);
        int row = index / COLUMN_COUNT;
        return middleY
                + correctionY
                + (MIDDLE_ROW - row) * rowGap;
    }

    private static float floatField(Object target, String name, float fallback) {
        Object value = getField(target, name);
        return value instanceof Number ? ((Number) value).floatValue() : fallback;
    }

    private static void setFloatField(Object target, String name, float value) {
        if (target == null) {
            return;
        }
        Class<?> cls = target.getClass();
        while (cls != null) {
            try {
                Field field = cls.getDeclaredField(name);
                field.setAccessible(true);
                field.setFloat(target, value);
                return;
            } catch (Throwable ignored) {
                cls = cls.getSuperclass();
            }
        }
    }

    private static int clampColumn(int column) {
        return Math.max(0, Math.min(column, COLUMN_COUNT - 1));
    }

    private static float columnCenterX(Object layoutProperty, int column, float fallback) {
        if (!FolderVisualGeometry.isFolderLayoutProperty(layoutProperty)) {
            return fallback;
        }
        float frameWidth = floatField(layoutProperty, "folder_bookcase_width", 0.0f);
        float left = floatField(layoutProperty, "page_view_margin_left", 0.0f);
        float right = floatField(layoutProperty, "page_view_margin_right", 0.0f);
        return columnCenterX(frameWidth, left, right, column, fallback);
    }

    private static float columnCenterX(float frameWidth, float left, float right,
            int column, float fallback) {
        float usableWidth = frameWidth - left - right;
        if (frameWidth <= 0.0f || usableWidth <= 0.0f) {
            return fallback;
        }
        float cellWidth = usableWidth / COLUMN_COUNT;
        return -frameWidth * 0.5f + left
                + (clampColumn(column) + 0.5f) * cellWidth;
    }

    private static Float cellY(int index) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            Object points = constants.getField("pageCellCenterPoints").get(null);
            Object point = Array.get(points, index);
            return point.getClass().getField("y").getFloat(point);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static Object folderLayoutProperty() {
        try {
            Class<?> constants = Class.forName(
                    "com.smartisanos.launcher.data.Constants");
            Method folderModeMethod = constants.getMethod(
                    "getPAGE_1_3X3_MODE_FOLDER");
            int folderMode =
                    ((Number) folderModeMethod.invoke(null)).intValue();
            Method modeMethod = constants.getMethod("mode", int.class);
            return modeMethod.invoke(null, folderMode);
        } catch (Throwable ignored) {
            return null;
        }
    }
}
