package com.smartisanos.launcher;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextThemeWrapper;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

/** One Android O+ PinItemRequest is handled by one short-lived activity. */
public final class PinShortcutConfirmActivity extends Activity {
    private static final String TAG = "ShortcutCompat";
    private static final String ACTION_CONFIRM_PIN_SHORTCUT = "android.content.pm.action.CONFIRM_PIN_SHORTCUT";
    private static final long[] VERIFY_DELAYS_MS = {0L, 100L, 250L, 500L, 1000L, 2000L};
    private LauncherApps.PinItemRequest request;
    private ShortcutInfo shortcut;
    private AlertDialog dialog;
    private boolean requestHandled;
    private int verifyAttempt;

    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        MaintainedLauncherSettingsHost.applyLauncherNavigationBarSetting(this);
        Log.i(TAG, identity("PIN_ACTIVITY_CREATED requestValid=unknown"));
        extractRequest(getIntent());
    }

    private void extractRequest(Intent intent) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O || !ACTION_CONFIRM_PIN_SHORTCUT.equals(intent.getAction())) {
            Log.w(TAG, identity("PIN_REQUEST_INVALID reason=unsupported_or_wrong_action requestValid=false"));
            finishWithLog();
            return;
        }
        LauncherApps apps = (LauncherApps) getSystemService(Context.LAUNCHER_APPS_SERVICE);
        request = apps == null ? null : apps.getPinItemRequest(intent);
        if (request == null || !request.isValid()
                || request.getRequestType() != LauncherApps.PinItemRequest.REQUEST_TYPE_SHORTCUT
                || request.getShortcutInfo() == null) {
            Log.w(TAG, identity("PIN_REQUEST_INVALID requestFound=" + (request != null) + " requestValid=false"));
            finishWithLog();
            return;
        }
        shortcut = request.getShortcutInfo();
        if (isEmpty(shortcut.getPackage()) || isEmpty(shortcut.getId())) {
            Log.w(TAG, identity("PIN_REQUEST_INVALID reason=missing_identity requestValid=false"));
            finishWithLog();
            return;
        }
        Log.i(TAG, identity("PIN_REQUEST_EXTRACTED requestValid=true"));
        showConfirmation();
    }

    private void showConfirmation() {
        try {
            String title = labelFor(shortcut);
            String source = sourceLabel(shortcut.getPackage());
            String messageFormat = getStringByName("pin_shortcut_message", "Add %s from %s to the desktop?");
            String message = String.format(messageFormat, title, source);
            Context themed = new ContextThemeWrapper(this, 0x103012b);
            dialog = new AlertDialog.Builder(themed)
                    .setTitle(resourceId("uninstall_app_dialog_title"))
                    .setMessage(message)
                    .setPositiveButton(resourceId("ok"), new DialogInterface.OnClickListener() {
                        @Override public void onClick(DialogInterface value, int which) { confirmCurrent(); }
                    })
                    .setNegativeButton(resourceId("cancel"), new DialogInterface.OnClickListener() {
                        @Override public void onClick(DialogInterface value, int which) { cancelCurrent(); }
                    })
                    .create();
            dialog.setOnCancelListener(new DialogInterface.OnCancelListener() {
                @Override public void onCancel(DialogInterface value) { cancelCurrent(); }
            });
            MaintainedLauncherSettingsHost.applyNavigationBarToWindow(this, dialog.getWindow());
            dialog.show();
            MaintainedLauncherSettingsHost.applyNavigationBarToWindow(this, dialog.getWindow());
            Log.i(TAG, identity("PIN_DIALOG_SHOWN requestValid=true"));
        } catch (RuntimeException e) {
            Log.e(TAG, identity("PIN_COMMIT_FAILED stage=dialog type=" + e.getClass().getSimpleName()), e);
            finishWithLog();
        }
    }

    private synchronized void confirmCurrent() {
        if (requestHandled || request == null || shortcut == null) {
            Log.w(TAG, identity("PIN_COMMIT_FAILED stage=duplicate requestValid=false"));
            return;
        }
        requestHandled = true;
        long serial = ShortcutCompatBridge.userSerial(this, shortcut.getUserHandle());
        Log.i(TAG, identity("PIN_USER_CONFIRMED userSerial=" + serial + " requestValid=true"));
        Object item = ShortcutCompatBridge.createItem(this, shortcut, serial);
        if (item == null) {
            Log.e(TAG, identity("PIN_COMMIT_FAILED stage=item_create requestValid=true"));
            finishWithLog();
            return;
        }
        Log.i(TAG, identity("PIN_ITEM_CREATED userSerial=" + serial + " requestValid=true"));
        try {
            Log.i(TAG, identity("PIN_ACCEPT_BEGIN userSerial=" + serial + " requestValid=true"));
            if (!request.isValid() || !request.accept()) {
                Log.w(TAG, identity("PIN_COMMIT_FAILED stage=accept requestValid=false"));
                finishWithLog();
                return;
            }
            Log.i(TAG, identity("PIN_ACCEPT_SUCCESS userSerial=" + serial + " requestValid=true"));
            Log.i(TAG, identity("PIN_DATABASE_DISPATCH_BEGIN userSerial=" + serial + " requestValid=true"));
            boolean dispatched = ShortcutCompatBridge.dispatchInstall(item, this);
            if (!dispatched) {
                rollbackAndFinish(serial, "dispatch");
                return;
            }
            Log.i(TAG, identity("PIN_DATABASE_DISPATCH_RETURNED userSerial=" + serial + " requestValid=true"));
            verifyCommit(serial);
        } catch (RuntimeException e) {
            Log.e(TAG, identity("PIN_COMMIT_FAILED stage=accept_or_dispatch type=" + e.getClass().getSimpleName()), e);
            rollbackAndFinish(serial, "exception");
        }
    }

    private void verifyCommit(final long serial) {
        if (shortcut == null) return;
        if (ShortcutCompatBridge.isStored(this, shortcut, serial)) {
            Log.i(TAG, identity("PIN_DATABASE_ROW_FOUND userSerial=" + serial + " requestValid=true"));
            Log.i(TAG, identity("PIN_COMMIT_SUCCESS userSerial=" + serial + " requestValid=true"));
            finishWithLog();
            return;
        }
        if (++verifyAttempt >= VERIFY_DELAYS_MS.length) {
            rollbackAndFinish(serial, "database_row_missing");
            return;
        }
        getWindow().getDecorView().postDelayed(new Runnable() {
            @Override public void run() { verifyCommit(serial); }
        }, VERIFY_DELAYS_MS[verifyAttempt]);
    }

    private void rollbackAndFinish(long serial, String stage) {
        Log.e(TAG, identity("PIN_COMMIT_FAILED stage=" + stage + " userSerial=" + serial + " requestValid=true"));
        if (shortcut != null) {
            ShortcutCompatBridge.unpinShortcut(this, shortcut.getPackage(), shortcut.getId(), shortcut.getUserHandle(), serial);
            Log.i(TAG, identity("PIN_ROLLBACK_UNPIN_SUCCESS userSerial=" + serial + " requestValid=true"));
        }
        finishWithLog();
    }

    private void cancelCurrent() {
        if (request == null || requestHandled) return;
        Log.i(TAG, identity("PIN_COMMIT_FAILED stage=cancel requestValid=true"));
        finishWithLog();
    }

    @Override public void onBackPressed() { cancelCurrent(); }

    @Override protected void onDestroy() {
        if (dialog != null) dialog.dismiss();
        dialog = null;
        super.onDestroy();
    }

    private void finishWithLog() {
        Log.i(TAG, identity("PIN_ACTIVITY_FINISHED activityFinishing=true"));
        finish();
    }

    private String identity(String event) {
        String packageName = shortcut == null ? "unknown" : shortcut.getPackage();
        String shortcutId = shortcut == null ? "unknown" : shortcut.getId();
        long serial = shortcut == null ? -1L : ShortcutCompatBridge.userSerial(this, shortcut.getUserHandle());
        return event + " packageName=" + packageName + " shortcutId=" + shortcutId
                + " userId=" + (shortcut == null ? -1 : ShortcutCompatBridge.userIdentifier(shortcut.getUserHandle()))
                + " userSerial=" + serial;
    }

    private int resourceId(String name) { return getResources().getIdentifier(name, "string", getPackageName()); }
    private String getStringByName(String name, String fallback) {
        int id = resourceId(name);
        return id == 0 ? fallback : getString(id);
    }
    private String sourceLabel(String packageName) {
        try { return String.valueOf(getPackageManager().getApplicationLabel(getPackageManager().getApplicationInfo(packageName, 0))); }
        catch (Exception ignored) { return packageName; }
    }
    private static String labelFor(ShortcutInfo value) {
        CharSequence label = value.getShortLabel();
        if (label == null || label.length() == 0) label = value.getLongLabel();
        return label == null || label.length() == 0 ? value.getId() : label.toString();
    }
    private static boolean isEmpty(String value) { return value == null || value.length() == 0; }
}
