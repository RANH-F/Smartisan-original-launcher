import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.smartisanos.launcher.theme.IconProjectionBlur;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/** Runs through app_process; never changes or replaces the original Launcher. */
public final class OriginalShadowProbe {
    public static void main(String[] args) throws Exception {
        File output = new File(args[0]);
        if (!output.isDirectory() && !output.mkdirs()) throw new IllegalStateException("Output directory");
        Class<?> filterType = Class.forName("android.graphics.ImageFilter");
        Constructor<?> blurConstructor = Class.forName("android.graphics.BlurImageFilter")
                .getConstructor(float.class, float.class);
        Method setFilter = Paint.class.getMethod("setImageFilter", filterType);
        for (int size : new int[] {140, 192, 256}) {
            Bitmap source = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888);
            int[] pixels = new int[size * size];
            for (int y = 0; y < size; y++) for (int x = 0; x < size; x++) {
                float nx = (x + 0.5f) / size, ny = (y + 0.5f) / size;
                boolean body = nx > 0.13f && nx < 0.87f && ny > 0.09f && ny < 0.91f;
                boolean hole = nx > 0.42f && nx < 0.58f && ny > 0.33f && ny < 0.66f;
                int alpha = !body || hole ? 0 : (y < size / 3 ? 83 : y < size * 2 / 3 ? 177 : 255);
                pixels[y * size + x] = alpha << 24;
            }
            source.setPixels(pixels, 0, size, 0, 0, size, size);
            Bitmap alpha = source.extractAlpha();
            Bitmap scaled = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            new Canvas(scaled).drawBitmap(alpha, new Rect(0, 0, size, size),
                    new RectF(58, 58, 198, 198), paint);
            int[] input = new int[256 * 256];
            scaled.getPixels(input, 0, 256, 0, 0, 256, 256);
            byte[] mask = new byte[input.length];
            for (int i = 0; i < input.length; i++) mask[i] = (byte) (input[i] >>> 24);
            for (float sigma : new float[] {1, 2, 3, 7, 10, 15, 20}) {
                Bitmap original = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
                Paint originalPaint = new Paint();
                originalPaint.setAntiAlias(true);
                setFilter.invoke(originalPaint, blurConstructor.newInstance(sigma, sigma));
                new Canvas(original).drawBitmap(alpha, new Rect(0, 0, size, size),
                        new RectF(58, 58, 198, 198), originalPaint);
                byte[] blurred = IconProjectionBlur.blur(mask, 256, 256, sigma);
                int[] actual = new int[input.length];
                original.getPixels(actual, 0, 256, 0, 0, 256, 256);
                int maximum = 0, changed = 0;
                long total = 0;
                for (int i = 0; i < actual.length; i++) {
                    int difference = Math.abs((actual[i] >>> 24) - (blurred[i] & 255));
                    maximum = Math.max(maximum, difference);
                    total += difference;
                    if (difference != 0) changed++;
                }
                String name = "size" + size + "-sigma" + (int) sigma;
                try (FileOutputStream stream = new FileOutputStream(new File(output, name + ".png"))) {
                    original.compress(Bitmap.CompressFormat.PNG, 100, stream);
                }
                System.out.println("ORIGINAL_MASK_COMPARE " + name + " maxAlphaError="
                        + maximum + " changedPixels=" + changed + " totalAlphaError=" + total);
                if (maximum != 0) throw new AssertionError("Original blur differs: " + name);
                original.recycle();
            }
            alpha.recycle(); source.recycle(); scaled.recycle();
        }
    }
}
