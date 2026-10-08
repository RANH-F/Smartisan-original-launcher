package com.smartisanos.launcher.data.redirectIcon;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Base64;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class RedirectIconDB {
    public static final String MODE_AUTO = "auto";
    public static final String MODE_ORIGINAL = "original";
    public static final String MODE_RESOURCE = "resource";
    public static final String MODE_CUSTOM = "custom";
    public static final String MODE_PACK = "pack";

    private static final String PREFS = "redirect_icon_db";
    private static final String INDEX = "__index__";
    private static volatile Boolean sHasManagedIconOverride;

    private RedirectIconDB() {
    }

    public static RedirectIconInfo getRedirectIconInfo(Context context, String pkg, String cmp) {
        if (context == null || TextUtils.isEmpty(pkg) || TextUtils.isEmpty(cmp)) {
            return null;
        }
        return read(context, key(pkg, cmp), true);
    }

    /** Checks override metadata without decoding a custom icon from disk. */
    public static RedirectIconInfo getRedirectIconMetadata(Context context, String pkg, String cmp) {
        if (context == null || TextUtils.isEmpty(pkg) || TextUtils.isEmpty(cmp)) return null;
        return read(context, key(pkg, cmp), false);
    }

    /** Checks override metadata without decoding a custom icon from disk. */
    public static boolean hasManagedIconOverride(Context context, String pkg, String cmp) {
        if (context == null || TextUtils.isEmpty(pkg) || TextUtils.isEmpty(cmp)
                || !hasAnyManagedIconOverride(context)) {
            return false;
        }
        RedirectIconInfo info = read(context, key(pkg, cmp), false);
        return isManagedIconOverride(info);
    }

    private static boolean hasAnyManagedIconOverride(Context context) {
        Boolean cached = sHasManagedIconOverride;
        if (cached != null) {
            return cached.booleanValue();
        }
        boolean found = false;
        if (context != null) {
            SharedPreferences p = prefs(context);
            String index = p.getString(INDEX, "");
            if (index.length() != 0) {
                String[] keys = index.split("\\n");
                for (int i = 0; i < keys.length; i++) {
                    String prefix = "r." + keys[i] + ".";
                    if (p.getBoolean(prefix + "use", false)
                            && !MODE_ORIGINAL.equals(p.getString(prefix + "drawable", MODE_ORIGINAL))) {
                        found = true;
                        break;
                    }
                }
            }
        }
        sHasManagedIconOverride = Boolean.valueOf(found);
        return found;
    }

    private static boolean isManagedIconOverride(RedirectIconInfo info) {
        return info != null && info.useImprovedAppIcon
                && !MODE_ORIGINAL.equals(modeOf(info));
    }

    public static byte[] getRedirectIcon(Context context, String pkg, String cmp) {
        RedirectIconInfo info = getRedirectIconInfo(context, pkg, cmp);
        return info == null || !info.useImprovedAppIcon ? null : info.iconData;
    }

    public static void updateIconStatus(Context context, String pkg, String cmp, boolean useImprovedAppIcon) {
        RedirectIconInfo info = ensure(context, pkg, cmp);
        if (info == null) {
            return;
        }
        info.useImprovedAppIcon = useImprovedAppIcon;
        if (!useImprovedAppIcon) {
            info.drawableName = MODE_ORIGINAL;
            info.iconData = null;
        } else if (TextUtils.isEmpty(info.drawableName) || MODE_ORIGINAL.equals(info.drawableName)) {
            info.drawableName = MODE_AUTO;
        }
        write(context, info);
    }

    public static void resetIconToDefault(Context context, String pkg, String cmp) {
        RedirectIconInfo info = ensure(context, pkg, cmp);
        if (info == null) {
            return;
        }
        String key = key(pkg, cmp);
        try {
            File file = customFile(context, key);
            if (file.exists()) {
                file.delete();
            }
        } catch (Throwable ignored) {
        }
        info.useImprovedAppIcon = false;
        info.drawableName = MODE_ORIGINAL;
        info.iconData = null;
        write(context, info);
    }

    public static void updateResourceIcon(Context context, String pkg, String cmp, String drawableName) {
        RedirectIconInfo info = ensure(context, pkg, cmp);
        if (info == null) {
            return;
        }
        info.useImprovedAppIcon = true;
        info.drawableName = MODE_RESOURCE + ":" + drawableName;
        info.iconData = null;
        write(context, info);
    }

    public static void updateAutoIcon(Context context, String pkg, String cmp) {
        RedirectIconInfo info = ensure(context, pkg, cmp);
        if (info == null) {
            return;
        }
        info.useImprovedAppIcon = true;
        info.drawableName = MODE_AUTO;
        info.iconData = null;
        write(context, info);
    }

    public static void updateCustomIcon(Context context, String pkg, String cmp, byte[] iconData) {
        RedirectIconInfo info = ensure(context, pkg, cmp);
        if (info == null) {
            return;
        }
        info.useImprovedAppIcon = true;
        info.drawableName = MODE_CUSTOM;
        info.iconData = iconData;
        write(context, info);
    }

    public static void updatePackIcon(Context context, String pkg, String cmp, String iconPackPackage) {
        updatePackIcon(context, pkg, cmp, iconPackPackage, "");
    }

    public static void updatePackIcon(Context context, String pkg, String cmp, String iconPackPackage, String drawable) {
        if (TextUtils.isEmpty(iconPackPackage)) return;
        RedirectIconInfo info = ensure(context, pkg, cmp);
        if (info == null) return;
        info.useImprovedAppIcon = true;
        info.drawableName = MODE_PACK + ":" + iconPackPackage + (drawable == null || drawable.length() == 0 ? "" : "#" + drawable);
        info.iconData = null;
        write(context, info);
    }

    public static void updateDisplayName(Context context, String pkg, String cmp,
                                         String displayName, String originalName) {
        RedirectIconInfo info = ensure(context, pkg, cmp);
        if (info == null) return;
        info.displayName = displayName;
        info.originalName = originalName;
        write(context, info);
    }

    public static void resetAllToDefault(Context context) {
        prefs(context).edit().clear().apply();
        sHasManagedIconOverride = null;
    }

    /** Invalidates only metadata state after an atomic backup restore. */
    public static void invalidateCaches() {
        sHasManagedIconOverride = null;
    }

    public static Map<String, RedirectIconInfo> getIconTableData(Context context, boolean loadIcon) {
        HashMap<String, RedirectIconInfo> out = new HashMap<String, RedirectIconInfo>();
        if (context == null) {
            return out;
        }
        String index = prefs(context).getString(INDEX, "");
        if (index.length() == 0) {
            return out;
        }
        String[] keys = index.split("\\n");
        for (int i = 0; i < keys.length; i++) {
            RedirectIconInfo info = read(context, keys[i], loadIcon);
            if (info != null) {
                out.put(info.getPrimaryId(), info);
            }
        }
        return out;
    }

    public static List<RedirectIconInfo> listAllInfo(Context context) {
        return new ArrayList<RedirectIconInfo>(getIconTableData(context, false).values());
    }

    public static String modeOf(RedirectIconInfo info) {
        if (info == null || TextUtils.isEmpty(info.drawableName)) {
            return MODE_AUTO;
        }
        if (MODE_ORIGINAL.equals(info.drawableName)) {
            return MODE_ORIGINAL;
        }
        if (MODE_CUSTOM.equals(info.drawableName)) {
            return MODE_CUSTOM;
        }
        if (info.drawableName.startsWith(MODE_RESOURCE + ":")) {
            return MODE_RESOURCE;
        }
        if (info.drawableName.startsWith(MODE_PACK + ":")) {
            return MODE_PACK;
        }
        return MODE_AUTO;
    }

    public static String resourceNameOf(RedirectIconInfo info) {
        if (info != null && info.drawableName != null && info.drawableName.startsWith(MODE_RESOURCE + ":")) {
            return info.drawableName.substring((MODE_RESOURCE + ":").length());
        }
        return null;
    }

    public static String packNameOf(RedirectIconInfo info) {
        if (info != null && info.drawableName != null && info.drawableName.startsWith(MODE_PACK + ":")) {
            String value = info.drawableName.substring((MODE_PACK + ":").length());
            int split = value.indexOf('#');
            return split < 0 ? value : value.substring(0, split);
        }
        return null;
    }

    public static String packDrawableNameOf(RedirectIconInfo info) {
        if (info == null || !MODE_PACK.equals(modeOf(info))) return "";
        int split = info.drawableName.indexOf('#');
        return split < 0 ? "" : info.drawableName.substring(split + 1);
    }

    private static RedirectIconInfo ensure(Context context, String pkg, String cmp) {
        if (context == null || TextUtils.isEmpty(pkg) || TextUtils.isEmpty(cmp)) {
            return null;
        }
        RedirectIconInfo info = read(context, key(pkg, cmp), true);
        if (info == null) {
            info = new RedirectIconInfo();
            info.packageName = pkg;
            info.componentName = cmp;
            info.drawableName = MODE_ORIGINAL;
            info.useImprovedAppIcon = false;
        }
        return info;
    }

    private static RedirectIconInfo read(Context context, String key, boolean loadIcon) {
        if (TextUtils.isEmpty(key)) {
            return null;
        }
        SharedPreferences p = prefs(context);
        String prefix = "r." + key + ".";
        String pkg = p.getString(prefix + "pkg", null);
        String cmp = p.getString(prefix + "cmp", null);
        if (pkg == null || cmp == null) {
            return null;
        }
        RedirectIconInfo info = new RedirectIconInfo();
        info.packageName = pkg;
        info.componentName = cmp;
        info.drawableName = p.getString(prefix + "drawable", MODE_ORIGINAL);
        info.useImprovedAppIcon = p.getBoolean(prefix + "use", false);
        info.installTime = p.getLong(prefix + "install", 0L);
        info.ownerId = p.getLong(prefix + "owner", 0L);
        info.displayName = p.getString(prefix + "display_name", null);
        info.originalName = p.getString(prefix + "original_name", null);
        if (loadIcon && MODE_CUSTOM.equals(info.drawableName)) {
            info.iconData = readCustomBytes(context, key);
        }
        return info;
    }

    private static void write(Context context, RedirectIconInfo info) {
        String key = key(info.packageName, info.componentName);
        SharedPreferences p = prefs(context);
        SharedPreferences.Editor e = p.edit();
        String prefix = "r." + key + ".";
        e.putString(prefix + "pkg", info.packageName);
        e.putString(prefix + "cmp", info.componentName);
        e.putString(prefix + "drawable", info.drawableName == null ? MODE_AUTO : info.drawableName);
        e.putBoolean(prefix + "use", info.useImprovedAppIcon);
        e.putLong(prefix + "install", info.installTime);
        e.putLong(prefix + "owner", info.ownerId);
        if (TextUtils.isEmpty(info.displayName)) {
            e.remove(prefix + "display_name");
        } else {
            e.putString(prefix + "display_name", info.displayName);
        }
        if (TextUtils.isEmpty(info.originalName)) {
            e.remove(prefix + "original_name");
        } else {
            e.putString(prefix + "original_name", info.originalName);
        }
        e.putString(INDEX, addIndex(p.getString(INDEX, ""), key));
        e.apply();
        sHasManagedIconOverride = null;
        if (MODE_CUSTOM.equals(info.drawableName) && info.iconData != null) {
            writeCustomBytes(context, key, info.iconData);
        }
    }

    private static String addIndex(String index, String key) {
        String padded = "\n" + index + "\n";
        if (padded.contains("\n" + key + "\n")) {
            return index;
        }
        return index.length() == 0 ? key : index + "\n" + key;
    }

    private static byte[] readCustomBytes(Context context, String key) {
        try {
            File file = customFile(context, key);
            if (file == null || !file.exists()) {
                return null;
            }
            Bitmap bitmap = BitmapFactory.decodeFile(file.getAbsolutePath());
            if (bitmap == null) {
                return null;
            }
            java.io.ByteArrayOutputStream out = new java.io.ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, out);
            bitmap.recycle();
            return out.toByteArray();
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static void writeCustomBytes(Context context, String key, byte[] data) {
        if (data == null) return;
        try {
            File file = customFile(context, key);
            if (file == null) return;
            File dir = file.getParentFile();
            if (dir != null && !dir.exists()) {
                dir.mkdirs();
            }
            FileOutputStream out = new FileOutputStream(file);
            try {
                out.write(data);
            } finally {
                out.close();
            }
        } catch (Throwable ignored) {
        }
    }

    private static File customFile(Context context, String key) {
        if (context == null || key == null) {
            return null;
        }
        File persistent = new File(new File(context.getFilesDir(), "redirect_icons"),
                Integer.toHexString(key.hashCode()) + ".png");
        if (!persistent.exists()) {
            File legacy = new File(new File(context.getFilesDir(), "custom_icons"), persistent.getName());
            if (legacy.exists()) {
                File parent = persistent.getParentFile();
                if (parent != null) parent.mkdirs();
                legacy.renameTo(persistent);
            }
        }
        return persistent;
    }

    private static String key(String pkg, String cmp) {
        return pkg + ";" + cmp;
    }

    private static SharedPreferences prefs(Context context) {
        return context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }
}
