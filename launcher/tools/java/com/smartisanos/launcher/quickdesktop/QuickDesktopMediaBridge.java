package com.smartisanos.launcher.quickdesktop;

import android.content.ComponentName;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.KeyEvent;

import java.util.List;

/** Standard Android MediaSession bridge used by the original-style fixed music card. */
final class QuickDesktopMediaBridge {
    private static final String LISTENER_CLASS =
            "com.smartisanos.launcher.badge.SmartisanBadgeListenerService";
    private static Boolean fallbackPlayingOverride;
    private static long fallbackPlayingOverrideUntil;

    static final class Snapshot {
        final String title;
        final String artist;
        final Bitmap artwork;
        final boolean playing;
        final boolean sessionAvailable;
        final boolean notificationAccess;

        Snapshot(String title, String artist, Bitmap artwork, boolean playing,
                boolean sessionAvailable, boolean notificationAccess) {
            this.title = title;
            this.artist = artist;
            this.artwork = artwork;
            this.playing = playing;
            this.sessionAvailable = sessionAvailable;
            this.notificationAccess = notificationAccess;
        }
    }

    private QuickDesktopMediaBridge() {
    }

    static Snapshot read(Context context) {
        boolean access = hasNotificationAccess(context);
        MediaController controller = access ? findController(context) : null;
        if (controller == null) {
            AudioManager audio = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
            boolean playing = audio != null && audio.isMusicActive();
            if (fallbackPlayingOverride != null
                    && android.os.SystemClock.uptimeMillis() < fallbackPlayingOverrideUntil) {
                playing = fallbackPlayingOverride.booleanValue();
            }
            return new Snapshot("Smartisan 音乐",
                    access ? "开启音乐后可在此控制" : "开启通知使用权以显示歌曲信息",
                    null, playing, false, access);
        }
        MediaMetadata metadata = controller.getMetadata();
        PlaybackState state = controller.getPlaybackState();
        String title = metadataText(metadata, MediaMetadata.METADATA_KEY_TITLE,
                MediaMetadata.METADATA_KEY_DISPLAY_TITLE);
        String artist = metadataText(metadata, MediaMetadata.METADATA_KEY_ARTIST,
                MediaMetadata.METADATA_KEY_ALBUM_ARTIST);
        Bitmap artwork = metadata == null ? null
                : firstBitmap(metadata, MediaMetadata.METADATA_KEY_ART,
                        MediaMetadata.METADATA_KEY_ALBUM_ART,
                        MediaMetadata.METADATA_KEY_DISPLAY_ICON);
        boolean playing = state != null && (state.getState() == PlaybackState.STATE_PLAYING
                || state.getState() == PlaybackState.STATE_BUFFERING
                || state.getState() == PlaybackState.STATE_CONNECTING);
        return new Snapshot(TextUtils.isEmpty(title) ? "正在播放" : title,
                TextUtils.isEmpty(artist) ? controller.getPackageName() : artist,
                artwork, playing, true, true);
    }

    static boolean togglePlayback(Context context) {
        MediaController controller = hasNotificationAccess(context) ? findController(context) : null;
        if (controller != null) {
            PlaybackState state = controller.getPlaybackState();
            boolean playing = state != null && (state.getState() == PlaybackState.STATE_PLAYING
                    || state.getState() == PlaybackState.STATE_BUFFERING
                    || state.getState() == PlaybackState.STATE_CONNECTING);
            if (playing) {
                controller.getTransportControls().pause();
            } else {
                controller.getTransportControls().play();
            }
            return true;
        }
        // Public cross-ROM fallback: media-key dispatch still controls the system's selected
        // session even when notification access has not been granted, but metadata stays hidden.
        AudioManager audio = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
        if (audio == null) return false;
        boolean expectedPlaying = !audio.isMusicActive();
        long now = android.os.SystemClock.uptimeMillis();
        audio.dispatchMediaKeyEvent(new KeyEvent(now, now, KeyEvent.ACTION_DOWN,
                KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE, 0));
        audio.dispatchMediaKeyEvent(new KeyEvent(now, now, KeyEvent.ACTION_UP,
                KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE, 0));
        fallbackPlayingOverride = Boolean.valueOf(expectedPlaying);
        fallbackPlayingOverrideUntil = now + 2500L;
        return true;
    }

    static boolean skipPrevious(Context context) {
        MediaController controller = hasNotificationAccess(context) ? findController(context) : null;
        if (controller != null) {
            controller.getTransportControls().skipToPrevious();
            return true;
        }
        return dispatchMediaKey(context, KeyEvent.KEYCODE_MEDIA_PREVIOUS);
    }

    static boolean skipNext(Context context) {
        MediaController controller = hasNotificationAccess(context) ? findController(context) : null;
        if (controller != null) {
            controller.getTransportControls().skipToNext();
            return true;
        }
        return dispatchMediaKey(context, KeyEvent.KEYCODE_MEDIA_NEXT);
    }

    private static boolean dispatchMediaKey(Context context, int keyCode) {
        AudioManager audio = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
        if (audio == null) return false;
        long now = android.os.SystemClock.uptimeMillis();
        audio.dispatchMediaKeyEvent(new KeyEvent(now, now, KeyEvent.ACTION_DOWN, keyCode, 0));
        audio.dispatchMediaKeyEvent(new KeyEvent(now, now, KeyEvent.ACTION_UP, keyCode, 0));
        return true;
    }

    private static MediaController findController(Context context) {
        try {
            MediaSessionManager manager = (MediaSessionManager) context.getSystemService(
                    Context.MEDIA_SESSION_SERVICE);
            if (manager == null) return null;
            ComponentName listener = new ComponentName(context, LISTENER_CLASS);
            List<MediaController> controllers = manager.getActiveSessions(listener);
            if (controllers == null || controllers.isEmpty()) return null;
            String selectedPackage = QuickDesktopController.getSelectedMusicPackage(context);
            if (!TextUtils.isEmpty(selectedPackage)) {
                for (MediaController controller : controllers) {
                    if (controller != null && selectedPackage.equals(controller.getPackageName())) {
                        return controller;
                    }
                }
            }
            MediaController fallback = null;
            for (MediaController controller : controllers) {
                if (controller == null) continue;
                if (fallback == null && controller.getMetadata() != null) fallback = controller;
                PlaybackState state = controller.getPlaybackState();
                if (state != null && (state.getState() == PlaybackState.STATE_PLAYING
                        || state.getState() == PlaybackState.STATE_BUFFERING
                        || state.getState() == PlaybackState.STATE_CONNECTING)) {
                    return controller;
                }
            }
            return fallback != null ? fallback : controllers.get(0);
        } catch (SecurityException ignored) {
            return null;
        }
    }

    private static boolean hasNotificationAccess(Context context) {
        if (context == null) return false;
        String enabled = Settings.Secure.getString(context.getContentResolver(),
                "enabled_notification_listeners");
        if (TextUtils.isEmpty(enabled)) return false;
        String expected = context.getPackageName() + "/" + LISTENER_CLASS;
        String shortExpected = context.getPackageName() + "/.badge.SmartisanBadgeListenerService";
        return enabled.contains(expected) || enabled.contains(shortExpected);
    }

    private static String metadataText(MediaMetadata metadata, String first, String second) {
        if (metadata == null) return null;
        String value = metadata.getString(first);
        return TextUtils.isEmpty(value) ? metadata.getString(second) : value;
    }

    private static Bitmap firstBitmap(MediaMetadata metadata, String... keys) {
        for (String key : keys) {
            Bitmap value = metadata.getBitmap(key);
            if (value != null && !value.isRecycled()) return value;
        }
        return null;
    }
}
