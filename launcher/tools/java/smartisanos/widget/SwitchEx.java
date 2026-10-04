package smartisanos.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.animation.PathInterpolator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.CompoundButton;

public class SwitchEx extends CompoundButton {
    private static final java.util.WeakHashMap<Resources, SwitchBitmaps> BITMAPS =
            new java.util.WeakHashMap<Resources, SwitchBitmaps>();

    private static final class SwitchBitmaps {
        final android.content.res.Configuration configuration;
        final int densityDpi;
        final Bitmap[] images;
        SwitchBitmaps(Resources resources, Bitmap[] images) {
            configuration = new android.content.res.Configuration(resources.getConfiguration());
            densityDpi = resources.getDisplayMetrics().densityDpi;
            this.images = images;
        }
        boolean matches(Resources resources) {
            return densityDpi == resources.getDisplayMetrics().densityDpi
                    && configuration.equals(resources.getConfiguration());
        }
    }
    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
    private final PorterDuffXfermode maskMode = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
    private Bitmap bottom;
    private Bitmap frame;
    private Bitmap mask;
    private Bitmap knob;
    private boolean bitmapsLoaded;
    private float checkedProgress;
    private ValueAnimator animator;

    public SwitchEx(Context context) {
        this(context, null);
    }

    public SwitchEx(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SwitchEx(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        setClickable(true);
        setButtonDrawable(null);
        setLayerType(LAYER_TYPE_SOFTWARE, null);
        loadBitmaps();
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        loadBitmaps();
        int width = mask != null ? mask.getWidth() : px(252);
        int height = mask != null ? mask.getHeight() + dp(4) : px(166);
        setMeasuredDimension(resolveSize(width, widthMeasureSpec), resolveSize(height, heightMeasureSpec));
    }

    protected void onDraw(Canvas canvas) {
        loadBitmaps();
        if (!bitmapsLoaded) {
            drawFallback(canvas);
            return;
        }
        drawSmartisanSwitch(canvas);
    }

    private void drawSmartisanSwitch(Canvas canvas) {
        int contentW = mask.getWidth();
        int contentH = mask.getHeight();
        float scale = Math.min(getWidth() / (float) contentW, getHeight() / (float) (contentH + dp(4)));
        canvas.save();
        canvas.translate((getWidth() - contentW * scale) / 2.0f,
                (getHeight() - contentH * scale) / 2.0f);
        canvas.scale(scale, scale);
        canvas.clipRect(0, 0, contentW, contentH);

        float minX = contentW - knob.getWidth();
        float slideX = minX + (0.0f - minX) * checkedProgress;
        paint.setAlpha(isEnabled() ? 255 : 191);
        int layer = canvas.saveLayer(0, 0, contentW, contentH, null, Canvas.ALL_SAVE_FLAG);
        canvas.drawBitmap(bottom, slideX, 0, paint);
        paint.setXfermode(maskMode);
        canvas.drawBitmap(mask, 0, 0, paint);
        paint.setXfermode(null);
        canvas.restoreToCount(layer);
        canvas.drawBitmap(frame, 0, 0, paint);
        canvas.drawBitmap(knob, slideX, 0, paint);
        paint.setAlpha(255);
        canvas.restore();
    }

    public boolean onTouchEvent(MotionEvent event) {
        if (!isClickable()) {
            return false;
        }
        if (event.getAction() == MotionEvent.ACTION_UP) {
            performClick();
            return true;
        }
        return true;
    }

    public boolean performClick() {
        toggle();
        return true;
    }

    public void toggle() {
        setCheckedAnimated(!isChecked());
    }

    public void setChecked(boolean checked) {
        setCheckedInternal(checked, false);
    }

    public void setCheckedAnimated(boolean checked) {
        setCheckedInternal(checked, true);
    }

    private void setCheckedInternal(boolean checked, boolean animate) {
        boolean changed = checked != isChecked();
        invalidate();
        super.setChecked(checked);
        if (animator != null) {
            animator.cancel();
            animator = null;
        }
        float target = checked ? 1.0f : 0.0f;
        if (!animate || !changed || getWindowToken() == null) {
            checkedProgress = target;
            invalidate();
            return;
        }
        animator = ValueAnimator.ofFloat(checkedProgress, target);
        animator.setDuration(260);
        animator.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.2f, 1.0f));
        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator animation) {
                checkedProgress = ((Float) animation.getAnimatedValue()).floatValue();
                invalidate();
            }
        });
        animator.start();
    }

    private void loadBitmaps() {
        if (bitmapsLoaded || bottom != null) {
            return;
        }
        Resources res = getResources();
        synchronized (BITMAPS) {
            SwitchBitmaps cached = BITMAPS.get(res);
            if (cached == null || !cached.matches(res)) {
                Bitmap[] images = {bitmap(res, "switch_ex_bottom"), bitmap(res, "switch_ex_frame"),
                        bitmap(res, "switch_ex_mask"), bitmap(res, "switch_ex_unpressed")};
                if (images[0] != null && images[1] != null && images[2] != null && images[3] != null) {
                    cached = new SwitchBitmaps(res, images);
                    BITMAPS.put(res, cached);
                } else cached = null;
                if (cached == null) {
                    bottom = images[0]; frame = images[1]; mask = images[2]; knob = images[3];
                }
            }
            if (cached != null) {
                // Shared images are read-only; drawing and animation change only each View's Paint.
                bottom = cached.images[0]; frame = cached.images[1];
                mask = cached.images[2]; knob = cached.images[3];
            }
        }
        bitmapsLoaded = bottom != null && frame != null && mask != null && knob != null;
    }

    private Bitmap bitmap(Resources res, String name) {
        int id = res.getIdentifier(name, "drawable", getContext().getPackageName());
        if (id == 0) {
            id = res.getIdentifier(name, "drawable", "com.smartisanos.home");
        }
        if (id == 0) {
            return null;
        }
        try {
            return BitmapFactory.decodeResource(res, id);
        } catch (Throwable ignored) {
            try {
                Drawable drawable = res.getDrawable(id);
                Bitmap bitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmap);
                drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                drawable.draw(canvas);
                return bitmap;
            } catch (Throwable ignoredAgain) {
                return null;
            }
        }
    }

    private void drawFallback(Canvas canvas) {
        float w = getWidth();
        float h = getHeight();
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(isChecked() ? 0xffdfeafc : 0xfffafafa);
        canvas.drawRoundRect(0, 0, w, h, h / 2.0f, h / 2.0f, paint);
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(0xffe6e6e6);
        canvas.drawRoundRect(0.5f, 0.5f, w - 0.5f, h - 0.5f, h / 2.0f, h / 2.0f, paint);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(0xffffffff);
        float r = h / 2.0f - dp(2);
        float cx = h / 2.0f + (w - h) * checkedProgress;
        canvas.drawCircle(cx, h / 2.0f, r, paint);
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }

    private int px(int value) {
        return value;
    }
}
