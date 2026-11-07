import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.smartisanos.launcher.theme.DefaultIconCircleRenderer;

/** Asserts complete artwork survival, including corner markers that a cover crop loses. */
public final class DefaultCircleProbe {
    public static void main(String[] args) {
        android.os.Looper.prepareMainLooper();
        try {
            run();
        } catch (Throwable failure) {
            failure.printStackTrace(System.out);
            System.exit(1);
        }
    }

    private static void run() {
        int[] colors = {0xffff0000, 0xff00ff00, 0xff0000ff, 0xffff00ff};
        int checks = 0;
        for (String selection : new String[] {"DEFAULT", "IMPROVED", "PACK", "CUSTOM", "RESOURCE", "MANAGED", "", null}) {
            for (boolean enabled : new boolean[] {false, true}) {
                if (DefaultIconCircleRenderer.appliesToSelection(enabled, selection)
                        != (enabled && "DEFAULT".equals(selection))) {
                    throw new AssertionError("only effective DEFAULT artwork is framed");
                }
                checks++;
            }
        }
        for (int[] size : new int[][] {{100,100}, {160,80}, {80,160}}) {
            Bitmap raw = Bitmap.createBitmap(size[0],size[1],Bitmap.Config.ARGB_8888);
            Canvas c = new Canvas(raw); Paint p = new Paint();
            for (int i=0;i<4;i++) {
                p.setColor(colors[i]);
                int x=(i%2)*(size[0]-20), y=(i/2)*(size[1]-20);
                c.drawRect(x,y,x+20,y+20,p);
            }
            Drawable foreground = new BitmapDrawable(Resources.getSystem(),raw);
            Drawable[] inputs = android.os.Build.VERSION.SDK_INT >= 26
                    ? new Drawable[] {foreground,
                            new AdaptiveIconDrawable(new ColorDrawable(0xfff2f2f2),foreground)}
                    : new Drawable[] {foreground};
            for (Drawable input : inputs) {
                Bitmap rendered=DefaultIconCircleRenderer.render(input,256);
                for(int color:colors) {
                    int count=0;
                    for(int y=0;y<256;y++) for(int x=0;x<256;x++) {
                        if(rendered.getPixel(x,y)==color) {
                            count++;
                            if(input instanceof AdaptiveIconDrawable && Math.hypot(x-127.5,y-127.5)>123)
                                throw new AssertionError("no safe gap");
                        }
                    }
                    if(count<50) throw new AssertionError("corner lost: "+Integer.toHexString(color));
                    checks++;
                }
                if(input instanceof AdaptiveIconDrawable && (rendered.getPixel(0,0)>>>24)!=0)
                    throw new AssertionError("outer box changed");
                checks++;
                rendered.recycle();
            }
            raw.recycle();
        }
        if (android.os.Build.VERSION.SDK_INT >= 26) {
            Bitmap padded = Bitmap.createBitmap(256,256,Bitmap.Config.ARGB_8888);
            Paint marker = new Paint(); marker.setColor(0xff00ff00);
            new Canvas(padded).drawRect(108,108,148,148,marker);
            Bitmap kept = DefaultIconCircleRenderer.render(new AdaptiveIconDrawable(
                    new ColorDrawable(0xfff2f2f2),new BitmapDrawable(Resources.getSystem(),padded)),256);
            int markerPixels=0;
            for(int y=0;y<256;y++) for(int x=0;x<256;x++)
                if(kept.getPixel(x,y)==0xff00ff00) markerPixels++;
            if(markerPixels!=1600) throw new AssertionError("existing padding enlarged: "+markerPixels);
            checks++;
            kept.recycle(); padded.recycle();
        }
        for (int canvasSize : new int[] {128, 256, 384}) {
            Bitmap raw = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
            Canvas rawCanvas = new Canvas(raw);
            Paint paint = new Paint();
            paint.setColor(0xff167ddf);
            rawCanvas.drawRect(24, 24, 232, 232, paint);
            paint.setColor(0xffffffff);
            rawCanvas.drawRect(100, 100, 156, 156, paint);
            Drawable drawable = new BitmapDrawable(Resources.getSystem(), raw);
            drawable.setBounds(3, 5, 13, 17);
            Bitmap output = DefaultIconCircleRenderer.render(drawable, canvasSize);
            if (output.getPixel(canvasSize / 10, canvasSize / 2) != 0xff167ddf) {
                throw new AssertionError("opaque legacy background must extend to circle rim");
            }
            checks++;
            if (output.getPixel(canvasSize / 2, canvasSize / 2) != 0xffffffff
                    || (output.getPixel(0, 0) >>> 24) != 0) {
                throw new AssertionError("foreground or outer alpha changed");
            }
            checks++;
            if (raw.isRecycled() || !drawable.getBounds().equals(
                    new android.graphics.Rect(3, 5, 13, 17))) {
                throw new AssertionError("source ownership or Drawable bounds changed");
            }
            checks++;
            output.recycle(); raw.recycle();
        }
        Bitmap transparent = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
        Paint transparentPaint = new Paint(); transparentPaint.setColor(0xff008800);
        new Canvas(transparent).drawCircle(128, 128, 88, transparentPaint);
        Bitmap transparentResult = DefaultIconCircleRenderer.render(
                new BitmapDrawable(Resources.getSystem(), transparent), 256);
        if ((transparentResult.getPixel(24, 128) >>> 24) != 0
                || transparentResult.getPixel(128,128) != 0xff008800) {
            throw new AssertionError("transparent artwork must retain its original contour");
        }
        checks++;
        transparentResult.recycle(); transparent.recycle();
        Bitmap full = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
        full.eraseColor(0xff204060);
        Bitmap fullResult = DefaultIconCircleRenderer.render(
                new BitmapDrawable(Resources.getSystem(), full), 256);
        if (full.isRecycled() || fullResult.getPixel(24, 128) != 0xff204060) {
            throw new AssertionError("full-canvas backdrop alias must remain drawable");
        }
        checks++;
        Bitmap expectedMask = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
        Paint maskPaint = new Paint(Paint.ANTI_ALIAS_FLAG); maskPaint.setColor(0xffffffff);
        float diameter = 256 * .9791667f, inset = (256 - diameter) * .5f;
        new Canvas(expectedMask).drawOval(new android.graphics.RectF(inset, inset,
                inset + diameter, inset + diameter), maskPaint);
        int maximumAlphaDifference = 0;
        for (int y = 0; y < 256; y++) for (int x = 0; x < 256; x++) {
            maximumAlphaDifference = Math.max(maximumAlphaDifference, Math.abs(
                    (expectedMask.getPixel(x, y) >>> 24) - (fullResult.getPixel(x, y) >>> 24)));
        }
        // Skia's color and bitmap shaders can differ by a premultiplied rounding step.
        // Drawing the oval twice instead produces much larger intermediate-alpha errors.
        if (maximumAlphaDifference > 2) {
            throw new AssertionError("legacy circular alpha accumulated: " + maximumAlphaDifference);
        }
        checks++;
        expectedMask.recycle();
        fullResult.recycle(); full.recycle();
        for (int canvasSize : new int[] {128, 256, 384}) {
            Bitmap rounded = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
            Canvas plate = new Canvas(rounded);
            Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
            p.setShader(new android.graphics.LinearGradient(0, 24, 0, 232,
                    0xff164bba, 0xff51b7e5, android.graphics.Shader.TileMode.CLAMP));
            if (canvasSize == 256) {
                android.graphics.Path outline = new android.graphics.Path();
                outline.addRoundRect(new android.graphics.RectF(24, 24, 232, 232),
                        new float[] {52, 52, 52, 52, 28, 28, 28, 28}, android.graphics.Path.Direction.CW);
                plate.drawPath(outline, p);
            } else {
                plate.drawRoundRect(new android.graphics.RectF(24, 24, 232, 232), 52, 52, p);
            }
            p.setShader(null); p.setColor(0xffff00ff);
            plate.drawRect(108, 108, 148, 148, p);
            int[] before = new int[256 * 256];
            rounded.getPixels(before, 0, 256, 0, 0, 256, 256);
            Drawable input = new BitmapDrawable(Resources.getSystem(), rounded);
            input.setBounds(3, 5, 13, 17);
            Bitmap output = DefaultIconCircleRenderer.render(input, canvasSize);
            int rim = output.getPixel(canvasSize / 10, canvasSize / 2);
            if ((rim >>> 24) != 255 || (rim & 255) < 150 || ((rim >> 16) & 255) > 110) {
                throw new AssertionError("rounded legacy background must extend to circle rim");
            }
            checks++;
            int markers = 0;
            for (int y = 0; y < canvasSize; y++) for (int x = 0; x < canvasSize; x++)
                if (output.getPixel(x, y) == 0xffff00ff) markers++;
            if (markers < canvasSize * canvasSize / 100) throw new AssertionError("rounded foreground lost");
            checks++;
            int[] after = new int[256 * 256];
            rounded.getPixels(after, 0, 256, 0, 0, 256, 256);
            if (!java.util.Arrays.equals(before, after) || rounded.isRecycled()
                    || !input.getBounds().equals(new android.graphics.Rect(3, 5, 13, 17))) {
                throw new AssertionError("rounded source was modified");
            }
            checks++;
            output.recycle();
            // A mostly solid rounded silhouette with a real interior hole is not a background.
            Paint clear = new Paint();
            clear.setXfermode(new android.graphics.PorterDuffXfermode(android.graphics.PorterDuff.Mode.CLEAR));
            plate.drawRect(123, 123, 133, 133, clear);
            output = DefaultIconCircleRenderer.render(input, canvasSize);
            if ((output.getPixel(canvasSize / 16, canvasSize / 2) >>> 24) != 0
                    || (output.getPixel(canvasSize / 2, canvasSize / 2) >>> 24) != 0) {
                throw new AssertionError("interior hole must retain transparent artwork");
            }
            checks++;
            output.recycle(); rounded.recycle();
        }
        if (android.os.Build.VERSION.SDK_INT >= 26) {
            Bitmap background = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
            Paint p = new Paint(); p.setColor(0xff9099aa);
            new Canvas(background).drawRect(26, 26, 230, 230, p);
            Bitmap foreground = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
            p.setColor(0xff00ff00);
            new Canvas(foreground).drawRect(108, 108, 148, 148, p);
            Bitmap output = DefaultIconCircleRenderer.render(new AdaptiveIconDrawable(
                    new BitmapDrawable(Resources.getSystem(), background),
                    new BitmapDrawable(Resources.getSystem(), foreground)), 256);
            if (output.getPixel(24, 128) != 0xff9099aa) {
                throw new AssertionError("adaptive background inset was not expanded");
            }
            checks++;
            int markerCount = 0;
            for (int y = 0; y < 256; y++) for (int x = 0; x < 256; x++)
                if (output.getPixel(x, y) == 0xff00ff00) markerCount++;
            if (markerCount != 1600) throw new AssertionError("adaptive foreground changed size");
            checks++;
            Bitmap circleMask = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
            Paint circlePaint = new Paint(Paint.ANTI_ALIAS_FLAG); circlePaint.setColor(0xffffffff);
            new Canvas(circleMask).drawOval(new android.graphics.RectF(inset, inset,
                    inset + diameter, inset + diameter), circlePaint);
            int alphaError = 0;
            for (int y = 0; y < 256; y++) for (int x = 0; x < 256; x++)
                alphaError = Math.max(alphaError, Math.abs((circleMask.getPixel(x, y) >>> 24)
                        - (output.getPixel(x, y) >>> 24)));
            if (alphaError > 2) throw new AssertionError("adaptive circle alpha accumulated: " + alphaError);
            checks++;
            circleMask.recycle();
            output.recycle(); background.recycle(); foreground.recycle();
        }
        // OEMs can wrap exactly the same legacy plate as an adaptive foreground.
        // That wrapper must not introduce a neutral ring or retain a second outline.
        if (android.os.Build.VERSION.SDK_INT >= 26) {
            for (int canvasSize : new int[] {128, 256, 384}) {
                Bitmap artwork = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
                Canvas drawing = new Canvas(artwork);
                Paint plate = new Paint(Paint.ANTI_ALIAS_FLAG);
                plate.setColor(0xff121218);
                drawing.drawRoundRect(new android.graphics.RectF(24, 24, 232, 232), 38, 38, plate);
                plate.setColor(0xffffffff);
                drawing.drawRect(112, 104, 144, 152, plate);
                Drawable foreground = new BitmapDrawable(Resources.getSystem(), artwork);
                foreground.setBounds(11, 17, 79, 83);
                int[] before = new int[256*256];
                artwork.getPixels(before, 0, 256, 0, 0, 256, 256);
                Bitmap legacy = DefaultIconCircleRenderer.render(foreground, canvasSize);
                Bitmap adaptive = DefaultIconCircleRenderer.render(new AdaptiveIconDrawable(
                        new ColorDrawable(0xfff2f2f2), foreground), canvasSize);
                int[] expected = new int[canvasSize*canvasSize], actual = new int[expected.length];
                legacy.getPixels(expected, 0, canvasSize, 0, 0, canvasSize, canvasSize);
                adaptive.getPixels(actual, 0, canvasSize, 0, 0, canvasSize, canvasSize);
                if (!java.util.Arrays.equals(expected, actual))
                    throw new AssertionError("adaptive wrapper changed legacy plate or introduced a pale rim");
                checks++;
                int[] after = new int[before.length];
                artwork.getPixels(after, 0, 256, 0, 0, 256, 256);
                if (!java.util.Arrays.equals(before, after) || artwork.isRecycled()
                        || !foreground.getBounds().equals(new android.graphics.Rect(11,17,79,83)))
                    throw new AssertionError("wrapper normalization modified borrowed artwork");
                checks++;
                legacy.recycle(); adaptive.recycle(); artwork.recycle();
            }
        }
        // A complete circular plate must not acquire a neutral ring merely
        // because the app PNG includes transparent padding around that plate.
        for (int canvasSize : new int[] {128, 256, 384}) {
            Bitmap circle = Bitmap.createBitmap(256,256,Bitmap.Config.ARGB_8888);
            Canvas drawing = new Canvas(circle);
            Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);p.setColor(0xff1688cc);
            drawing.drawCircle(128,128,104,p);
            p.setColor(0xffffffff);drawing.drawRect(116,100,140,150,p);
            Drawable foreground = new BitmapDrawable(Resources.getSystem(), circle);
            Drawable[] inputs = android.os.Build.VERSION.SDK_INT >= 26
                    ? new Drawable[]{foreground,new AdaptiveIconDrawable(new ColorDrawable(0xfff2f2f2),foreground)}
                    : new Drawable[]{foreground};
            for (Drawable input : inputs) {
                Bitmap output = DefaultIconCircleRenderer.render(input,canvasSize);
                int rim = output.getPixel(canvasSize/2, Math.max(4,canvasSize/40));
                if (((rim>>16)&255)>40 || ((rim>>8)&255)<100 || (rim&255)<150)
                    throw new AssertionError("circular plate acquired a pale outer ring");
                checks++;
                output.recycle();
            }
            circle.recycle();
        }
        if (android.os.Build.VERSION.SDK_INT >= 26) {
            for (boolean hole : new boolean[]{false,true}) {
                Bitmap circle = Bitmap.createBitmap(256,256,Bitmap.Config.ARGB_8888);
                Canvas drawing = new Canvas(circle);
                Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);p.setColor(0xff1688cc);
                drawing.drawCircle(128,128,104,p);
                if (hole) {
                    p.setXfermode(new android.graphics.PorterDuffXfermode(android.graphics.PorterDuff.Mode.CLEAR));
                    drawing.drawRect(122,122,134,134,p);
                } else {
                    p.setXfermode(new android.graphics.PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_ATOP));
                    p.setColor(0xffcc2211);drawing.drawRect(0,0,128,256,p);
                }
                Bitmap output=DefaultIconCircleRenderer.render(new AdaptiveIconDrawable(
                        new ColorDrawable(0xff662244),new BitmapDrawable(Resources.getSystem(),circle)),256);
                if(output.getPixel(128,6)!=0xff662244)
                    throw new AssertionError("ambiguous circular artwork replaced the genuine adaptive background");
                checks++;
                output.recycle();circle.recycle();
            }
        }
        // Regress the three defects found in real vivo music/calendar artwork.
        for (int scenario = 0; scenario < 3; scenario++) {
            Bitmap raw = Bitmap.createBitmap(256,256,Bitmap.Config.ARGB_8888);
            Canvas drawing = new Canvas(raw);
            Paint p = new Paint(Paint.ANTI_ALIAS_FLAG);
            if (scenario == 2) {
                p.setColor(0x30000000);
                drawing.drawRoundRect(new android.graphics.RectF(20,20,236,236),42,42,p);
            }
            p.setColor(0xff1688cc);
            drawing.drawRoundRect(scenario == 0 ? new android.graphics.RectF(0,0,256,256)
                    : new android.graphics.RectF(24,24,232,232), scenario == 0 ? 88 : 38,
                    scenario == 0 ? 88 : 38,p);
            if (scenario == 1) raw.setPixel(200,128,0xf91688cc);
            p.setColor(0xffffffff); drawing.drawRect(112,104,144,152,p);
            int[] before = new int[256*256]; raw.getPixels(before,0,256,0,0,256,256);
            Drawable legacy = new BitmapDrawable(Resources.getSystem(),raw);
            Drawable[] inputs = android.os.Build.VERSION.SDK_INT >= 26
                    ? new Drawable[]{legacy,new AdaptiveIconDrawable(new ColorDrawable(0xfff2f2f2),legacy)}
                    : new Drawable[]{legacy};
            for (Drawable input : inputs) for (int size : new int[]{128,256,384}) {
                Bitmap output = DefaultIconCircleRenderer.render(input,size);
                for (int y=0;y<size;y++) for(int x=0;x<size;x++) {
                    double radius=Math.hypot(x-size*.5,y-size*.5);
                    int pixel=output.getPixel(x,y);
                    boolean sameColor=(pixel>>>24)==255 && Math.abs(((pixel>>16)&255)-22)<=2
                            && Math.abs(((pixel>>8)&255)-136)<=2 && Math.abs((pixel&255)-204)<=2;
                    if(radius>size*.2 && radius<size*.46 && !sameColor)
                        throw new AssertionError("plate retained neutral rim or old shadow: scenario="+scenario+" size="+size+" xy="+x+","+y+" pixel="+Integer.toHexString(output.getPixel(x,y)));
                }
                checks++;
                if(output.getPixel(size/2,size/2)!=0xffffffff)throw new AssertionError("plate glyph lost");
                checks++; output.recycle();
            }
            int[] after=new int[before.length];raw.getPixels(after,0,256,0,0,256,256);
            if(!java.util.Arrays.equals(before,after)||raw.isRecycled())throw new AssertionError("borrowed plate modified");
            checks++;raw.recycle();
        }
        System.out.println("DEFAULT_CIRCLE_COMPLETE_ARTWORK checks="+checks);
    }
}
