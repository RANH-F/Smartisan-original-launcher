package com.smartisanos.launcher.quickdesktop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;

import com.smartisanos.launcher.theme.WeatherBridge;

import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * Original Magic Flow first-screen presentation.
 *
 * <p>The coordinate system is the original 432dp-wide layout. The complete presentation is one
 * view so RootView progress can translate it as one rigid page without independent card drift.</p>
 */
final class QuickDesktopContentView extends View {
    private static final float DESIGN_WIDTH = 432.0f;
    private static final float DESIGN_HEIGHT = 768.0f;
    private static final float CONTENT_OFFSET_Y = 42.0f;
    private static final String ASSET_ROOT = "quickdesktop_original/";

    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
    private final Paint strokePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Bitmap musicDefault;
    private final Bitmap musicIcon;
    private final Bitmap alipayScan;
    private final Bitmap alipayQr;
    private final Bitmap paymentScanNeutral;
    private final Bitmap paymentQrNeutral;
    private final Bitmap setting;
    private final Bitmap search;
    private final Bitmap[] shortcutIcons;
    private float musicTop = -1.0f;
    private float shortcutsTop = -1.0f;
    private float lifeTop = -1.0f;
    private QuickDesktopMediaBridge.Snapshot mediaSnapshot;
    private boolean musicControlsMode;
    private String paymentIconProvider;
    private Bitmap paymentProviderIcon;

    QuickDesktopContentView(Context context) {
        super(context);
        setLayerType(View.LAYER_TYPE_HARDWARE, null);
        paint.setTypeface(Typeface.create("sans", Typeface.NORMAL));
        strokePaint.setStyle(Paint.Style.STROKE);
        strokePaint.setStrokeCap(Paint.Cap.ROUND);
        strokePaint.setStrokeJoin(Paint.Join.ROUND);
        musicDefault = load("music_default.png");
        musicIcon = load("music_def_app_icon.png");
        alipayScan = load("alipay_pay_scan.png");
        alipayQr = load("alipay_pay_qr.png");
        paymentScanNeutral = neutralizePaymentBadge(alipayScan);
        paymentQrNeutral = neutralizePaymentBadge(alipayQr);
        setting = load("setting.png");
        search = load("search_icon.png");
        shortcutIcons = new Bitmap[] {
                load("notes.png"), load("calendar.png"), load("sound_record.png"),
                load("calculator.png"), load("city_service.png"), load("clock.png")
        };
        setContentDescription("快捷桌面");
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float scale = contentScale();
        if (scale <= 0.0f) {
            return;
        }
        canvas.save();
        canvas.translate(contentLeft(scale), 0.0f);
        canvas.scale(scale, scale);
        canvas.translate(0.0f, CONTENT_OFFSET_Y);
        drawHeader(canvas);
        float top = 199.0f;
        musicTop = -1.0f;
        shortcutsTop = -1.0f;
        lifeTop = -1.0f;
        if (QuickDesktopController.isCardEnabled(getContext(),
                QuickDesktopController.CARD_MUSIC_PAYMENT)) {
            mediaSnapshot = QuickDesktopMediaBridge.read(getContext());
            musicTop = top;
            drawMusicAndPayment(canvas, top);
            top += 273.0f;
        }
        if (QuickDesktopController.isCardEnabled(getContext(),
                QuickDesktopController.CARD_SHORTCUTS)) {
            shortcutsTop = top;
            drawShortcutCard(canvas, top);
            top += 102.0f;
        }
        // The pristine Calendar card is data-driven and remains GONE when there are no events.
        // Its preference is retained now; event rendering is connected with calendar access later.
        if (QuickDesktopController.isCardEnabled(getContext(), QuickDesktopController.CARD_LIFE)) {
            lifeTop = top;
            drawExpressCard(canvas, top);
        }
        canvas.restore();
        if (musicTop >= 0.0f && getVisibility() == VISIBLE) {
            postInvalidateDelayed(1000L);
        }
    }

    boolean performActionAt(float x, float y) {
        float scale = contentScale();
        if (scale <= 0.0f) {
            return false;
        }
        float designX = (x - contentLeft(scale)) / scale;
        float designY = y / scale - CONTENT_OFFSET_Y;
        if (inside(designX, designY, 356.0f, 40.0f, 422.0f, 105.0f)) {
            return QuickDesktopActions.openLauncherSettings(getContext());
        }
        if (inside(designX, designY, 19.2f, 145.0f, 412.8f, 190.0f)) {
            return QuickDesktopActions.openSearch(getContext());
        }
        if (musicTop >= 0.0f && designY >= musicTop && designY <= musicTop + 256.8f) {
            if (designX < 282.0f) {
                if (inside(designX, designY, 19.0f, musicTop,
                        72.0f, musicTop + 52.0f)) {
                    return QuickDesktopActions.openMusic(getContext());
                }
                if (musicControlsMode) {
                    float controlY = musicTop + 211.0f;
                    if (inCircle(designX, designY, 82.0f, controlY, 27.0f)) {
                        boolean handled = QuickDesktopMediaBridge.skipPrevious(getContext());
                        if (handled) postInvalidateDelayed(180L);
                        return handled;
                    }
                    if (inCircle(designX, designY, 147.5f, controlY, 31.0f)) {
                        boolean handled = QuickDesktopMediaBridge.togglePlayback(getContext());
                        if (handled) postInvalidateDelayed(80L);
                        return handled;
                    }
                    if (inCircle(designX, designY, 213.0f, controlY, 27.0f)) {
                        boolean handled = QuickDesktopMediaBridge.skipNext(getContext());
                        if (handled) postInvalidateDelayed(180L);
                        return handled;
                    }
                    musicControlsMode = false;
                    invalidate();
                    return true;
                }
                if (inCircle(designX, designY, 228.0f, musicTop + 218.0f, 34.0f)) {
                    boolean handled = QuickDesktopMediaBridge.togglePlayback(getContext());
                    if (handled) postInvalidateDelayed(80L);
                    return handled;
                }
                musicControlsMode = true;
                invalidate();
                return true;
            }
            if (designX >= 287.0f) {
                return QuickDesktopActions.openAlipay(getContext(),
                        designY >= musicTop + 128.0f);
            }
        }
        if (shortcutsTop >= 0.0f
                && inside(designX, designY, 19.2f, shortcutsTop, 412.8f,
                        shortcutsTop + 85.2f)) {
            int index = Math.min(5, Math.max(0,
                    (int) ((designX - 19.2f) / ((412.8f - 19.2f) / 6.0f))));
            return QuickDesktopActions.openShortcut(getContext(), index);
        }
        if (lifeTop >= 0.0f
                && inside(designX, designY, 19.2f, lifeTop, 412.8f, lifeTop + 105.0f)) {
            // The original account service no longer exists on ordinary Android. Route the
            // retained entry to the phone's browser instead of exposing a non-working page.
            return QuickDesktopActions.openBrowser(getContext());
        }
        return false;
    }

    private void drawHeader(Canvas canvas) {
        Bundle weather = WeatherBridge.getWeatherBundle(getContext());
        String temperature = weather == null ? "--" : weather.getString("temp", "--");
        String weatherText = weather == null ? "天气数据不可用" : weatherDescription(
                weather.getString("weatherCode", "99"));
        paint.setTypeface(Typeface.create("sans", Typeface.NORMAL));
        paint.setTextSize(58.0f);
        float degreeX = 20.0f + paint.measureText(temperature) + 7.0f;
        text(canvas, temperature, 20.0f, 91.0f, 58.0f, Color.WHITE, false, 1.0f);
        text(canvas, "°C", degreeX, 65.0f, 17.0f, Color.WHITE, false, 1.0f);
        String city = weather == null ? "当前位置" : weather.getString("city", "当前位置");
        text(canvas, weatherText + "  |  " + city, 20.0f, 116.0f, 14.0f,
                Color.WHITE, false, 1.0f);
        String date = new SimpleDateFormat("M 月 d 日", Locale.CHINA).format(new Date());
        text(canvas, date + "  |  " + QuickDesktopController.getCustomHeaderText(getContext()),
                20.0f, 135.0f, 10.0f,
                0x99ffffff, false, 1.0f);

        drawBitmap(canvas, setting, 367.0f, 50.0f, 48.0f, 40.0f);

        paint.setColor(0x2effffff);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawRoundRect(new RectF(19.2f, 151.0f, 412.8f, 183.0f),
                16.0f, 16.0f, paint);
        drawBitmap(canvas, search, 30.0f, 158.0f, 18.0f, 18.0f);
        verticallyCenteredText(canvas, "搜索", 54.0f, 167.0f, 15.0f,
                0x66ffffff, false);
    }

    private String weatherDescription(String value) {
        int code;
        try {
            code = Integer.parseInt(value);
        } catch (NumberFormatException ignored) {
            code = 99;
        }
        switch (code) {
            case 0: return "晴";
            case 1: return "多云";
            case 2: return "阴";
            case 4:
            case 5: return "雷阵雨";
            case 6:
            case 7:
            case 8:
            case 9: return "雨";
            case 13:
            case 14:
            case 15:
            case 16: return "雪";
            case 18: return "雾霾";
            case 19: return "沙尘";
            default: return "天气";
        }
    }

    private void drawMusicAndPayment(Canvas canvas, float top) {
        Bitmap artwork = mediaSnapshot == null ? null : mediaSnapshot.artwork;
        drawRoundedBitmap(canvas, artwork == null ? musicDefault : artwork,
                19.2f, top, 256.8f, 256.8f, 13.0f);
        if (artwork != null) {
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(0x66000000);
            canvas.drawRoundRect(new RectF(19.2f, top, 276.0f, top + 256.8f),
                    13.0f, 13.0f, paint);
        }
        drawBitmap(canvas, musicIcon, 22.0f, top + 3.0f, 42.0f, 42.0f);
        String title = mediaSnapshot == null ? "Smartisan 音乐" : mediaSnapshot.title;
        String artist = mediaSnapshot == null ? "开启全新的视听盛宴" : mediaSnapshot.artist;
        boolean playing = mediaSnapshot != null && mediaSnapshot.playing;
        if (musicControlsMode) {
            centeredText(canvas, ellipsizeToWidth(title, 19.2f, 210.0f, true),
                    147.6f, top + 120.0f,
                    19.2f, Color.WHITE, true);
            centeredText(canvas, ellipsizeToWidth(artist, 14.4f, 210.0f, false),
                    147.6f, top + 145.0f,
                    14.4f, 0x99ffffff, false);
            drawPreviousNext(canvas, 82.0f, top + 211.0f, false);
            drawPlayButton(canvas, 147.5f, top + 211.0f, 25.0f, playing);
            drawPreviousNext(canvas, 213.0f, top + 211.0f, true);
        } else {
            text(canvas, ellipsizeToWidth(title, 19.2f, 150.0f, true),
                    35.0f, top + 214.0f, 19.2f,
                    Color.WHITE, true, 1.0f);
            text(canvas, ellipsizeToWidth(artist, 14.4f, 150.0f, false),
                    35.0f, top + 235.0f, 14.4f,
                    0x99ffffff, false, 1.0f);
            drawPlayButton(canvas, 228.0f, top + 218.0f, 25.0f, playing);
        }

        boolean weChat = QuickDesktopController.PAYMENT_WECHAT.equals(
                QuickDesktopController.getPaymentProvider(getContext()));
        drawBitmap(canvas, weChat ? paymentScanNeutral : alipayScan,
                291.0f, top, 121.8f, 120.0f);
        drawBitmap(canvas, weChat ? paymentQrNeutral : alipayQr,
                291.0f, top + 136.8f, 121.8f, 120.0f);
        if (weChat) {
            drawPaymentProviderBadge(canvas, top + 98.4f, "com.tencent.mm");
            drawPaymentProviderBadge(canvas, top + 235.2f, "com.tencent.mm");
        }
    }

    private void drawShortcutCard(Canvas canvas, float top) {
        final float left = 19.2f;
        final float right = 412.8f;
        final float bottom = top + 85.2f;
        paint.setColor(0x30ffffff);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawRoundRect(new RectF(left, top, right, bottom), 13.0f, 13.0f, paint);
        float slot = (right - left) / 6.0f;
        for (int i = 0; i < shortcutIcons.length; i++) {
            float centerX = left + slot * (i + 0.5f);
            drawBitmap(canvas, shortcutIcons[i], centerX - 14.0f, top + 28.6f,
                    28.0f, 28.0f);
        }
    }

    private void drawExpressCard(Canvas canvas, float top) {
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(0xffead9a7);
        canvas.drawRoundRect(new RectF(19.2f, top, 412.8f, top + 105.0f),
                13.0f, 13.0f, paint);
        text(canvas, "快递信息智能跟踪", 34.0f, top + 49.0f, 17.0f,
                0xff6c6249, true, 1.0f);
        text(canvas, "绑定手机号快速开启  ›", 34.0f, top + 74.0f, 13.0f,
                0x996c6249, false, 1.0f);
        strokePaint.setColor(0x336c6249);
        strokePaint.setStrokeWidth(2.0f);
        RectF box = new RectF(354.0f, top + 34.0f, 385.0f, top + 65.0f);
        canvas.drawRoundRect(box, 4.0f, 4.0f, strokePaint);
        canvas.drawLine(354.0f, top + 43.0f, 369.5f, top + 52.0f, strokePaint);
        canvas.drawLine(385.0f, top + 43.0f, 369.5f, top + 52.0f, strokePaint);
        canvas.drawLine(369.5f, top + 52.0f, 369.5f, top + 66.0f, strokePaint);
    }

    private boolean inside(float x, float y, float left, float top, float right, float bottom) {
        return x >= left && x <= right && y >= top && y <= bottom;
    }

    private boolean inCircle(float x, float y, float cx, float cy, float radius) {
        float dx = x - cx;
        float dy = y - cy;
        return dx * dx + dy * dy <= radius * radius;
    }

    private float contentScale() {
        float widthScale = getWidth() / DESIGN_WIDTH;
        float heightScale = getHeight() / DESIGN_HEIGHT;
        return Math.min(widthScale, heightScale);
    }

    private float contentLeft(float scale) {
        return (getWidth() - DESIGN_WIDTH * scale) * 0.5f;
    }

    private void centeredText(Canvas canvas, String value, float centerX, float centerY,
            float size, int color, boolean bold) {
        paint.setStyle(Paint.Style.FILL);
        paint.setTypeface(Typeface.create("sans", bold ? Typeface.BOLD : Typeface.NORMAL));
        paint.setTextSize(size);
        paint.setColor(color);
        paint.setAlpha(255);
        Paint.FontMetrics metrics = paint.getFontMetrics();
        float baseline = centerY - (metrics.ascent + metrics.descent) * 0.5f;
        canvas.drawText(value, centerX - paint.measureText(value) * 0.5f, baseline, paint);
    }

    private void verticallyCenteredText(Canvas canvas, String value, float left, float centerY,
            float size, int color, boolean bold) {
        paint.setStyle(Paint.Style.FILL);
        paint.setTypeface(Typeface.create("sans", bold ? Typeface.BOLD : Typeface.NORMAL));
        paint.setTextSize(size);
        paint.setColor(color);
        paint.setAlpha(255);
        Paint.FontMetrics metrics = paint.getFontMetrics();
        float baseline = centerY - (metrics.ascent + metrics.descent) * 0.5f;
        canvas.drawText(value, left, baseline, paint);
    }

    private void drawPreviousNext(Canvas canvas, float cx, float cy, boolean next) {
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(Color.WHITE);
        float direction = next ? 1.0f : -1.0f;
        for (int i = 0; i < 2; i++) {
            float offset = direction * (i == 0 ? -5.0f : 6.0f);
            Path triangle = new Path();
            triangle.moveTo(cx + offset - direction * 7.0f, cy - 8.0f);
            triangle.lineTo(cx + offset + direction * 7.0f, cy);
            triangle.lineTo(cx + offset - direction * 7.0f, cy + 8.0f);
            triangle.close();
            canvas.drawPath(triangle, paint);
        }
    }

    private void drawPlayButton(Canvas canvas, float cx, float cy, float radius,
            boolean playing) {
        strokePaint.setColor(Color.WHITE);
        strokePaint.setStrokeWidth(2.0f);
        canvas.drawCircle(cx, cy, radius, strokePaint);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(Color.WHITE);
        if (playing) {
            canvas.drawRoundRect(new RectF(cx - 8.0f, cy - 10.0f, cx - 2.0f, cy + 10.0f),
                    1.5f, 1.5f, paint);
            canvas.drawRoundRect(new RectF(cx + 3.0f, cy - 10.0f, cx + 9.0f, cy + 10.0f),
                    1.5f, 1.5f, paint);
        } else {
            Path triangle = new Path();
            triangle.moveTo(cx - 6.0f, cy - 10.0f);
            triangle.lineTo(cx + 11.0f, cy);
            triangle.lineTo(cx - 6.0f, cy + 10.0f);
            triangle.close();
            canvas.drawPath(triangle, paint);
        }
    }

    private String ellipsizeToWidth(String value, float textSize, float maxWidth,
            boolean bold) {
        if (value == null) return "";
        paint.setTypeface(Typeface.create("sans", bold ? Typeface.BOLD : Typeface.NORMAL));
        paint.setTextSize(textSize);
        if (paint.measureText(value) <= maxWidth) return value;
        String suffix = "…";
        float suffixWidth = paint.measureText(suffix);
        int end = value.length();
        while (end > 0 && paint.measureText(value, 0, end) + suffixWidth > maxWidth) {
            end--;
        }
        if (end > 0 && Character.isHighSurrogate(value.charAt(end - 1))) end--;
        return value.substring(0, end) + suffix;
    }

    private void text(Canvas canvas, String value, float x, float baseline, float size,
            int color, boolean bold, float alpha) {
        paint.setStyle(Paint.Style.FILL);
        paint.setTypeface(Typeface.create("sans", bold ? Typeface.BOLD : Typeface.NORMAL));
        paint.setTextSize(size);
        paint.setColor(color);
        paint.setAlpha(Math.round(255.0f * alpha));
        canvas.drawText(value, x, baseline, paint);
        paint.setAlpha(255);
    }

    private void drawBitmap(Canvas canvas, Bitmap bitmap, float left, float top,
            float width, float height) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        paint.setAlpha(255);
        canvas.drawBitmap(bitmap, null, new RectF(left, top, left + width, top + height), paint);
    }

    private void drawRoundedBitmap(Canvas canvas, Bitmap bitmap, float left, float top,
            float width, float height, float radius) {
        if (bitmap == null || bitmap.isRecycled()) return;
        RectF bounds = new RectF(left, top, left + width, top + height);
        Path clip = new Path();
        clip.addRoundRect(bounds, radius, radius, Path.Direction.CW);
        canvas.save();
        canvas.clipPath(clip);
        paint.setAlpha(255);
        canvas.drawBitmap(bitmap, null, bounds, paint);
        canvas.restore();
    }

    private void drawPaymentProviderBadge(Canvas canvas, float centerY, String packageName) {
        Bitmap icon = paymentProviderIcon(packageName);
        if (icon == null) return;
        // Match the original Alipay badge's visible disc (about 20 design px).
        // The project WeChat artwork contains transparent padding, which is cropped
        // when loaded so both providers share the same visual size and anchor.
        float radius = 10.0f;
        canvas.drawBitmap(icon, null,
                new RectF(390.5f - radius, centerY - radius,
                        390.5f + radius, centerY + radius), paint);
    }

    private Bitmap paymentProviderIcon(String packageName) {
        if (packageName.equals(paymentIconProvider) && paymentProviderIcon != null
                && !paymentProviderIcon.isRecycled()) {
            return paymentProviderIcon;
        }
        paymentIconProvider = packageName;
        paymentProviderIcon = null;
        try {
            if ("com.tencent.mm".equals(packageName)) {
                Bitmap projectBadge = loadProjectWechatBadge();
                if (projectBadge != null) {
                    paymentProviderIcon = projectBadge;
                    return paymentProviderIcon;
                }
            }
            Drawable drawable = getContext().getPackageManager().getApplicationIcon(packageName);
            Bitmap bitmap = Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap);
            Paint badgePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
            badgePaint.setColor(0xff07c160);
            canvas.drawCircle(48.0f, 48.0f, 48.0f, badgePaint);
            Path clip = new Path();
            clip.addCircle(48.0f, 48.0f, 48.0f, Path.Direction.CW);
            canvas.save();
            canvas.clipPath(clip);
            drawable.setBounds(0,0,96,96);
            drawable.draw(canvas);
            canvas.restore();
            paymentProviderIcon = bitmap;
        } catch (Throwable ignored) {
        }
        return paymentProviderIcon;
    }

    private Bitmap loadProjectWechatBadge() {
        return cropTransparentBounds(load("wechat_badge.png"));
    }

    private Bitmap cropTransparentBounds(Bitmap source) {
        if (source == null || source.isRecycled()) return source;
        int width = source.getWidth();
        int height = source.getHeight();
        int minX = width;
        int minY = height;
        int maxX = -1;
        int maxY = -1;
        for (int y = 0; y < height; y++) {
            for (int x = 0; x < width; x++) {
                if (Color.alpha(source.getPixel(x, y)) == 0) continue;
                if (x < minX) minX = x;
                if (x > maxX) maxX = x;
                if (y < minY) minY = y;
                if (y > maxY) maxY = y;
            }
        }
        if (maxX < minX || maxY < minY
                || (minX == 0 && minY == 0 && maxX == width - 1 && maxY == height - 1)) {
            return source;
        }
        return Bitmap.createBitmap(source, minX, minY,
                maxX - minX + 1, maxY - minY + 1);
    }

    private Bitmap neutralizePaymentBadge(Bitmap source) {
        if (source == null) return null;
        Bitmap output = source.copy(Bitmap.Config.ARGB_8888, true);
        if (output == null) return source;
        // The source badge is a 48 px opaque disc plus a small shadow, centered at
        // (240, 247). Restore only that circular footprint to the card's native
        // translucent pixel; touching the card's right/bottom edges creates a visible box.
        int centerX = Math.min(240, output.getWidth() - 1);
        int centerY = Math.min(247, output.getHeight() - 1);
        int radius = 36;
        int background = source.getPixel(Math.max(0, centerX - 50), centerY);
        for (int y = Math.max(0, centerY - radius);
                y <= Math.min(output.getHeight() - 1, centerY + radius); y++) {
            for (int x = Math.max(0, centerX - radius);
                    x <= Math.min(output.getWidth() - 1, centerX + radius); x++) {
                int dx = x - centerX;
                int dy = y - centerY;
                if (dx * dx + dy * dy <= radius * radius) {
                    output.setPixel(x, y, background);
                }
            }
        }
        return output;
    }

    private Bitmap load(String name) {
        try (InputStream input = getContext().getAssets().open(ASSET_ROOT + name)) {
            return BitmapFactory.decodeStream(input);
        } catch (IOException ignored) {
            return null;
        }
    }
}
