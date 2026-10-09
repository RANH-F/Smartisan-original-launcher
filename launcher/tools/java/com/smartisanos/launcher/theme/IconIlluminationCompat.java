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
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.zip.CRC32;
import java.util.zip.CheckedOutputStream;

/** Platform adapters for the original Aa raster and J sensor owners. */
public final class IconIlluminationCompat {
    public static final String KEY = "launcher_icon_illumination_enabled";
    public static final String VERSION = "projection:v3-skia10-adreno-contact";
    private static final String TAG = "IconIllumination";
    private static final boolean TRACE_STATE = Log.isLoggable(TAG, Log.DEBUG);
    private static final Map<String, Boolean> TRACE_BINDINGS = new LinkedHashMap<String, Boolean>() {
        @Override protected boolean removeEldestEntry(Map.Entry<String, Boolean> entry) { return size() > 256; }
    };

    public static void traceProjectionBinding(String path, boolean ready) {
        if (!TRACE_STATE) return;
        Boolean previous = TRACE_BINDINGS.put(path, ready);
        if (previous == null || previous.booleanValue() != ready)
            Log.i(TAG, "PROJECTION_BIND ready=" + ready + " texture=" + new File(path).getName());
    }

    public static void traceLightFrame(float lux, float opacity, int phase) {
        if (TRACE_STATE) Log.i(TAG, "LIGHT_FRAME lux=" + lux + " opacity=" + opacity + " phase=" + phase);
    }

    private static final int[] SIGMAS = {1, 1, 2, 3, 7, 10, 15, 20};
    private static final Map<SensorEventListener, HandlerThread> THREADS =
            new HashMap<SensorEventListener, HandlerThread>();
    private static final Map<SensorEventListener, Object> SENSOR_CALLBACKS = new HashMap<SensorEventListener, Object>();
    private static final Map<SensorEventListener, Long> SENSOR_STARTS = new HashMap<SensorEventListener, Long>();
    private static final java.util.Set<String> WRITING_MASKS = java.util.Collections.newSetFromMap(
            new java.util.concurrent.ConcurrentHashMap<String, Boolean>());
    private static final java.util.Set<String> BROKEN_MASKS = java.util.Collections.newSetFromMap(
            new java.util.concurrent.ConcurrentHashMap<String, Boolean>());
    private static final Map<String, Boolean> READY_MASKS = java.util.Collections.synchronizedMap(
            new LinkedHashMap<String, Boolean>(32, 0.75f, true) {
                @Override protected boolean removeEldestEntry(Map.Entry<String, Boolean> entry) {
                    return size() > 256;
                }
            });
    private static volatile long recoveryEpoch;
    public static long recoveryEpoch() { return recoveryEpoch; }
    private static final Object MASK_LOCK = new Object();
    private static final int MAX_MASK_ENTRIES = 256;
    private static final int INDEX_MAGIC = 0x50524a31;
    private static final Map<String, MaskEntry> MASKS =
            new LinkedHashMap<String, MaskEntry>(32, 0.75f, true) {
                @Override protected boolean removeEldestEntry(Map.Entry<String, MaskEntry> eldest) {
                    // The original GL owner may still use these files. Evict only metadata.
                    return size() > MAX_MASK_ENTRIES;
                }
            };
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

    /** Reject callbacks queued before the current registration or after pause. */
    public static synchronized boolean acceptsSensorEvent(SensorEventListener listener, long timestamp) {
        // A newly activated on-change sensor may report a cached value with an older timestamp.
        return SENSOR_STARTS.containsKey(listener) && SENSOR_CALLBACKS.get(listener) == Thread.currentThread();
    }

    public static synchronized long sensorEpoch(SensorEventListener listener) {
        Long start = SENSOR_STARTS.get(listener);
        return start == null ? 0L : start.longValue();
    }

    public static synchronized boolean sensorActive(SensorEventListener listener) {
        return SENSOR_STARTS.containsKey(listener);
    }

    /** Only our eight on-disk projection layers use this failure policy. */
    public static boolean isProjectionTexture(String path) {
        if (path == null || !path.startsWith("/data/") || !path.contains("/shadow/")) return false;
        int nameStart = path.lastIndexOf('/') + 1;
        // Folder's original shared projection/fallback remains owned by its existing compositor.
        if (path.startsWith("com.smartisan.folder_", nameStart)) return false;
        int suffix = path.length() - 6;
        return suffix >= 0 && path.charAt(suffix) == '_'
                && path.charAt(suffix + 1) >= '1' && path.charAt(suffix + 1) <= '8'
                && path.endsWith(".png");
    }

    public static boolean projectionBeingWritten(String key) { return WRITING_MASKS.contains(key); }

    public static boolean projectionFilesReady(String key) {
        if (key == null || WRITING_MASKS.contains(key) || BROKEN_MASKS.contains(key)) return false;
        if (READY_MASKS.containsKey(key)) return true;
        Context context = MaintainedLauncherSettingsHost.currentApplicationContext();
        if (context == null) return false;
        File directory = new File(context.getFilesDir(), "shadow");
        for (int i = 1; i <= 8; i++) {
            File layer = new File(directory, key + '_' + i + ".png");
            if (!layer.isFile() || layer.length() == 0L) return false;
        }
        READY_MASKS.put(key, Boolean.TRUE);
        return true;
    }

    public static void projectionReadFailed(String path) {
        if (!isProjectionTexture(path)) return;
        String name = new File(path).getName();
        String key = name.substring(0, name.length() - 6);
        READY_MASKS.remove(key);
        if (BROKEN_MASKS.add(key)) Log.w(TAG, "PROJECTION_LAYER_UNREADABLE key=" + key);
    }

    public static boolean projectionFileReadable(String path) {
        if (!isProjectionTexture(path)) return true;
        String name = new File(path).getName();
        return projectionFilesReady(name.substring(0, name.length() - 6));
    }

    public static boolean allProjectionLayersBound(boolean[] bound) {
        if (bound == null || bound.length < 8) return false;
        for (int i = 0; i < 8; i++) if (!bound[i]) return false;
        return true;
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
        long start = android.os.SystemClock.elapsedRealtimeNanos();
        recoveryEpoch = start;
        SENSOR_STARTS.put(rotation, start);
        SENSOR_STARTS.put(light, start);
        SENSOR_CALLBACKS.put(rotation, thread); SENSOR_CALLBACKS.put(light, thread);
        try {
            registered = sensors.registerListener(rotation, vector, 20000, handler);
        } catch (SecurityException | IllegalArgumentException | IllegalStateException error) {
            SENSOR_STARTS.remove(rotation); SENSOR_STARTS.remove(light);
            SENSOR_CALLBACKS.remove(rotation); SENSOR_CALLBACKS.remove(light);
            thread.quitSafely();
            Log.w(TAG, "ROTATION_SENSOR_REGISTRATION_FAILED", error);
            return false;
        }
        if (!registered) {
            SENSOR_STARTS.remove(rotation); SENSOR_STARTS.remove(light);
            SENSOR_CALLBACKS.remove(rotation); SENSOR_CALLBACKS.remove(light);
            thread.quitSafely();
            Log.w(TAG, "ROTATION_SENSOR_REGISTRATION_FAILED");
            return false;
        }
        try {
            Sensor lux = sensors.getDefaultSensor(Sensor.TYPE_LIGHT);
            if (lux == null || !sensors.registerListener(light, lux, 100000, handler)) {
                SENSOR_STARTS.remove(light); SENSOR_CALLBACKS.remove(light);
            }
        } catch (SecurityException | IllegalArgumentException | IllegalStateException error) {
            SENSOR_STARTS.remove(light); SENSOR_CALLBACKS.remove(light);
            Log.w(TAG, "LIGHT_SENSOR_UNAVAILABLE_USING_WEATHER_PRESET", error);
        }
        THREADS.put(rotation, thread);
        Log.i(TAG, "ORIGINAL_SENSOR_CHAIN_REGISTERED rotation=" + vector.getName());
        return true;
    }

    public static synchronized void unregister(Context context, SensorEventListener rotation,
            SensorEventListener light) {
        SENSOR_STARTS.remove(rotation); SENSOR_STARTS.remove(light);
            SENSOR_CALLBACKS.remove(rotation); SENSOR_CALLBACKS.remove(light);
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

    /** A revision reference never owns the caller's artwork or a second projection bitmap. */
    private static final class MaskEntry {
        final WeakReference<Bitmap> artwork;
        final int generation, width, height, density;
        final boolean hasAlpha, premultiplied;
        final String directory;
        final byte[] alphaSignature;
        final String version = VERSION;
        final long[] lengths, checksums, modified;

        MaskEntry(Bitmap bitmap, String path, byte[] signature) {
            this(bitmap, path, signature, null, null, null);
        }

        MaskEntry(Bitmap bitmap, String path, byte[] signature,
                long[] sizes, long[] crc, long[] times) {
            artwork = new WeakReference<Bitmap>(bitmap);
            generation = bitmap.getGenerationId();
            width = bitmap.getWidth(); height = bitmap.getHeight(); density = bitmap.getDensity();
            hasAlpha = bitmap.hasAlpha(); premultiplied = bitmap.isPremultiplied();
            directory = path; alphaSignature = signature;
            lengths = sizes; checksums = crc; modified = times;
        }

        boolean sameMetadata(Bitmap bitmap, String path) {
            return VERSION.equals(version) && directory.equals(path)
                    && width == bitmap.getWidth() && height == bitmap.getHeight()
                    && density == bitmap.getDensity() && hasAlpha == bitmap.hasAlpha()
                    && premultiplied == bitmap.isPremultiplied();
        }

        boolean sameRevision(Bitmap bitmap, String path) {
            return artwork.get() == bitmap && generation == bitmap.getGenerationId()
                    && sameMetadata(bitmap, path);
        }
    }

    private static boolean layersValid(File directory, String key, MaskEntry entry) throws IOException {
        if (entry.lengths == null) return false;
        boolean changed = false;
        for (int i = 0; i < SIGMAS.length; i++) {
            File file = new File(directory, key + '_' + (i + 1) + ".png");
            if (!file.isFile() || file.length() != entry.lengths[i] || file.length() == 0L)
                return false;
            if (file.lastModified() != entry.modified[i]) changed = true;
        }
        if (changed) {
            // A stamp is only a cheap change detector; it never proves equal PNG contents.
            byte[] buffer = new byte[4096];
            long[] times = new long[SIGMAS.length];
            for (int i = 0; i < SIGMAS.length; i++) {
                File file = new File(directory, key + '_' + (i + 1) + ".png");
                times[i] = file.lastModified();
                CRC32 crc = new CRC32();
                try (FileInputStream input = new FileInputStream(file)) {
                    int count;
                    while ((count = input.read(buffer)) != -1) crc.update(buffer, 0, count);
                }
                if (crc.getValue() != entry.checksums[i] || file.length() != entry.lengths[i]
                        || file.lastModified() != times[i]) return false;
            }
            System.arraycopy(times, 0, entry.modified, 0, times.length);
        }
        return true;
    }

    private static File indexFile(File directory, String key) {
        return new File(directory, key + ".projection");
    }

    private static MaskEntry readIndex(File directory, String key, Bitmap artwork,
            String path, byte[] signature) {
        File index = indexFile(directory, key);
        if (signature == null || !index.isFile() || index.length() > 1024) return null;
        try (DataInputStream input = new DataInputStream(new FileInputStream(index))) {
            if (input.readInt() != INDEX_MAGIC || !VERSION.equals(input.readUTF())
                    || input.readInt() != artwork.getWidth() || input.readInt() != artwork.getHeight()
                    || input.readInt() != artwork.getDensity() || input.readBoolean() != artwork.hasAlpha()
                    || input.readBoolean() != artwork.isPremultiplied()) return null;
            byte[] stored = new byte[32]; input.readFully(stored);
            if (!Arrays.equals(signature, stored)) return null;
            long[] lengths = new long[SIGMAS.length], crc = new long[SIGMAS.length];
            long[] times = new long[SIGMAS.length];
            Arrays.fill(times, -1L); // A disk load always verifies the eight PNG checksums.
            for (int i = 0; i < SIGMAS.length; i++) {
                lengths[i] = input.readLong(); crc[i] = input.readLong();
                if (lengths[i] <= 0L || crc[i] < 0L || crc[i] > 0xffffffffL) return null;
            }
            if (input.read() != -1) return null;
            MaskEntry result = new MaskEntry(artwork, path, signature, lengths, crc, times);
            return layersValid(directory, key, result) ? result : null;
        } catch (IOException error) {
            Log.w(TAG, "PROJECTION_INDEX_READ_FAILED key=" + key, error);
            return null;
        }
    }

    private static void writeIndex(File directory, String key, MaskEntry entry) throws IOException {
        File index = indexFile(directory, key), temporary = new File(index.getPath() + ".tmp");
        try {
            try (DataOutputStream output = new DataOutputStream(new FileOutputStream(temporary))) {
                output.writeInt(INDEX_MAGIC); output.writeUTF(VERSION);
                output.writeInt(entry.width); output.writeInt(entry.height); output.writeInt(entry.density);
                output.writeBoolean(entry.hasAlpha); output.writeBoolean(entry.premultiplied);
                output.write(entry.alphaSignature);
                for (int i = 0; i < SIGMAS.length; i++) {
                    output.writeLong(entry.lengths[i]); output.writeLong(entry.checksums[i]);
                }
            }
            if (!temporary.renameTo(index)) throw new IOException("Projection index replace failed");
        } finally {
            if (temporary.exists() && !temporary.delete()) Log.w(TAG, "PROJECTION_INDEX_TEMP_DELETE_FAILED");
        }
    }

    private static void deleteIndex(File directory, String key) throws IOException {
        File index = indexFile(directory, key), temporary = new File(index.getPath() + ".tmp");
        for (File file : new File[] {index, temporary}) {
            if (file.exists() && !file.delete()) throw new IOException("Projection index invalidate failed");
        }
    }

    /** Original Aa exact-key removal and generation share one monitor, even while disabled. */
    public static void remove(File files, String key) {
        synchronized (MASK_LOCK) {
        if (key == null) return;
        MASKS.remove(key); READY_MASKS.remove(key); BROKEN_MASKS.remove(key);
        if (files == null) return;
        File directory = new File(files, "shadow");
        try { deleteIndex(directory, key); }
        catch (IOException error) { Log.w(TAG, "PROJECTION_INDEX_INVALIDATE_FAILED key=" + key, error); }
        for (int i = 1; i <= SIGMAS.length; i++) {
            for (String suffix : new String[] {".png", ".png.tmp"}) {
                File file = new File(directory, key + '_' + i + suffix);
                if (file.exists() && !file.delete()) Log.w(TAG, "PROJECTION_REMOVE_FAILED key=" + key);
            }
        }
            }
    }

    /** Package removal keeps the delimiter: com.foo must never remove com.foobar. */
    public static void removePackage(File files, String packageName) {
        synchronized (MASK_LOCK) {
        if (packageName == null || packageName.length() == 0) return;
        String prefix = packageName + '_';
        synchronized (READY_MASKS) {
            for (Iterator<String> keys = READY_MASKS.keySet().iterator(); keys.hasNext();)
                if (keys.next().startsWith(prefix)) keys.remove();
        }
        for (String key : BROKEN_MASKS.toArray(new String[0])) if (key.startsWith(prefix)) BROKEN_MASKS.remove(key);
        for (Iterator<String> keys = MASKS.keySet().iterator(); keys.hasNext();) {
            if (keys.next().startsWith(prefix)) keys.remove();
        }
        if (files == null) return;
        File directory = new File(files, "shadow");
        if (!directory.exists()) return;
        File[] children = directory.listFiles();
        if (children == null) { Log.w(TAG, "PROJECTION_PACKAGE_LIST_FAILED"); return; }
        for (File child : children) {
            String name = child.getName();
            if (!name.startsWith(prefix)) continue;
            boolean derived = name.endsWith(".projection") || name.endsWith(".projection.tmp");
            for (int i = 1; i <= SIGMAS.length && !derived; i++)
                derived = name.endsWith("_" + i + ".png") || name.endsWith("_" + i + ".png.tmp");
            if (derived && !child.delete()) Log.w(TAG, "PROJECTION_PACKAGE_REMOVE_FAILED");
        }
            }
    }

    /** Scan only source Alpha, one row at a time, before allocating the 256px mask. */
    private static byte[] alphaSignature(Bitmap bitmap) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            int width = bitmap.getWidth();
            int[] row = new int[width];
            byte[] alpha = new byte[width];
            for (int y = 0; y < bitmap.getHeight(); y++) {
                bitmap.getPixels(row, 0, width, 0, y, width, 1);
                for (int x = 0; x < width; x++) alpha[x] = (byte) (row[x] >>> 24);
                digest.update(alpha);
            }
            return digest.digest();
        } catch (IllegalStateException error) {
            // Hardware-backed sources may not permit getPixels. Keep the original raster path.
            return null;
        } catch (NoSuchAlgorithmException error) {
            throw new IllegalStateException("SHA-256 unavailable", error);
        }
    }

    /** Original Aa contract: full Alpha, 140px destination, eight 256px PNG files. */
    public static boolean write(String key, Bitmap artwork, boolean force) {
        synchronized (MASK_LOCK) {
        if (!enabled() || key == null || artwork == null || artwork.isRecycled()) return false;
        Context context = MaintainedLauncherSettingsHost.currentApplicationContext();
        File directory = new File(context.getFilesDir(), "shadow");
        if (!directory.isDirectory() && !directory.mkdirs()) return false;
        String path = directory.getAbsolutePath();
        if (BROKEN_MASKS.contains(key)) force = true;
        MaskEntry cached = MASKS.get(key);
        boolean complete = false;
        if (cached != null) {
            try { complete = layersValid(directory, key, cached); }
            catch (IOException error) { Log.w(TAG, "PROJECTION_LAYERS_READ_FAILED key=" + key, error); }
        }
        if (!force && complete && cached.sameRevision(artwork, path)) return true;
        MaskEntry revision = new MaskEntry(artwork, path, null);
        byte[] signature = alphaSignature(artwork);
        if (!force && !complete) {
            cached = readIndex(directory, key, artwork, path, signature);
            complete = cached != null;
        }
        if (!force && complete && signature != null && cached.alphaSignature != null
                && cached.sameMetadata(artwork, path) && Arrays.equals(signature, cached.alphaSignature)
                && revision.sameRevision(artwork, path)) {
            MASKS.put(key, new MaskEntry(artwork, path, signature,
                    cached.lengths, cached.checksums, cached.modified));
            return true;
        }
        WRITING_MASKS.add(key);
        READY_MASKS.remove(key); BROKEN_MASKS.add(key);
        try {
        // No previous success may survive a partial rewrite or a changing source revision.
        MASKS.remove(key);
        try { deleteIndex(directory, key); }
        catch (IOException error) {
            Log.e(TAG, "PROJECTION_INDEX_INVALIDATE_FAILED key=" + key, error);
            return false;
        }
        Bitmap alpha = artwork.extractAlpha();
        Bitmap mask = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
        new Canvas(mask).drawBitmap(alpha, new Rect(0, 0, alpha.getWidth(), alpha.getHeight()),
                new RectF(58, 58, 198, 198), new Paint(Paint.ANTI_ALIAS_FLAG));
        alpha.recycle();
        int[] pixels = new int[256 * 256];
        mask.getPixels(pixels, 0, 256, 0, 0, 256, 256);
        mask.recycle();
        byte[] source = new byte[pixels.length];
        for (int i = 0; i < pixels.length; i++) {
            source[i] = (byte) (pixels[i] >>> 24);
        }
        try {
            long[] lengths = new long[SIGMAS.length], crc = new long[SIGMAS.length];
            long[] times = new long[SIGMAS.length];
            for (int layer = 0; layer < SIGMAS.length; layer++) {
                byte[] blurred = IconProjectionBlur.blur(source, 256, 256, SIGMAS[layer]);
                for (int i = 0; i < pixels.length; i++) pixels[i] = (blurred[i] & 255) << 24;
                Bitmap output = Bitmap.createBitmap(pixels, 256, 256, Bitmap.Config.ARGB_8888);
                File destination = new File(directory, key + '_' + (layer + 1) + ".png");
                File temporary = new File(directory, destination.getName() + ".tmp");
                try {
                    CRC32 checksum = new CRC32();
                    try (CheckedOutputStream stream = new CheckedOutputStream(
                            new FileOutputStream(temporary), checksum)) {
                        if (!output.compress(Bitmap.CompressFormat.PNG, 100, stream)) {
                            throw new java.io.IOException("PNG encode failed");
                        }
                    }
                    if (!temporary.renameTo(destination)) {
                        throw new java.io.IOException("Projection mask replace failed");
                    }
                    lengths[layer] = destination.length(); crc[layer] = checksum.getValue();
                    times[layer] = destination.lastModified();
                } finally {
                    output.recycle();
                    if (temporary.exists()) temporary.delete();
                }
            }
            if (signature != null && revision.sameRevision(artwork, path)) {
                MaskEntry entry = new MaskEntry(artwork, path, signature, lengths, crc, times);
                try {
                    writeIndex(directory, key, entry);
                    MASKS.put(key, entry);
                } catch (IOException error) {
                    // The eight PNGs are ready; an optional index failure only disables reuse.
                    Log.w(TAG, "PROJECTION_INDEX_WRITE_FAILED key=" + key, error);
                }
            }
            BROKEN_MASKS.remove(key); READY_MASKS.put(key, Boolean.TRUE);
            Log.i(TAG, "ORIGINAL_PROJECTION_MASK_READY key=" + key + " layers=8 alphaCutoff=0");
            return true;
        } catch (java.io.IOException error) {
            Log.e(TAG, "PROJECTION_MASK_WRITE_FAILED key=" + key, error);
            return false;
        }
        } finally { WRITING_MASKS.remove(key); }
            }
    }
}
