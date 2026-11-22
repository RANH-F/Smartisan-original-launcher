package com.smartisanos.home.settings.icons;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Build;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public final class IconHubSource {
    private static final String PACKAGE = "com.smartisan.iconhub";
    private static final Uri ROOT = Uri.parse("content://" + PACKAGE + ".launcher.icons");
    private static final String EXTRA = PACKAGE + ".extra.";
    private static final String CERT_SHA256 =
            "9bc454f48430ac607321ed66b8ef38ef117826b90e9d8c5be5945429f13c0503";

    private static final String REVOKED = "revoked_sources";
    private static volatile java.util.Set<String> revoked = java.util.Collections.emptySet();

    private IconHubSource() {}

    public static void initialize(Context context) {
        revoked = new java.util.HashSet<>(context.getSharedPreferences("iconhub_catalog", 0)
                .getStringSet(REVOKED, java.util.Collections.<String>emptySet()));
    }

    public static boolean isUnavailable(String source) {
        return source != null && revoked.contains(source);
    }

    public static void replaceRevokedList(Context context, java.util.Collection<String> sources) {
        java.util.Set<String> next = new java.util.HashSet<>();
        java.io.File cacheDir = new java.io.File(context.getFilesDir(), "online_icon_cache_v4");
        for (String source : sources) {
            if (!isValidSourceId(source)) continue;
            next.add(source);
            new java.io.File(cacheDir, source + ".png").delete();
            new java.io.File(cacheDir, Integer.toHexString(source.hashCode()) + ".png").delete();
        }
        if (next.equals(revoked)) return;
        revoked = next;
        context.getSharedPreferences("iconhub_catalog", 0).edit().putStringSet(REVOKED, next).apply();
    }

    public static void observe(Context context, android.database.ContentObserver observer) {
        context.getContentResolver().registerContentObserver(ROOT, true, observer);
    }

    public static boolean isAvailable(Context context) {
        PackageManager manager = context.getPackageManager();
        ProviderInfo provider = manager.resolveContentProvider(ROOT.getAuthority(), 0);
        if (provider == null || !PACKAGE.equals(provider.packageName) || !provider.exported) return false;
        byte[] digest = new byte[CERT_SHA256.length() / 2];
        for (int i = 0; i < digest.length; i++) {
            digest[i] = (byte) Integer.parseInt(CERT_SHA256.substring(i * 2, i * 2 + 2), 16);
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return manager.hasSigningCertificate(PACKAGE, digest, PackageManager.CERT_INPUT_SHA256);
        }
        try {
            android.content.pm.PackageInfo info = manager.getPackageInfo(PACKAGE, PackageManager.GET_SIGNATURES);
            if (info.signatures == null || info.signatures.length != 1) return false;
            byte[] actual = java.security.MessageDigest.getInstance("SHA-256")
                    .digest(info.signatures[0].toByteArray());
            return java.security.MessageDigest.isEqual(actual, digest);
        } catch (PackageManager.NameNotFoundException | java.security.NoSuchAlgorithmException error) {
            return false;
        }
    }

    public static Intent pickIcon(String pkg, String component) {
        return new Intent(PACKAGE + ".action.PICK_ICON").setPackage(PACKAGE)
                .putExtra(EXTRA + "PROTOCOL", 1)
                .putExtra(EXTRA + "PACKAGE", pkg)
                .putExtra(EXTRA + "ACTIVITY", component);
    }

    public static Intent launchIntent(Context context) {
        if (!isAvailable(context)) return null;
        return context.getPackageManager().getLaunchIntentForPackage(PACKAGE);
    }

    public static boolean isProviderReachable(Context context) {
        android.content.ContentProviderClient client;
        try {
            client = context.getContentResolver().acquireContentProviderClient(ROOT);
        } catch (SecurityException error) {
            return false;
        }
        if (client == null) return false;
        client.release();
        return true;
    }

    public static boolean isValidSourceId(String sourceId) {
        return sourceId != null && sourceId.matches("[A-Za-z0-9._~-]{1,255}")
                && !".".equals(sourceId) && !sourceId.contains("..");
    }

    public static String pickedSource(Intent result, String pkg, String component) {
        if (result == null || result.getIntExtra(EXTRA + "PROTOCOL", 0) != 1
                || !pkg.equals(result.getStringExtra(EXTRA + "PACKAGE"))
                || !android.text.TextUtils.equals(component, result.getStringExtra(EXTRA + "ACTIVITY"))) {
            return null;
        }
        String token = result.getStringExtra(EXTRA + "SOURCE_TOKEN");
        if (token == null || !token.startsWith("resource:")) return null;
        String sourceId = token.substring("resource:".length());
        return isValidSourceId(sourceId) ? sourceId : null;
    }

    public static java.util.Map<String, String> resolve(Context context,
            java.util.ArrayList<String> keys, boolean targets, String[] revision, java.util.List<String> revokedSources) {
        if (android.os.Looper.myLooper() == android.os.Looper.getMainLooper()) return null;
        java.util.Map<String, String> result = new java.util.LinkedHashMap<>();
        try {
            for (int offset = 0; offset < Math.max(1, keys.size()); offset += 100) {
                java.util.ArrayList<String> batch = new java.util.ArrayList<>(
                        keys.subList(offset, Math.min(offset + 100, keys.size())));
                android.os.Bundle args = new android.os.Bundle();
                args.putStringArrayList(targets ? "targets" : "sources", batch);
                android.os.Bundle reply = context.getContentResolver().call(ROOT, "resolve", null, args);
                if (reply == null) return null;
                String version = reply.getString("revision");
                if (version == null || (revision[0] != null && !revision[0].equals(version))) return null;
                revision[0] = version;
                java.util.ArrayList<String> values = reply.getStringArrayList(targets ? "matches" : "digests");
                if (values == null || values.size() != batch.size()) return null;
                for (int index = 0; index < batch.size(); index++) result.put(batch.get(index), values.get(index));
                java.util.ArrayList<String> revokedList = reply.getStringArrayList("revoked");
                if (revokedList == null) return null;
                java.util.Collections.sort(revokedList);
                if (revision[1] != null && !revokedSources.equals(revokedList)) return null;
                if (revision[1] == null) {
                    revokedSources.addAll(revokedList);
                    revision[1] = version;
                }
            }
            return result;
        } catch (RuntimeException error) {
            return null;
        }
    }

    public static java.util.List<String> candidates(Context context, String pkg, String component) {
        if (android.os.Looper.myLooper() == android.os.Looper.getMainLooper() || !isAvailable(context)) return null;
        android.os.Bundle args = new android.os.Bundle();
        args.putString("candidateTarget", android.text.TextUtils.isEmpty(component) ? pkg : pkg + "/" + component);
        try {
            android.os.Bundle reply = context.getContentResolver().call(ROOT, "resolve", null, args);
            java.util.ArrayList<String> candidates = reply == null ? null : reply.getStringArrayList("candidates");
            if (candidates == null) return null;
            java.util.LinkedHashSet<String> valid = new java.util.LinkedHashSet<>();
            for (String source : candidates) {
                if (isValidSourceId(source)) valid.add(source);
            }
            return new java.util.ArrayList<>(valid);
        } catch (RuntimeException error) {
            return null;
        }
    }

    static byte[] readOriginal(Context context, String sourceId) throws IOException {
        if (!isAvailable(context)) return null;
        Uri uri = ROOT.buildUpon().appendPath("original").appendPath(sourceId).build();
        try (InputStream stream = context.getContentResolver().openInputStream(uri)) {
            if (stream == null) return null;
            ByteArrayOutputStream bytes = new ByteArrayOutputStream();
            byte[] buffer = new byte[8192];
            int count;
            while ((count = stream.read(buffer)) != -1) {
                if (bytes.size() + count > 512 * 1024) throw new IOException("Icon exceeds size limit");
                bytes.write(buffer, 0, count);
            }
            return bytes.toByteArray();
        }
    }

    // Shared improved-icon choice sync.  IconHub keeps one default per package; the Launcher keeps
    // its per-component resource:<sourceId> record (backed up with the desktop).  A local choice is
    // queued here first so that an unreachable IconHub can never overwrite a newer Launcher choice.
    private static final String SYNC_PREFS = "iconhub_choice_sync";
    private static final String PENDING = "pending.";
    private static final String SYNCED = "synced.";
    private static final String INSTALL_TIME = "companion_install_time";
    private static final String RECOVERY_CHOICES = "companion_recovery_choices";
    private static final Object SYNC_LOCK = new Object();
    private static final Object PUSH_LOCK = new Object();

    /** Queue a Launcher-side improved choice (blank clears) and push it in the background. */
    public static void setPreferredIcon(final Context context, final String pkg, final String sourceId) {
        setPreferredIcon(context, pkg, null, sourceId);
    }

    public static void setPreferredIcon(final Context context, final String pkg,
                                        final String component, final String sourceId) {
        setPreferredIcon(context, pkg, component, sourceId, null);
    }

    public static void setPreferredIcon(final Context context, final String pkg,
                                        final String component, final String sourceId,
                                        final Runnable onAcknowledged) {
        if (context == null || pkg == null || pkg.isEmpty()) return;
        final String target = android.text.TextUtils.isEmpty(component) ? pkg : pkg + "/" + component;
        final Context app = context.getApplicationContext() == null ? context : context.getApplicationContext();
        synchronized (SYNC_LOCK) {
            app.getSharedPreferences(SYNC_PREFS, 0).edit()
                    .putString(PENDING + target, sourceId == null ? "" : sourceId).commit();
        }
        new Thread(new Runnable() {
            @Override
            public void run() {
                flushPendingChoices(app);
                android.content.SharedPreferences prefs = app.getSharedPreferences(SYNC_PREFS, 0);
                String requested = sourceId == null ? "" : sourceId;
                boolean acknowledged = !prefs.contains(PENDING + target)
                        && requested.equals(prefs.getString(SYNCED + target, ""));
                android.util.Log.i("IconHubSource", "ICONHUB_CHOICE_ACK target=" + target
                        + " source=" + requested + " accepted=" + acknowledged);
                if (acknowledged && onAcknowledged != null) onAcknowledged.run();
            }
        }, "IconHubChoicePush").start();
    }

    public static void queueRestoredChoices(final Context context, org.json.JSONObject choices) {
        synchronized (SYNC_LOCK) {
            android.content.SharedPreferences.Editor editor = context.getSharedPreferences(SYNC_PREFS, 0).edit();
            for (java.util.Iterator<String> keys = choices.keys(); keys.hasNext();) {
                String target = keys.next();
                String source = choices.optString(target, null);
                if (!target.matches("[A-Za-z0-9_.]{1,255}/[A-Za-z0-9_.$]{1,512}")
                        || source == null || (!source.isEmpty() && !isValidSourceId(source))) continue;
                editor.putString(PENDING + target, source);
            }
            if (!editor.commit()) throw new IllegalStateException("Cannot queue restored icon choices");
        }
        new Thread(new Runnable() {
            @Override public void run() {
                flushPendingChoices(context.getApplicationContext());
            }
        }, "IconHubRestorePush").start();
    }

    /** Push queued choices. Returns the packages that are still pending. Must not run on main. */
    public static java.util.Set<String> flushPendingChoices(Context context) {
        synchronized (PUSH_LOCK) {
            return flushChoicesSerially(context);
        }
    }

    private static java.util.Set<String> flushChoicesSerially(Context context) {
        java.util.Set<String> left = new java.util.HashSet<>();
        if (context == null) return left;
        android.content.SharedPreferences prefs = context.getSharedPreferences(SYNC_PREFS, 0);
        java.util.Map<String, ?> all;
        synchronized (SYNC_LOCK) {
            all = new java.util.HashMap<>(prefs.getAll());
        }
        boolean available = isAvailable(context);
        for (java.util.Map.Entry<String, ?> entry : all.entrySet()) {
            if (!entry.getKey().startsWith(PENDING)) continue;
            String pkg = entry.getKey().substring(PENDING.length());
            String source = String.valueOf(entry.getValue());
            boolean ok = false;
            if (available) {
                try {
                    android.os.Bundle args = new android.os.Bundle();
                    int split = pkg.indexOf('/');
                    String packageName = split < 0 ? pkg : pkg.substring(0, split);
                    args.putString("package", packageName);
                    if (split >= 0) {
                        android.os.Bundle caps = context.getContentResolver().call(ROOT, "capabilities", null, null);
                        if (caps == null || caps.getInt("version") < 4) {
                            left.add(pkg);
                            continue;
                        }
                        args.putString("component", pkg.substring(split + 1));
                    }
                    args.putString("sourceId", source);
                    android.os.Bundle reply = context.getContentResolver().call(ROOT, "setPreferredIcon", packageName, args);
                    ok = reply != null && reply.getBoolean("success", false);
                } catch (Throwable ignored) {
                }
            }
            synchronized (SYNC_LOCK) {
                // Only clear the queue entry if it was not replaced by a newer choice meanwhile.
                if (ok && source.equals(prefs.getString(PENDING + pkg, null))) {
                    android.content.SharedPreferences.Editor editor = prefs.edit().remove(PENDING + pkg);
                    if (source.isEmpty()) editor.remove(SYNCED + pkg); else editor.putString(SYNCED + pkg, source);
                    editor.commit();
                } else {
                    left.add(pkg);
                }
            }
        }
        return left;
    }

    public static boolean hasPendingChoice(Context context, String pkg) {
        return context.getSharedPreferences(SYNC_PREFS, 0).contains(PENDING + pkg);
    }

    public static String lastSyncedChoice(Context context, String pkg) {
        return context.getSharedPreferences(SYNC_PREFS, 0).getString(SYNCED + pkg, "");
    }

    public static void markSyncedChoice(Context context, String pkg, String sourceId) {
        synchronized (SYNC_LOCK) {
            android.content.SharedPreferences.Editor editor = context.getSharedPreferences(SYNC_PREFS, 0).edit();
            if (sourceId == null || sourceId.isEmpty()) editor.remove(SYNCED + pkg);
            else editor.putString(SYNCED + pkg, sourceId);
            editor.commit();
        }
    }

    /** Snapshot shared preferences and recover only missing choices on a new installation. */
    public static void reconcileReinstalledChoices(Context context, java.util.Set<String> targets) {
        synchronized (PUSH_LOCK) {
            android.content.SharedPreferences prefs = context.getSharedPreferences(SYNC_PREFS, 0);
            long installed = companionInstallTime(context);
            if (installed == 0) return;
            long previous = prefs.getLong(INSTALL_TIME, 0);
            String saved = prefs.getString(RECOVERY_CHOICES, "{}");
            try {
                java.util.Map<String, String> snapshot = readRecoveryChoices(saved);
                if (previous != 0 && installed != previous && !snapshot.isEmpty()) {
                    android.os.Bundle capabilities = context.getContentResolver().call(ROOT, "capabilities", null, null);
                    if (capabilities == null) return;
                    java.util.Map<String, String> missing = new java.util.LinkedHashMap<>();
                    if (capabilities.getInt("version") >= 5) {
                        for (String target : targets) {
                            String source = snapshot.get(target);
                            if (isValidSourceId(source) && !hasPendingChoice(context, target)) {
                                missing.put(target, source);
                            }
                        }
                    }
                    if (!restoreMissingPreferences(context, missing)) return;
                }
                java.util.Map<String, String> current = queryPreferredIcons(context, new java.util.ArrayList<>(targets));
                if (current == null || installed != companionInstallTime(context)) return;
                current.values().removeAll(java.util.Collections.singleton(""));
                if (previous == installed && current.equals(snapshot)) return;
                prefs.edit().putLong(INSTALL_TIME, installed)
                        .putString(RECOVERY_CHOICES, new org.json.JSONObject(current).toString()).apply();
            } catch (org.json.JSONException | RuntimeException error) {
                android.util.Log.w("IconHubSource", "ICONHUB_CHOICE_RECOVERY_FAILED", error);
            }
        }
    }

    private static java.util.Map<String, String> readRecoveryChoices(String saved) throws org.json.JSONException {
        org.json.JSONObject object = new org.json.JSONObject(saved);
        java.util.Map<String, String> choices = new java.util.HashMap<>();
        for (java.util.Iterator<String> keys = object.keys(); keys.hasNext();) {
            String key = keys.next();
            choices.put(key, object.getString(key));
        }
        return choices;
    }

    private static long companionInstallTime(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(PACKAGE, 0).firstInstallTime;
        } catch (PackageManager.NameNotFoundException error) {
            return 0;
        }
    }

    private static boolean restoreMissingPreferences(Context context, java.util.Map<String, String> choices) {
        java.util.List<String> targets = new java.util.ArrayList<>(choices.keySet());
        for (int offset = 0; offset < targets.size(); offset += 200) {
            java.util.ArrayList<String> batch = new java.util.ArrayList<>(
                    targets.subList(offset, Math.min(offset + 200, targets.size())));
            java.util.ArrayList<String> sources = new java.util.ArrayList<>(batch.size());
            for (String target : batch) sources.add(choices.get(target));
            android.os.Bundle args = new android.os.Bundle();
            args.putStringArrayList("targets", batch);
            args.putStringArrayList("sources", sources);
            android.os.Bundle reply = context.getContentResolver().call(ROOT, "restoreMissingPreferences", null, args);
            if (reply == null || !reply.getBoolean("success")) return false;
        }
        return true;
    }

    /**
     * Read IconHub's shared defaults for packages. Returns null when the installed IconHub does not
     * support the protocol (older build) or is unreachable; a blank value means "no choice".
     */
    public static java.util.Map<String, String> queryPreferredIcons(Context context, java.util.List<String> packages) {
        if (context == null || packages == null || !isAvailable(context)) return null;
        if (android.os.Looper.myLooper() == android.os.Looper.getMainLooper()) return null;
        java.util.Map<String, String> result = new java.util.LinkedHashMap<>();
        try {
            android.os.Bundle caps = context.getContentResolver().call(ROOT, "capabilities", null, null);
            if (caps == null || caps.getInt("version", 0) < 4) return null;
            for (int offset = 0; offset < packages.size(); offset += 200) {
                java.util.ArrayList<String> batch = new java.util.ArrayList<>(
                        packages.subList(offset, Math.min(offset + 200, packages.size())));
                android.os.Bundle args = new android.os.Bundle();
                args.putStringArrayList("packages", batch);
                android.os.Bundle reply = context.getContentResolver().call(ROOT, "preferences", null, args);
                java.util.ArrayList<String> values = reply == null ? null : reply.getStringArrayList("preferred");
                if (values == null || values.size() != batch.size()) return null;
                for (int i = 0; i < batch.size(); i++) {
                    String value = values.get(i);
                    result.put(batch.get(i), value == null || !isValidSourceId(value) ? "" : value);
                }
            }
            return result;
        } catch (Throwable error) {
            return null;
        }
    }
}
