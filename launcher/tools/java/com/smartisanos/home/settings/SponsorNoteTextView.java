package com.smartisanos.home.settings;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.util.AttributeSet;
import android.widget.TextView;

/** Keeps continuous sponsor text on ruled lines, including room for future names. */
public final class SponsorNoteTextView extends TextView {
    private final Paint rulePaint = new Paint(Paint.ANTI_ALIAS_FLAG);

    public SponsorNoteTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        rulePaint.setColor(0xffe5e5e5);
        rulePaint.setStrokeWidth(context.getResources().getDisplayMetrics().density * 0.5f);
    }

    private float rowSpacing(Layout layout) {
        int count = layout.getLineCount();
        return count > 1 ? layout.getLineBaseline(count - 1) - layout.getLineBaseline(count - 2)
                : getLineHeight();
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        Layout layout = getLayout();
        if (layout == null || layout.getLineCount() == 0) return;
        float density = getResources().getDisplayMetrics().density;
        float lastRule = getCompoundPaddingTop() + layout.getLineBaseline(layout.getLineCount() - 1)
                + getPaint().getFontMetrics().descent + 4f * density;
        int height = (int) Math.ceil(lastRule + 2f * rowSpacing(layout)
                + getCompoundPaddingBottom() + rulePaint.getStrokeWidth());
        setMeasuredDimension(getMeasuredWidthAndState(), resolveSizeAndState(height, heightMeasureSpec, 0));
    }

    @Override
    protected void onDraw(Canvas canvas) {
        Layout layout = getLayout();
        if (layout != null && layout.getLineCount() > 0) {
            float density = getResources().getDisplayMetrics().density;
            float offset = getTotalPaddingTop() + getPaint().getFontMetrics().descent + 4f * density;
            float left = getCompoundPaddingLeft();
            float right = getWidth() - getCompoundPaddingRight();
            float bottom = getHeight() - getCompoundPaddingBottom() - rulePaint.getStrokeWidth();
            float y = 0;
            for (int i = 0; i < layout.getLineCount(); i++) {
                y = layout.getLineBaseline(i) + offset;
                if (y <= bottom) canvas.drawLine(left, y, right, y, rulePaint);
            }
            float spacing = rowSpacing(layout);
            for (int i = 0; i < 2; i++) {
                y += spacing;
                if (y <= bottom) canvas.drawLine(left, y, right, y, rulePaint);
            }
        }
        super.onDraw(canvas);
    }
}
