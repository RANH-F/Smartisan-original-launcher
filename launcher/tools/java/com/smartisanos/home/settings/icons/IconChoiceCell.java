package com.smartisanos.home.settings.icons;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

/** Shared chooser artwork/frame/selection presentation; no source or loader ownership. */
public final class IconChoiceCell extends FrameLayout {
    public final ImageView icon, check;
    public final ProgressBar progress;
    public final TextView label;
    public IconChoiceCell(Context context, Drawable background, Drawable marker) {
        super(context);
        setPadding(dp(5), dp(5), dp(5), dp(5));
        FrameLayout box = new FrameLayout(context);
        box.setBackground(background);
        addView(box, new LayoutParams(-1, -1));
        FrameLayout holder = new FrameLayout(context);
        box.addView(holder, new LayoutParams(dp(62), dp(62), Gravity.CENTER));
        icon = new ImageView(context);
        icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
        holder.addView(icon, new LayoutParams(dp(48), dp(48), Gravity.CENTER));
        progress = new ProgressBar(context);
        progress.setVisibility(View.GONE);
        holder.addView(progress, new LayoutParams(dp(24), dp(24), Gravity.CENTER));
        check = new ImageView(context);
        check.setScaleType(ImageView.ScaleType.FIT_CENTER);
        check.setImageDrawable(marker);
        check.setVisibility(View.GONE);
        holder.addView(check, new LayoutParams(dp(24), dp(24), Gravity.RIGHT | Gravity.TOP));
        label = new TextView(context);
        label.setTextSize(10);
        label.setTextColor(0xff9d9fa6);
        label.setGravity(Gravity.CENTER);
        label.setSingleLine(true);
        label.setEllipsize(android.text.TextUtils.TruncateAt.END);
        LayoutParams labelParams = new LayoutParams(-1, dp(18), Gravity.BOTTOM);
        labelParams.bottomMargin = dp(4);
        box.addView(label, labelParams);
    }
    private int dp(int value) { return Math.round(value * getResources().getDisplayMetrics().density); }
    @Override protected void onMeasure(int width, int height) {
        int side = View.MeasureSpec.getSize(width);
        super.onMeasure(width, View.MeasureSpec.makeMeasureSpec(side, View.MeasureSpec.EXACTLY));
    }
}
