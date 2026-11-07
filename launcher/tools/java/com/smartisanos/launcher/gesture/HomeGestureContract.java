package com.smartisanos.launcher.gesture;

import android.content.ComponentName;
import android.content.Intent;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.os.RemoteException;
import android.os.UserHandle;

/** Protocol values only. Lifecycle and the original scene remain owned by LauncherHomeCompat. */
final class HomeGestureContract {
    static final String EXTRA = "gesture_nav_contract_v1";
    static final String POSITION = "gesture_nav_contract_icon_position";
    static final String CALLBACK = "android.intent.extra.REMOTE_CALLBACK";
    static final long DEADLINE_MS = 1000;

    private HomeGestureContract() { }

    static final class Request {
        final ComponentName component;
        final UserHandle user;
        final Message callback;
        final long received;
        long id;

        Request(ComponentName component, UserHandle user, Message callback, long now) {
            this.component = component;
            this.user = user;
            this.callback = Message.obtain(callback);
            received = now;
        }

        boolean expired(long now) { return now < received || now - received >= DEADLINE_MS; }

        boolean sameToken(Request other) {
            // A shared Messenger alone is not a request identity. AOSP uses a token in obj.
            return other != null && callback.obj != null
                    && callback.obj.equals(other.callback.obj)
                    && callback.replyTo.equals(other.callback.replyTo)
                    && callback.what == other.callback.what
                    && callback.arg1 == other.callback.arg1 && callback.arg2 == other.callback.arg2
                    && component.equals(other.component) && user.equals(other.user);
        }
    }

    /** Removes only our extra, including disabled or malformed contracts. */
    static Request consume(Intent intent, boolean enabled, long now) {
        if (Build.VERSION.SDK_INT < 30 || intent == null
                || !Intent.ACTION_MAIN.equals(intent.getAction())
                || !intent.hasCategory(Intent.CATEGORY_HOME)) return null;
        try {
            if (!intent.hasExtra(EXTRA)) return null;
            Object value;
            try { value = intent.getParcelableExtra(EXTRA); }
            finally { intent.removeExtra(EXTRA); }
            if (!enabled || !(value instanceof Bundle)) return null;
            Bundle bundle = (Bundle) value;
            if (!bundle.getBoolean("gesture_nav_contract_enable", true)) return null;
            Object component = bundle.getParcelable(Intent.EXTRA_COMPONENT_NAME);
            Object user = bundle.getParcelable(Intent.EXTRA_USER);
            Object callback = bundle.getParcelable(CALLBACK);
            if (!(component instanceof ComponentName) || !(user instanceof UserHandle)
                    || !(callback instanceof Message) || ((Message) callback).replyTo == null) return null;
            return new Request((ComponentName) component, (UserHandle) user, (Message) callback, now);
        } catch (android.os.BadParcelableException | ClassCastException | IllegalArgumentException error) {
            // No changes to the HOME action, flags, categories or original lifecycle.
            return null;
        }
    }

    /** Bounded one-shot state. No Activity, View, Bitmap, worker or Binder owner is created here. */
    static final class State {
        private long sequence;
        private Request pending;
        private Request recent;
        private boolean claimed;

        synchronized Request start(Request request, long now) {
            pending = null;
            claimed = false;
            if (recent != null && recent.expired(now)) recent = null;
            if (request == null || request.expired(now) || request.sameToken(recent)) return null;
            request.id = ++sequence;
            recent = pending = request;
            return request;
        }

        synchronized Request claim(long now) {
            expire(now);
            if (pending == null || claimed) return null;
            claimed = true;
            return pending;
        }

        synchronized boolean current(Request request, long now) {
            expire(now);
            return request != null && pending == request;
        }

        synchronized boolean finish(Request request, long now) {
            if (!current(request, now)) return false;
            pending = null;
            return true;
        }

        synchronized void cancel() { pending = null; claimed = false; }

        synchronized void clear() { cancel(); recent = null; }

        synchronized void expire(long now) {
            if (pending != null && pending.expired(now)) cancel();
            if (recent != null && recent.expired(now)) recent = null;
        }
    }

    static boolean validPosition(RectF rect) {
        return rect != null && finite(rect.left) && finite(rect.top)
                && finite(rect.right) && finite(rect.bottom)
                && rect.left >= 0 && rect.top >= 0
                && rect.right > rect.left && rect.bottom > rect.top;
    }

    private static boolean finite(float value) {
        return !Float.isNaN(value) && !Float.isInfinite(value);
    }

    private static final String PROBE_TAG = "HomeFinishProbe";
    private static android.os.Messenger finishMessenger;
    private static android.os.Handler finishHandler;
    private static final java.util.Map<android.os.ParcelUuid, long[]> FINISHES =
            new java.util.LinkedHashMap<android.os.ParcelUuid, long[]>();

    /** Opt-in observation only: no Activity references, Surface or timing changes to the reply. */
    private static void appendFinishProbe(Bundle data, final Request request) {
        if (!android.util.Log.isLoggable(PROBE_TAG, android.util.Log.DEBUG)) return;
        if (finishHandler == null) {
            finishHandler = new android.os.Handler(android.os.Looper.getMainLooper()) {
                @Override public void handleMessage(Message message) {
                    long[] entry = FINISHES.remove(message.obj);
                    if (entry != null) android.util.Log.i(PROBE_TAG,
                            "FINISH_ACK requestId=" + entry[0]
                            + " after_send_ms=" + (android.os.SystemClock.uptimeMillis()-entry[1])
                            + " elapsed_ns=" + android.os.SystemClock.elapsedRealtimeNanos()
                            + " accept_traversed=true target_applied=unknown");
                }
            };
            finishMessenger = new android.os.Messenger(finishHandler);
        }
        if (FINISHES.size() >= 4) FINISHES.remove(FINISHES.keySet().iterator().next());
        final android.os.ParcelUuid token = new android.os.ParcelUuid(java.util.UUID.randomUUID());
        FINISHES.put(token, new long[] {request.id, android.os.SystemClock.uptimeMillis()});
        Message finish = Message.obtain(); finish.obj = token; finish.replyTo = finishMessenger;
        data.putParcelable("gesture_nav_contract_finish_callback", finish);
        finishHandler.postAtTime(new Runnable() {
            @Override public void run() {
                long[] entry = FINISHES.remove(token);
                if (entry != null) android.util.Log.i(PROBE_TAG,
                        "FINISH_ACK_TIMEOUT requestId=" + entry[0] + " outcome=unknown");
            }
        }, android.os.SystemClock.uptimeMillis()+3000);
        android.util.Log.i(PROBE_TAG, "FINISH_OFFER requestId=" + request.id
                + " elapsed_ns=" + android.os.SystemClock.elapsedRealtimeNanos());
    }

    static void send(Request request, RectF position) throws RemoteException {
        if (!validPosition(position)) throw new IllegalArgumentException("Invalid icon bounds");
        Bundle data = new Bundle();
        data.putParcelable(POSITION, new RectF(position));
        appendFinishProbe(data, request);
        Message reply = Message.obtain();
        reply.copyFrom(request.callback);
        reply.setData(data);
        request.callback.replyTo.send(reply);
    }
}
