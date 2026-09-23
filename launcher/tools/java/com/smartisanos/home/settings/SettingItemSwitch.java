package com.smartisanos.home.settings;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import smartisanos.widget.SwitchEx;

public class SettingItemSwitch extends RelativeLayout {
    private SwitchEx toggle;
    private TextView title;
    private TextView subtitle;
    private boolean switchTouchStarted;
    private boolean labelNavigationEnabled;

    public void setLabelNavigationEnabled(boolean enabled) {
        labelNavigationEnabled = enabled;
    }

    @Override public boolean dispatchTouchEvent(android.view.MotionEvent event) {
        if (event.getActionMasked() == android.view.MotionEvent.ACTION_DOWN) {
            android.graphics.Rect bounds = new android.graphics.Rect();
            if (toggle != null) {
                toggle.getDrawingRect(bounds);
                offsetDescendantRectToMyCoords(toggle, bounds);
            }
            switchTouchStarted = toggle != null
                    && bounds.contains((int) event.getX(), (int) event.getY());
        }
        if (!switchTouchStarted && !labelNavigationEnabled) return false;
        boolean handled = super.dispatchTouchEvent(event);
        if (event.getActionMasked() == android.view.MotionEvent.ACTION_UP
                || event.getActionMasked() == android.view.MotionEvent.ACTION_CANCEL) {
            switchTouchStarted = false;
        }
        return handled;
    }

    public SettingItemSwitch(Context context) {
        this(context, null);
    }

    public SettingItemSwitch(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SettingItemSwitch(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        setClickable(true);

        if (!inflateMaintainedLayout(context)) {
            createFallbackLayout(context);
        }
        int titleRes = attrRes(attrs, "setting_item_switch_title");
        if (title != null && titleRes != 0) {
            title.setText(getResources().getText(titleRes));
        }
        if (title != null) {
            title.setTypeface(Typeface.create("sans-serif", Typeface.NORMAL));
        }

        setOnClickListener(new OnClickListener() {
            public void onClick(android.view.View v) {
                setChecked(!isChecked());
            }
        });
    }

    public void setChecked(boolean checked) {
        toggle.setChecked(checked);
    }

    public void setCheckedAnimated(boolean checked) {
        toggle.setCheckedAnimated(checked);
    }

    public boolean isChecked() {
        return toggle.isChecked();
    }

    public SwitchEx getSwitch() {
        return toggle;
    }

    public void setTitle(CharSequence value) {
        if (title != null) {
            title.setText(value);
        }
    }

    public void setSwitchSubtitle(CharSequence value) {
        if (subtitle != null) {
            subtitle.setText(value);
            subtitle.setVisibility(value == null || value.length() == 0 ? GONE : VISIBLE);
        }
        setContentDescription(value);
    }

    private boolean inflateMaintainedLayout(Context context) {
        int layoutId = getResources().getIdentifier("setting_item_switch_layout", "layout", getPackageName());
        if (layoutId == 0) {
            layoutId = getResources().getIdentifier("setting_item_switch_layout", "layout", "com.smartisanos.home");
        }
        if (layoutId == 0) {
            return false;
        }
        try {
            LayoutInflater.from(context).inflate(layoutId, this, true);
            View switchView = findByName("item_switch");
            if (switchView instanceof SwitchEx) {
                toggle = (SwitchEx) switchView;
                toggle.setClickable(false);
                toggle.setFocusable(false);
            }
            View titleView = findByName("item_title");
            if (titleView instanceof TextView) {
                title = (TextView) titleView;
            }
            View subtitleView = findByName("item_subtitle_text");
            if (!(subtitleView instanceof TextView)) {
                subtitleView = findByName("item_summary");
            }
            if (subtitleView instanceof TextView) {
                subtitle = (TextView) subtitleView;
            }
            return toggle != null && title != null;
        } catch (Throwable ignored) {
            removeAllViews();
            return false;
        }
    }

    private void createFallbackLayout(Context context) {
        toggle = new SwitchEx(context);
        toggle.setId(android.view.View.generateViewId());
        toggle.setClickable(false);
        toggle.setFocusable(false);
        RelativeLayout.LayoutParams switchLp = new RelativeLayout.LayoutParams(-2, -2);
        switchLp.addRule(ALIGN_PARENT_RIGHT);
        switchLp.addRule(CENTER_VERTICAL);
        switchLp.rightMargin = dp(18);
        addView(toggle, switchLp);

        LinearLayout titleLayout = new LinearLayout(context);
        titleLayout.setGravity(Gravity.CENTER_VERTICAL);
        titleLayout.setOrientation(LinearLayout.HORIZONTAL);
        RelativeLayout.LayoutParams titleLayoutLp = new RelativeLayout.LayoutParams(-1, -2);
        titleLayoutLp.leftMargin = dp(30);
        titleLayoutLp.rightMargin = dp(12);
        titleLayoutLp.addRule(LEFT_OF, toggle.getId());
        titleLayoutLp.addRule(CENTER_VERTICAL);
        addView(titleLayout, titleLayoutLp);

        title = new TextView(context);
        title.setTextSize(18);
        title.setTextColor(0xff333333);
        title.setSingleLine(true);
        title.setGravity(Gravity.CENTER_VERTICAL);
        title.setIncludeFontPadding(true);
        titleLayout.addView(title, new LinearLayout.LayoutParams(-2, -2));

        subtitle = new TextView(context);
        subtitle.setTextSize(14);
        subtitle.setTextColor(0xff999999);
        subtitle.setSingleLine(true);
        subtitle.setGravity(Gravity.CENTER_VERTICAL);
        subtitle.setVisibility(GONE);
        titleLayout.addView(subtitle, new LinearLayout.LayoutParams(-2, -2));
    }

    private View findByName(String idName) {
        int id = getResources().getIdentifier(idName, "id", getPackageName());
        if (id == 0) {
            id = getResources().getIdentifier(idName, "id", "com.smartisanos.home");
        }
        return id == 0 ? null : findViewById(id);
    }

    private String getPackageName() {
        try {
            return getContext().getPackageName();
        } catch (Throwable ignored) {
            return "com.smartisanos.home";
        }
    }

    private int attrRes(AttributeSet attrs, String name) {
        if (attrs == null) return 0;
        int value = attrs.getAttributeResourceValue("http://schemas.android.com/apk/res-auto", name, 0);
        if (value == 0) {
            value = attrs.getAttributeResourceValue("http://schemas.android.com/apk/res/com.smartisanos.home", name, 0);
        }
        return value;
    }

    private int dp(int value) {
        return (int) (value * getResources().getDisplayMetrics().density + 0.5f);
    }

}
