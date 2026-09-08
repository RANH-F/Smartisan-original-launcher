package com.smartisanos.launcher.quickdesktop;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;

/** Original two-layer Magic Flow host: fixed snapshot background plus one moving content page. */
public final class QuickDesktopHostView extends FrameLayout {
    private static final String TAG = "QuickDesktopHost";
    private static final float DIM_FULL_PROGRESS = 0.40f;
    // The pristine APK uses #4d000000. This port needs a slightly denser final mask because its
    // compatibility blur is a pre-rendered bitmap rather than Smartisan's radius-25 live blur.
    private static final int DIM_COLOR = 0x66000000;
    private static final float FLING_VELOCITY = 900.0f;

    private final int touchSlop;
    private final ImageView blurBackgroundView;
    private final ImageView sharpBackgroundView;
    private final View dimView;
    private final FrameLayout contentLayer;
    private final QuickDesktopContentView contentView;

    private ValueAnimator settlingAnimator;
    private VelocityTracker velocityTracker;
    private float openProgress;
    private float closeDownX;
    private float closeDownY;
    private float closeStartProgress;
    private boolean closingDrag;

    public QuickDesktopHostView(Context context) {
        this(context, null);
    }

    public QuickDesktopHostView(Context context, AttributeSet attrs) {
        super(context, attrs);
        ViewConfiguration configuration = ViewConfiguration.get(context);
        touchSlop = configuration.getScaledTouchSlop();
        setBackgroundColor(Color.TRANSPARENT);
        sharpBackgroundView = new ImageView(context);
        sharpBackgroundView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        sharpBackgroundView.setAlpha(0.0f);
        addView(sharpBackgroundView, new FrameLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));
        blurBackgroundView = new ImageView(context);
        blurBackgroundView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        blurBackgroundView.setAlpha(0.0f);
        addView(blurBackgroundView, new FrameLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));
        dimView = new View(context);
        dimView.setBackgroundColor(DIM_COLOR);
        dimView.setAlpha(0.0f);
        addView(dimView, new FrameLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));
        contentLayer = new FrameLayout(context);
        contentLayer.setBackgroundColor(Color.TRANSPARENT);
        contentView = new QuickDesktopContentView(context);
        contentLayer.addView(contentView, new FrameLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));
        addView(contentLayer, new FrameLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));
        setClickable(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
        setVisibility(GONE);
        setContentTranslation(-effectiveWidth(), "init");
    }

    float getOpenProgress() {
        return openProgress;
    }

    float getPageWidth() {
        return effectiveWidth();
    }

    void refreshContent() {
        contentView.invalidate();
    }

    void setBackgroundSnapshots(Bitmap sharpBitmap, Bitmap blurBitmap) {
        if (sharpBitmap == null || sharpBitmap.isRecycled()
                || blurBitmap == null || blurBitmap.isRecycled()) {
            return;
        }
        sharpBackgroundView.setImageBitmap(sharpBitmap);
        blurBackgroundView.setImageBitmap(blurBitmap);
        updateBackground(openProgress);
        Log.i(TAG, "QD_BACKGROUND_APPLIED sharp=" + sharpBitmap.getWidth() + "x"
                + sharpBitmap.getHeight() + " blur=" + blurBitmap.getWidth() + "x"
                + blurBitmap.getHeight());
    }

    void clearBackgroundSnapshots() {
        sharpBackgroundView.setImageDrawable(null);
        blurBackgroundView.setImageDrawable(null);
        sharpBackgroundView.setAlpha(0.0f);
        blurBackgroundView.setAlpha(0.0f);
        dimView.setAlpha(0.0f);
    }

    void ensureVisibleForOriginalRequest() {
        if (openProgress <= 0.0f) {
            setVisibility(VISIBLE);
        }
    }

    void setContentTranslation(float translationX, String reason) {
        float width = effectiveWidth();
        float clampedTranslation = Math.max(-width, Math.min(0.0f, translationX));
        openProgress = clamp01(1.0f + clampedTranslation / width);
        if (openProgress <= 0.0f) {
            setAlpha(1.0f);
            updateBackground(0.0f);
            contentLayer.setTranslationX(-width);
            if (settlingAnimator == null || !settlingAnimator.isRunning()) {
                setVisibility(GONE);
                clearFocus();
                QuickDesktopController.onHostClosed();
            }
            return;
        }
        if (getVisibility() != VISIBLE) {
            setVisibility(VISIBLE);
            bringToFront();
        }
        setAlpha(1.0f);
        setTranslationX(0.0f);
        contentLayer.setTranslationX(clampedTranslation);
        updateBackground(openProgress);
        if (openProgress >= 0.999f) {
            contentLayer.setTranslationX(0.0f);
            requestFocus();
        }
    }

    void applyContentDelta(float deltaX, String reason) {
        cancelSettling();
        setContentTranslation(contentLayer.getTranslationX() + deltaX, reason);
    }

    void setOpenProgress(float progress, String reason) {
        cancelSettling();
        float clamped = clamp01(progress);
        setContentTranslation(-effectiveWidth() * (1.0f - clamped), reason);
    }

    void cancelSettling() {
        if (settlingAnimator != null) {
            settlingAnimator.cancel();
            settlingAnimator = null;
        }
    }

    void settleTo(float target, float velocityX, String reason) {
        target = target >= 0.5f ? 1.0f : 0.0f;
        cancelSettling();
        if (Math.abs(target - openProgress) < 0.001f) {
            setContentTranslation(finalTranslation(target), reason);
            logState(reason, target);
            return;
        }
        final float finalTarget = target;
        final String finalReason = reason;
        float startTranslation = contentLayer.getTranslationX();
        float endTranslation = finalTranslation(finalTarget);
        float distancePixels = Math.abs(endTranslation - startTranslation);
        long duration = 200L;
        if (distancePixels < effectiveWidth() / 5.0f) {
            duration = Math.max(1L, (long) distancePixels);
        }
        ValueAnimator animator = ValueAnimator.ofFloat(startTranslation, endTranslation);
        settlingAnimator = animator;
        animator.setDuration(duration);
        animator.setInterpolator(new DecelerateInterpolator(1.5f));
        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                setContentTranslation((Float) valueAnimator.getAnimatedValue(), finalReason);
            }
        });
        animator.addListener(new AnimatorListenerAdapter() {
            private boolean cancelled;

            @Override
            public void onAnimationCancel(Animator animation) {
                cancelled = true;
            }

            @Override
            public void onAnimationEnd(Animator animation) {
                if (settlingAnimator == animation) {
                    settlingAnimator = null;
                }
                if (!cancelled) {
                    setContentTranslation(finalTranslation(finalTarget), finalReason);
                    if (finalTarget >= 1.0f) {
                        QuickDesktopController.onHostOpened();
                    }
                    logState(finalReason, finalTarget);
                }
            }
        });
        animator.start();
    }

    void closeImmediately(String reason) {
        cancelSettling();
        openProgress = 0.0f;
        setAlpha(1.0f);
        updateBackground(0.0f);
        setTranslationX(0.0f);
        contentLayer.setTranslationX(-effectiveWidth());
        setVisibility(GONE);
        clearFocus();
        QuickDesktopController.onHostClosed();
        logState(reason, 0.0f);
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (openProgress > 0.0f && event.getKeyCode() == KeyEvent.KEYCODE_BACK) {
            if (event.getAction() == KeyEvent.ACTION_UP) {
                settleTo(0.0f, 0.0f, "back");
            }
            return true;
        }
        return super.dispatchKeyEvent(event);
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        if (openProgress <= 0.0f) {
            return false;
        }
        int action = event.getActionMasked();
        if (action == MotionEvent.ACTION_DOWN) {
            cancelSettling();
            closeDownX = event.getX();
            closeDownY = event.getY();
            closeStartProgress = openProgress;
            closingDrag = false;
            recycleVelocityTracker();
            velocityTracker = VelocityTracker.obtain();
            velocityTracker.addMovement(event);
            return true;
        }
        if (velocityTracker != null) {
            velocityTracker.addMovement(event);
        }
        if (action == MotionEvent.ACTION_MOVE) {
            float dx = event.getX() - closeDownX;
            float dy = event.getY() - closeDownY;
            if (!closingDrag && Math.abs(dx) > touchSlop && Math.abs(dx) > Math.abs(dy)) {
                closingDrag = dx < 0.0f;
            }
            if (closingDrag) {
                setContentTranslation(-effectiveWidth() * (1.0f - closeStartProgress) + dx,
                        "host-drag");
            }
            return true;
        }
        if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
            float velocityX = 0.0f;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(1000);
                velocityX = velocityTracker.getXVelocity();
            }
            boolean tap = action == MotionEvent.ACTION_UP && !closingDrag
                    && Math.abs(event.getX() - closeDownX) <= touchSlop
                    && Math.abs(event.getY() - closeDownY) <= touchSlop;
            if (tap && openProgress >= 0.999f
                    && contentView.performActionAt(event.getX(), event.getY())) {
                recycleVelocityTracker();
                closingDrag = false;
                return true;
            }
            boolean close = action == MotionEvent.ACTION_CANCEL
                    || velocityX < -FLING_VELOCITY
                    || (velocityX <= FLING_VELOCITY && openProgress <= (1.0f / 3.0f));
            settleTo(close ? 0.0f : 1.0f, velocityX,
                    action == MotionEvent.ACTION_CANCEL ? "close-cancel" : "close-release");
            recycleVelocityTracker();
            closingDrag = false;
            return true;
        }
        return true;
    }

    @Override
    protected void onDetachedFromWindow() {
        cancelSettling();
        recycleVelocityTracker();
        super.onDetachedFromWindow();
    }

    private float effectiveWidth() {
        int width = getWidth();
        if (width <= 0 && getParent() instanceof View) {
            width = ((View) getParent()).getWidth();
        }
        if (width <= 0) {
            width = getResources().getDisplayMetrics().widthPixels;
        }
        return Math.max(1, width);
    }

    private float finalTranslation(float target) {
        return target >= 0.5f ? 0.0f : -effectiveWidth();
    }

    private void updateBackground(float visibleProgress) {
        if (visibleProgress <= 0.0f) {
            blurBackgroundView.setAlpha(0.0f);
            sharpBackgroundView.setAlpha(0.0f);
            dimView.setAlpha(0.0f);
            return;
        }
        float normalized = clamp01(visibleProgress / DIM_FULL_PROGRESS);
        // The pristine screenshot is an opaque backing surface. Fading it out would expose the
        // still-rendering Launcher surface and create doubled icons during a paused drag.
        sharpBackgroundView.setAlpha(1.0f);
        blurBackgroundView.setAlpha(normalized);
        dimView.setAlpha(normalized);
    }

    private void recycleVelocityTracker() {
        if (velocityTracker != null) {
            velocityTracker.recycle();
            velocityTracker = null;
        }
    }

    private void logState(String reason, float target) {
        Log.i(TAG, "QD_HOST_STATE reason=" + reason + " target=" + target
                + " visibility=" + getVisibility());
    }

    private static float clamp01(float value) {
        return Math.max(0.0f, Math.min(1.0f, value));
    }
}
