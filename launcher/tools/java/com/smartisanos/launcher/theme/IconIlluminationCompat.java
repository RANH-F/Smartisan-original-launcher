package com.smartisanos.launcher.theme;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;

/** Platform adapters for the original Aa raster and J sensor owners. */
public final class IconIlluminationCompat {
    public static final String KEY = "launcher_icon_illumination_enabled";
    public static final String VERSION = "projection:v3-skia10-adreno-contact";
    private static final String TAG = "IconIllumination";
    private static final int[] SIGMAS = {1, 1, 2, 3, 7, 10, 15, 20};
    private static final Map<SensorEventListener, HandlerThread> THREADS =
            new HashMap<SensorEventListener, HandlerThread>();
    private static final Map<String, Integer> MASKS = new HashMap<String, Integer>();
    private IconIlluminationCompat() {}

    public static boolean enabled(Context context) {
        return context != null && context.getSharedPreferences(
                DefaultIconCircleRenderer.PREFS, Context.MODE_PRIVATE).getBoolean(KEY, false)
                && supported(context);
    }

    public static boolean supported(Context context) {
        if (context == null) return false;
        try {
            SensorManager sensors = (SensorManager) context.getSystemService(Context.SENSOR_SERVICE);
            return sensors != null && selectRotation(sensors) != null;
        } catch (SecurityException | IllegalArgumentException | IllegalStateException error) {
            Log.w(TAG, "ROTATION_SENSOR_QUERY_FAILED", error);
            return false;
        }
    }

    private static Sensor selectRotation(SensorManager sensors) {
        Sensor sensor = sensors.getDefaultSensor(Sensor.TYPE_ROTATION_VECTOR);
        if (sensor == null) sensor = sensors.getDefaultSensor(Sensor.TYPE_GEOMAGNETIC_ROTATION_VECTOR);
        if (sensor == null) sensor = sensors.getDefaultSensor(Sensor.TYPE_GAME_ROTATION_VECTOR);
        return sensor;
    }

    public static boolean enabled() {
        return enabled(MaintainedLauncherSettingsHost.currentApplicationContext());
    }

    public static boolean setEnabled(Context context, boolean enabled) {
        if (context == null || (enabled && !supported(context))) return false;
        return context.getSharedPreferences(DefaultIconCircleRenderer.PREFS, Context.MODE_PRIVATE)
                .edit().putBoolean(KEY, enabled).commit();
    }

    public static synchronized boolean register(Context context, SensorEventListener rotation,
            SensorEventListener light) {
        if (THREADS.containsKey(rotation)) return true;
        if (context == null || rotation == null || light == null) return false;
        SensorManager sensors;
        Sensor vector;
        try {
            sensors = (SensorManager) context.getSystemService(Context.SENSOR_SERVICE);
            vector = sensors == null ? null : selectRotation(sensors);
        } catch (SecurityException | IllegalArgumentException | IllegalStateException error) {
            Log.w(TAG, "ROTATION_SENSOR_QUERY_FAILED", error);
            return false;
        }
        if (vector == null) {
            Log.w(TAG, "ROTATION_SENSOR_UNAVAILABLE");
            return false;
        }
        HandlerThread thread = new HandlerThread("OriginalIconIllumination");
        thread.start();
        Handler handler = new Handler(thread.getLooper());
        boolean registered;
        try {
            registered = sensors.registerListener(rotation, vector, 20000, handler);
        } catch (SecurityException | IllegalArgumentException | IllegalStateException error) {
            thread.quitSafely();
            Log.w(TAG, "ROTATION_SENSOR_REGISTRATION_FAILED", error);
            return false;
        }
        if (!registered) {
            thread.quitSafely();
            Log.w(TAG, "ROTATION_SENSOR_REGISTRATION_FAILED");
            return false;
        }
        try {
            Sensor lux = sensors.getDefaultSensor(Sensor.TYPE_LIGHT);
            if (lux != null) sensors.registerListener(light, lux, 2000, handler);
        } catch (SecurityException | IllegalArgumentException | IllegalStateException error) {
            Log.w(TAG, "LIGHT_SENSOR_UNAVAILABLE_USING_WEATHER_PRESET", error);
        }
        THREADS.put(rotation, thread);
        Log.i(TAG, "ORIGINAL_SENSOR_CHAIN_REGISTERED rotation=" + vector.getName());
        return true;
    }

    public static synchronized void unregister(Context context, SensorEventListener rotation,
            SensorEventListener light) {
        HandlerThread thread = THREADS.remove(rotation);
        try {
            SensorManager sensors = context == null ? null
                    : (SensorManager) context.getSystemService(Context.SENSOR_SERVICE);
            if (sensors != null) {
                if (rotation != null) sensors.unregisterListener(rotation);
                if (light != null) sensors.unregisterListener(light);
            }
        } catch (SecurityException | IllegalArgumentException | IllegalStateException error) {
            Log.w(TAG, "SENSOR_UNREGISTER_FAILED", error);
        } finally {
            if (thread != null) thread.quitSafely();
        }
    }

    public static boolean prepare(Object item, Bitmap artwork) {
        if (!enabled() || item == null) return false;
        try {
            String key = (String) item.getClass().getMethod("Pe").invoke(item);
            return write(key, artwork, false);
        } catch (Exception error) {
            Log.e(TAG, "PROJECTION_ITEM_KEY_FAILED", error);
            return false;
        }
    }

    /** Original Aa contract: full Alpha, 140px destination, eight 256px PNG files. */
    public static synchronized boolean write(String key, Bitmap artwork, boolean force) {
        if (!enabled() || key == null || artwork == null || artwork.isRecycled()) return false;
        Context context = MaintainedLauncherSettingsHost.currentApplicationContext();
        File directory = new File(context.getFilesDir(), "shadow");
        if (!directory.isDirectory() && !directory.mkdirs()) return false;
        Bitmap alpha = artwork.extractAlpha();
        Bitmap mask = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
        new Canvas(mask).drawBitmap(alpha, new Rect(0, 0, alpha.getWidth(), alpha.getHeight()),
                new RectF(58, 58, 198, 198), new Paint(Paint.ANTI_ALIAS_FLAG));
        alpha.recycle();
        int[] pixels = new int[256 * 256];
        mask.getPixels(pixels, 0, 256, 0, 0, 256, 256);
        mask.recycle();
        byte[] source = new byte[pixels.length];
        int fingerprint = 1;
        for (int i = 0; i < pixels.length; i++) {
            source[i] = (byte) (pixels[i] >>> 24);
            fingerprint = 31 * fingerprint + (source[i] & 255);
        }
        if (!force && Integer.valueOf(fingerprint).equals(MASKS.get(key))) return true;
        try {
            for (int layer = 0; layer < SIGMAS.length; layer++) {
                byte[] blurred = IconProjectionBlur.blur(source, 256, 256, SIGMAS[layer]);
                for (int i = 0; i < pixels.length; i++) pixels[i] = (blurred[i] & 255) << 24;
                Bitmap output = Bitmap.createBitmap(pixels, 256, 256, Bitmap.Config.ARGB_8888);
                File destination = new File(directory, key + '_' + (layer + 1) + ".png");
                File temporary = new File(directory, destination.getName() + ".tmp");
                try {
                    try (FileOutputStream stream = new FileOutputStream(temporary)) {
                        if (!output.compress(Bitmap.CompressFormat.PNG, 100, stream)) {
                            throw new java.io.IOException("PNG encode failed");
                        }
                    }
                    if (!temporary.renameTo(destination)) {
                        throw new java.io.IOException("Projection mask replace failed");
                    }
                } finally {
                    output.recycle();
                    if (temporary.exists()) temporary.delete();
                }
            }
            MASKS.put(key, fingerprint);
            Log.i(TAG, "ORIGINAL_PROJECTION_MASK_READY key=" + key + " layers=8 alphaCutoff=0");
            return true;
        } catch (java.io.IOException error) {
            Log.e(TAG, "PROJECTION_MASK_WRITE_FAILED key=" + key, error);
            return false;
        }
    }
}
