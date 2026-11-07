import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import com.smartisanos.launcher.theme.DefaultIconCircleRenderer;
import java.io.FileOutputStream;

/** Native Canvas demonstration fixtures; these are not screenshots of the reported apps. */
public final class CircleVisualProbe {
    public static void main(String[] args) throws Exception {
        if (args.length > 1) {
            android.os.Looper.prepareMainLooper();
            Class<?> type = Class.forName("android.app.ActivityThread");
            Object thread = type.getMethod("systemMain").invoke(null);
            android.content.Context context = (android.content.Context) type.getMethod("getSystemContext").invoke(thread);
            android.content.pm.PackageManager pm = context.getPackageManager();
            for (int i = 1; i < args.length; i++) {
                String pkg = args[i];
                android.content.Intent request = new android.content.Intent(android.content.Intent.ACTION_MAIN)
                        .addCategory(android.content.Intent.CATEGORY_LAUNCHER).setPackage(pkg);
                android.content.pm.ResolveInfo info = pm.queryIntentActivities(request, 0).get(0);
                Drawable input = pm.getResourcesForApplication(info.activityInfo.applicationInfo)
                        .getDrawableForDensity(info.getIconResource(), 640);
                if (input instanceof BitmapDrawable) ((BitmapDrawable) input).setFilterBitmap(true);
                Bitmap raw = Bitmap.createBitmap(256, 256, Bitmap.Config.ARGB_8888);
                android.graphics.Rect bounds = new android.graphics.Rect(input.getBounds());
                input.setBounds(0, 0, 256, 256); input.draw(new Canvas(raw)); input.setBounds(bounds);
                Bitmap output = DefaultIconCircleRenderer.render(input, 256);
                for (String suffix : new String[]{"raw", "rendered"}) {
                    try (FileOutputStream stream = new FileOutputStream(args[0] + "." + pkg + "." + suffix + ".png")) {
                        ("raw".equals(suffix) ? raw : output).compress(Bitmap.CompressFormat.PNG, 100, stream);
                    }
                }
                System.out.println("REAL_ICON " + pkg + " component=" + info.activityInfo.name
                        + " resource=" + info.getIconResource() + " drawable=" + input.getClass().getName());
                raw.recycle(); output.recycle();
            }
            System.out.println("DEFAULT_CIRCLE_VISUAL_WRITTEN");
            return;
        }
        Bitmap panel = Bitmap.createBitmap(720, 590, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(panel);
        canvas.drawColor(0xffdddddd);
        Paint imagePaint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        for (int row = 0; row < 2; row++) {
            Bitmap source = Bitmap.createBitmap(256,256,Bitmap.Config.ARGB_8888);
            Canvas drawing = new Canvas(source);
            Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
            paint.setColor(row == 0 ? 0xff121218 : 0xff1688cc);
            if (row == 0) drawing.drawRoundRect(new RectF(24,24,232,232),38,38,paint);
            else drawing.drawCircle(128,128,104,paint);
            paint.setColor(0xffffffff);
            Path marker = new Path();
            marker.moveTo(110,94); marker.lineTo(160,128); marker.lineTo(110,162); marker.close();
            drawing.drawPath(marker,paint);
            Drawable drawable = new BitmapDrawable(Resources.getSystem(),source);
            Bitmap legacy = DefaultIconCircleRenderer.render(drawable,256);
            Bitmap adaptive = DefaultIconCircleRenderer.render(new AdaptiveIconDrawable(
                    new ColorDrawable(0xfff2f2f2),drawable),256);
            Bitmap[] images = {source,legacy,adaptive};
            for (int column=0;column<3;column++) {
                canvas.drawBitmap(images[column], null,
                        new RectF(column*240+20,row*250+80,column*240+220,row*250+280),imagePaint);
            }
            adaptive.recycle();legacy.recycle();source.recycle();
        }
        try (FileOutputStream stream = new FileOutputStream(args[0])) {
            panel.compress(Bitmap.CompressFormat.PNG,100,stream);
        }
        panel.recycle();
        System.out.println("DEFAULT_CIRCLE_VISUAL_WRITTEN");
    }
}
