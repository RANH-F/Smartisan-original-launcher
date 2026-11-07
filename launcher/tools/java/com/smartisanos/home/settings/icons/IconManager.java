package com.smartisanos.home.settings.icons;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;

import com.smartisanos.launcher.data.redirectIcon.RedirectIconDB;
import com.smartisanos.launcher.data.redirectIcon.RedirectIconInfo;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class IconManager {
    private final Context mContext;
    private final Map<String, ResolveInfo> resolveInfoMap = new HashMap<String, ResolveInfo>();

    public IconManager(Context context) {
        mContext = context;
        loadResolveInfos();
    }

    public void appendResolveInfo(ResolveInfo info) {
        if (info == null || info.activityInfo == null) {
            return;
        }
        resolveInfoMap.put(key(info.activityInfo.packageName, info.activityInfo.name), info);
    }

    public List<RedirectIconInfo> getIconRedirectedApplications() {
        Map<String, RedirectIconInfo> stored = RedirectIconDB.getIconTableData(mContext, true);
        ArrayList<RedirectIconInfo> all = new ArrayList<RedirectIconInfo>();
        for (String key : resolveInfoMap.keySet()) {
            RedirectIconInfo info = stored.get(key);
            if (info == null) {
                String[] parts = key.split(";", 2);
                info = new RedirectIconInfo();
                info.packageName = parts[0];
                info.componentName = parts.length > 1 ? parts[1] : "";
                // An absent record means follow the global source, not a user-forced original icon.
                info.useImprovedAppIcon = true;
                info.drawableName = RedirectIconDB.MODE_AUTO;
            }
            all.add(info);
        }
        java.util.Collections.sort(all);
        return all;
    }

    public String getLableForPackage(String packageName, String componentName) {
        RedirectIconInfo redirect = RedirectIconDB.getRedirectIconMetadata(mContext, packageName, componentName);
        if (redirect != null && redirect.displayName != null && redirect.displayName.trim().length() > 0) {
            return redirect.displayName;
        }
        ResolveInfo info = resolveInfoMap.get(key(packageName, componentName));
        if (info == null) {
            return packageName;
        }
        CharSequence label = info.loadLabel(mContext.getPackageManager());
        return label == null ? packageName : label.toString();
    }

    public Drawable getOfficialIcon(RedirectIconInfo info) {
        ResolveInfo resolveInfo = info == null ? null : resolveInfoMap.get(info.getPrimaryId());
        return resolveInfo == null ? null : resolveInfo.loadIcon(mContext.getPackageManager());
    }

    /** Read-only bridge used by the settings list; loading stays in IconPreviewRepository. */
    public Bitmap getCachedOfficialIcon(RedirectIconInfo info, long userSerial, long versionStamp, int targetPx) {
        if (info == null) return null;
        return IconPreviewRepository.get(mContext).getCachedOfficialIcon(info.packageName,
                info.componentName, userSerial, versionStamp, targetPx);
    }

    public Drawable getRedirectedIcon(String packageName, String componentName) {
        byte[] data = RedirectIconDB.getRedirectIcon(mContext, packageName, componentName);
        if (data == null) {
            return null;
        }
        try {
            Bitmap bitmap = BitmapFactory.decodeByteArray(data, 0, data.length);
            return bitmap == null ? null : new android.graphics.drawable.BitmapDrawable(mContext.getResources(), bitmap);
        } catch (Throwable ignored) {
            return null;
        }
    }

    public ResolveInfo getResolveInfo(String pkg, String cmp) {
        return resolveInfoMap.get(key(pkg, cmp));
    }

    public void notifyIconUpdate(Map<String, RedirectIconInfo> infos) {
        if (infos == null) {
            return;
        }
        for (RedirectIconInfo info : infos.values()) {
            if (info == null) {
                continue;
            }
            RedirectIconDB.updateIconStatus(mContext, info.packageName, info.componentName, info.useImprovedAppIcon);
        }
        mContext.sendBroadcast(new Intent("com.smartisanos.launcher.update_icon"));
    }

    private void loadResolveInfos() {
        Intent intent = new Intent(Intent.ACTION_MAIN);
        intent.addCategory(Intent.CATEGORY_LAUNCHER);
        try {
            PackageManager pm = mContext.getPackageManager();
            int flags = android.os.Build.VERSION.SDK_INT >= 23 ? 0x00020000 : 0;
            List<ResolveInfo> infos = com.smartisanos.launcher.model.ProfileRepository
                    .queryLauncherActivities(pm, intent, flags);
            for (int i = 0; i < infos.size(); i++) {
                appendResolveInfo(infos.get(i));
            }
        } catch (Throwable ignored) {
        }
    }

    private static String key(String pkg, String cmp) {
        return String.valueOf(pkg) + ";" + String.valueOf(cmp);
    }

    public static final class SystemAliasResolver {
        private static final Map<String, String> EXACT_COMPONENT_MAP = new HashMap<String, String>();
        private static final Map<String, String> EXACT_PACKAGE_MAP = new HashMap<String, String>();

        static {
            EXACT_COMPONENT_MAP.put("com.coloros.calendar;com.android.calendar.allinoneactivity", "calendar");
            EXACT_COMPONENT_MAP.put("com.coloros.alarmclock;com.oplus.alarmclock.alarmclock", "clock");
            EXACT_COMPONENT_MAP.put("com.coloros.phonemanager;com.oplus.phonemanager.fakeactivity", "com.smartisanos.security");
            EXACT_COMPONENT_MAP.put("com.coloros.filemanager;com.oplus.filemanager.main.ui.mainactivity", "com.smartisanos.filemanager");
            EXACT_COMPONENT_MAP.put("com.android.contacts;com.android.contacts.dialtactsactivityalias", "app_icon_phone");
            EXACT_COMPONENT_MAP.put("com.android.contacts;com.android.contacts.peopleactivityalias", "source_contactcommon_icon");

            EXACT_PACKAGE_MAP.put("com.coloros.calendar", "calendar");
            EXACT_PACKAGE_MAP.put("com.coloros.alarmclock", "clock");
            EXACT_PACKAGE_MAP.put("com.coloros.phonemanager", "com.smartisanos.security");
            EXACT_PACKAGE_MAP.put("com.coloros.filemanager", "com.smartisanos.filemanager");
            EXACT_PACKAGE_MAP.put("com.coloros.gallery3d", "com.android.gallery3d");
            EXACT_PACKAGE_MAP.put("com.coloros.note", "com.smartisanos.notes");
            EXACT_PACKAGE_MAP.put("com.coloros.soundrecorder", "com.smartisanos.recorder");
            EXACT_PACKAGE_MAP.put("com.oplus.camera", "com.android.camera2");

            EXACT_PACKAGE_MAP.put("com.miui.camera", "com.android.camera2");
            EXACT_PACKAGE_MAP.put("com.miui.gallery", "com.android.gallery3d");
            EXACT_PACKAGE_MAP.put("com.miui.securitycenter", "com.smartisanos.security");
            EXACT_PACKAGE_MAP.put("com.miui.calculator", "com.smartisanos.calculator");
            EXACT_PACKAGE_MAP.put("com.miui.notes", "com.smartisanos.notes");
            EXACT_PACKAGE_MAP.put("com.miui.weather2", "com.smartisanos.weather");
            EXACT_PACKAGE_MAP.put("com.miui.compass", "com.smartisanos.compass");
            EXACT_PACKAGE_MAP.put("com.miui.soundrecorder", "com.smartisanos.recorder");

            EXACT_PACKAGE_MAP.put("com.vivo.camera", "com.android.camera2");
            EXACT_PACKAGE_MAP.put("com.vivo.gallery", "com.android.gallery3d");
            EXACT_PACKAGE_MAP.put("com.iqoo.secure", "com.smartisanos.security");
            EXACT_PACKAGE_MAP.put("com.vivo.permissionmanager", "com.smartisanos.security");
            EXACT_PACKAGE_MAP.put("com.vivo.calculator", "com.smartisanos.calculator");
            EXACT_PACKAGE_MAP.put("com.vivo.notes", "com.smartisanos.notes");
            EXACT_PACKAGE_MAP.put("com.vivo.weather", "com.smartisanos.weather");

            EXACT_PACKAGE_MAP.put("com.sec.android.app.camera", "com.android.camera2");
            EXACT_PACKAGE_MAP.put("com.sec.android.gallery3d", "com.android.gallery3d");
            EXACT_PACKAGE_MAP.put("com.samsung.android.calendar", "calendar");
            EXACT_PACKAGE_MAP.put("com.sec.android.app.clockpackage", "clock");

            EXACT_PACKAGE_MAP.put("com.google.android.calendar", "calendar");
            EXACT_PACKAGE_MAP.put("com.android.calendar", "calendar");
            EXACT_PACKAGE_MAP.put("com.google.android.deskclock", "clock");
            EXACT_PACKAGE_MAP.put("com.android.deskclock", "clock");
            EXACT_PACKAGE_MAP.put("com.google.android.dialer", "app_icon_phone");
            EXACT_PACKAGE_MAP.put("com.android.dialer", "app_icon_phone");
            EXACT_PACKAGE_MAP.put("com.google.android.contacts", "source_contactcommon_icon");
            EXACT_PACKAGE_MAP.put("com.android.contacts", "source_contactcommon_icon");
            EXACT_PACKAGE_MAP.put("com.google.android.apps.messaging", "app_icon_mms");
            EXACT_PACKAGE_MAP.put("com.android.mms", "app_icon_mms");
            EXACT_PACKAGE_MAP.put("com.google.android.calculator", "com.smartisanos.calculator");
            EXACT_PACKAGE_MAP.put("com.android.calculator2", "com.smartisanos.calculator");

        }
    }

    public static String resolveSmartisanSystemIconName(String packageName, String componentName, CharSequence applicationLabel) {
        return resolveSmartisanSystemIconName(packageName, componentName, applicationLabel, false);
    }

    /**
     * Keep the component/package fallback used by the icon source resolver.
     * IconPreviewRepository resolves candidates before it has an ApplicationInfo,
     * so this must not depend on a system-app flag that is unavailable there.
     */
    public static String resolveSmartisanSystemIconName(String packageName, String componentName,
                                                        CharSequence applicationLabel,
                                                        boolean systemApplication) {
        if (packageName == null || packageName.length() == 0) {
            return null;
        }
        String pkg = packageName.trim().toLowerCase(java.util.Locale.US);
        String cls = componentName == null ? "" : componentName.trim().toLowerCase(java.util.Locale.US);
        if (cls.startsWith(".")) {
            cls = pkg + cls;
        }

        String key = pkg + " " + cls;
        String label = applicationLabel == null ? "" : applicationLabel.toString().trim().toLowerCase(java.util.Locale.US);

        String dataDrivenAlias = SystemAliasResolver.EXACT_COMPONENT_MAP.get(pkg + ";" + cls);
        if (dataDrivenAlias != null) {
            return dataDrivenAlias;
        }
        dataDrivenAlias = SystemAliasResolver.EXACT_PACKAGE_MAP.get(pkg);
        // Shared dialer/contacts packages need component/label disambiguation
        // before their coarse package default. Exact component aliases stay first.
        if ("app_icon_phone".equals(dataDrivenAlias)
                || "source_contactcommon_icon".equals(dataDrivenAlias)) {
            if (isDialerActivity(cls, label)) return "app_icon_phone";
            if (isContactsActivity(cls, label)) return "source_contactcommon_icon";
        }
        if (dataDrivenAlias != null) {
            return dataDrivenAlias;
        }

        boolean allowPackageMatch = isKnownVendorSystemPackage(pkg);

        if (isDialerActivity(cls, label)) return "app_icon_phone";
        if (isContactsActivity(cls, label)) return "source_contactcommon_icon";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"calendar", "allinoneactivity"}, new String[]{"日历", "calendar"})) return "calendar";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"deskclock", "alarmclock", "clock"}, new String[]{"时钟", "闹钟", "clock"})) return "clock";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"dialer", "dialtacts", "dialpad", "phoneactivity", "com.android.phone", "com.smartisanos.phone"}, new String[]{"电话", "拨号", "dialer", "phone"})) return "app_icon_phone";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"contacts", "people"}, new String[]{"联系人", "通讯录", "电话本", "contacts", "people"})) return "source_contactcommon_icon";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"filemanager", "fileexplorer", "file.manager", "file_manager", "documentsui"}, new String[]{"文件管理", "文件管理器", "文件浏览器", "files"})) return "com.smartisanos.filemanager";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"videoplayer", "video.player", "video", "movie"}, new String[]{"视频", "视频播放器", "video", "movies"})) return "com.smartisanos.videoplayerproject";
        if ("设备搜索".equals(label) || "device search".equals(label)) return null;
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"camera", "com.oplus.camera", "com.coloros.camera", "com.miui.camera", "com.vivo.camera", "com.huawei.camera", "com.sec.android.app.camera"}, new String[]{"相机", "照相机", "camera"})) return "com.android.camera2";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"gallery", "photos", "album", "com.coloros.gallery3d", "com.miui.gallery", "com.vivo.gallery", "com.huawei.photos"}, new String[]{"相册", "图库", "照片", "gallery", "photos"})) return "com.android.gallery3d";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"browser", "com.heytap.browser", "com.android.chrome", "com.sec.android.app.sbrowser"}, new String[]{"浏览器", "browser", "internet"})) return "com.android.browser";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"mms", "messaging", "message"}, new String[]{"短信", "信息", "消息", "messages"})) return "com.android.mms";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"email", "mail"}, new String[]{"邮件", "邮箱", "email", "mail"})) return "com.android.email";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"appstore", "app.market", "market", "store", "vending"}, new String[]{"软件商店", "应用商店", "应用市场", "软件商城", "商店", "app market", "app store"})) return "com.smartisanos.appstore";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"cloudservice", "cloud.service", "cloudsync", "cloudspace"}, new String[]{"云服务", "云空间", "云同步", "欢喜云", "cloud service", "cloud"})) return "com.smartisanos.cloudsync";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"security", "safecenter", "securitycenter", "phone.manager", "phonemanager", "mobilemanager"}, new String[]{"手机管家", "安全中心", "系统管家", "安全", "phone manager", "security"})) return "com.smartisanos.security";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"wallet", "pay.wallet"}, new String[]{"钱包", "卡包", "wallet"})) return "com.smartisanos.wallet";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"calculator", "calc"}, new String[]{"计算器", "calculator"})) return "com.smartisanos.calculator";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"compass"}, new String[]{"指南针", "compass"})) return "com.smartisanos.compass";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"soundrecorder", "voicerecorder", "recorder"}, new String[]{"录音", "录音机", "录音器", "recorder"})) return "com.smartisanos.recorder";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"music", "audio.player"}, new String[]{"音乐", "music"})) return "com.smartisanos.music";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"weather"}, new String[]{"天气", "weather"})) return "com.smartisanos.weather";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"notes", "notepad", "memo"}, new String[]{"便签", "笔记", "备忘录", "notes"})) return "com.smartisanos.notes";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"assistant", "voiceassist", "breeno", "xiaobu"}, new String[]{"小布助手", "语音助手", "智能助理", "assistant"})) return "com.smartisanos.voice";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"settings"}, new String[]{"设置", "settings"})) return "com.android.settings";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"reader"}, new String[]{"阅读", "reader"})) return "app_icon_reader";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"googlequicksearchbox"}, new String[]{"搜索", "search"})) return "app_icon_search";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"gamecenter"}, new String[]{"游戏中心", "game center"})) return "app_icon_game_center";
        if (isSystemIconCategory(key, label, allowPackageMatch, new String[]{"bbs"}, new String[]{"锤子论坛", "bbs"})) return "app_icon_bbs";
        return null;
    }

    private static boolean isSystemIconCategory(String key, String label, boolean allowPackageMatch,
                                                String[] keyTokens, String[] labels) {
        if (labels != null) {
            for (String candidate : labels) {
                if (candidate != null && candidate.equals(label)) return true;
            }
        }
        if (allowPackageMatch && keyTokens != null) {
            for (String token : keyTokens) {
                if (token != null && token.length() > 0 && key.contains(token)) return true;
            }
        }
        return false;
    }

    private static boolean isDialerActivity(String cls, String label) {
        if (isContactsLabel(label)) return false;
        if (isDialerLabel(label)) return true;
        return cls.contains("dialtacts") || cls.contains("dialer") || cls.contains("dialpad") || cls.contains("phoneactivity");
    }

    private static boolean isContactsActivity(String cls, String label) {
        if (isDialerLabel(label)) return false;
        if (isContactsLabel(label)) return true;
        return cls.contains("peopleactivity") || cls.contains("contactactivity") || cls.contains("contactsactivity") || cls.contains("people");
    }

    private static boolean isKnownVendorSystemPackage(String pkg) {
        if (pkg == null) return false;
        String[] prefixes = new String[]{
                "com.android.", "com.google.android.", "com.smartisanos.",
                "com.oplus.", "com.coloros.", "com.heytap.", "com.oneplus.", "com.realme.",
                "com.miui.", "com.xiaomi.", "com.vivo.", "com.bbk.",
                "com.huawei.", "com.hihonor.", "com.sec.android.", "com.samsung."
        };
        for (String prefix : prefixes) {
            if (pkg.startsWith(prefix)) return true;
        }
        return false;
    }

    public static boolean isDialerLabel(String label) {
        if (label == null) return false;
        String l = label.trim().toLowerCase(java.util.Locale.US);
        return "拨号".equals(l) || "电话".equals(l)
                || "dialer".equals(l) || "phone".equals(l);
    }

    public static boolean isContactsLabel(String label) {
        if (label == null) return false;
        String l = label.trim().toLowerCase(java.util.Locale.US);
        return "联系人".equals(l) || "通讯录".equals(l)
                || "电话本".equals(l) || "contacts".equals(l)
                || "contact".equals(l) || "people".equals(l);
    }

}
