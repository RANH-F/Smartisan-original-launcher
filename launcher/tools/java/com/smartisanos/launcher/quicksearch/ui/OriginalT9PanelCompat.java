package com.smartisanos.launcher.quicksearch.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.view.View;
import android.view.MotionEvent;
import android.widget.LinearLayout;

/** The pristine QuickSearch 3.0.0 keypad artwork with the current search host's input callback. */
final class OriginalT9PanelCompat extends LinearLayout {
    interface OnKeyListener {
        void onKey(int key);
    }

    static final int HIDE = -1;
    static final int DELETE = -2;
    private static final String RESOURCE_PACKAGE =
            "com.smartisanos.launcher.quicksearch.originalresources";

    OriginalT9PanelCompat(Context context, OnKeyListener listener) {
        super(context);
        setOrientation(VERTICAL);
        setBackgroundColor(0xfff5f5f5);
        Resources resources = context.getResources();
        int pressedId = resources.getIdentifier("btn_pressed", "drawable", RESOURCE_PACKAGE);
        if (pressedId == 0) throw new IllegalStateException("Missing T9 pressed artwork");
        int[][] keys = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}, {HIDE, 0, DELETE}};
        for (int[] rowKeys : keys) {
            LinearLayout row = new LinearLayout(context);
            for (final int key : rowKeys) {
                View button = new View(context);
                String name = key == HIDE ? "btn_down_classic_normal"
                        : key == DELETE ? "btn_delete_classic_normal"
                        : "btn_" + key + "_classic_normal";
                int background = resources.getIdentifier(name, "drawable", RESOURCE_PACKAGE);
                if (background == 0) throw new IllegalStateException("Missing T9 key " + name);
                Drawable normal = resources.getDrawable(background);
                Drawable pressed = resources.getDrawable(pressedId);
                StateListDrawable states = new StateListDrawable();
                states.addState(new int[]{android.R.attr.state_pressed},
                        new LayerDrawable(new Drawable[]{normal, pressed}));
                states.addState(new int[]{}, resources.getDrawable(background));
                button.setBackground(states);
                button.setContentDescription(key == HIDE ? "收起键盘"
                        : key == DELETE ? "删除" : String.valueOf(key));
                button.setHapticFeedbackEnabled(true);
                button.setOnTouchListener(new OnTouchListener() {
                    @Override public boolean onTouch(View view, MotionEvent event) {
                        if (event.getActionMasked() == MotionEvent.ACTION_DOWN) {
                            view.performHapticFeedback(
                                    android.view.HapticFeedbackConstants.KEYBOARD_TAP);
                        }
                        return false;
                    }
                });
                button.setOnClickListener(new OnClickListener() {
                    @Override public void onClick(View view) {
                        listener.onKey(key);
                    }
                });
                row.addView(button, new LinearLayout.LayoutParams(0, -1, 1));
            }
            addView(row, new LinearLayout.LayoutParams(-1, 0));
        }
    }

    void setKeyHeight(int height) {
        for (int i = 0; i < getChildCount(); i++) {
            View row = getChildAt(i);
            LinearLayout.LayoutParams params = (LinearLayout.LayoutParams) row.getLayoutParams();
            if (params.height != height) {
                params.height = height;
                row.setLayoutParams(params);
            }
        }
    }
}
