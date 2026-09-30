package com.smartisanos.launcher.quicksearch.ui;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

import smartisan.widget.MenuDialogTitleBar;
import smartisan.widget.ShadowButton;

/** Public-API replacement for pristine i.p.a MenuDialog; presentation stays resource-owned. */
final class OriginalMenuDialogCompat extends Dialog {
    private static final String RESOURCE_PACKAGE =
            "com.smartisanos.launcher.quicksearch.originalresources";

    private final MenuDialogTitleBar titleBar;
    private final ShadowButton positiveButton;

    OriginalMenuDialogCompat(Context context) {
        super(context, resource(context, "style", "MenuDialogTheme"));
        View content = LayoutInflater.from(context).cloneInContext(context).inflate(
                resource(context, "layout", "menu_dialog"), null, false);
        setContentView(content);
        titleBar = (MenuDialogTitleBar) content.findViewById(
                resource(context, "id", "menu_dialog_title_bar"));
        positiveButton = (ShadowButton) content.findViewById(
                resource(context, "id", "btn_ok"));
        ListView list = (ListView) content.findViewById(
                resource(context, "id", "content_list"));
        if (titleBar == null || positiveButton == null || list == null) {
            throw new IllegalStateException("pristine menu_dialog closure incomplete");
        }
        // The private Smartisan widget constrains this wrap_content title bar to 48dp.
        // Its public host otherwise expands to the full window on modern framework builds,
        // pushing the pristine content panel and positive button below the visible bounds.
        titleBar.getLayoutParams().height = context.getResources().getDimensionPixelSize(
                resource(context, "dimen", "smartisan_title_bar_height"));
        titleBar.setLayoutParams(titleBar.getLayoutParams());
        list.setVisibility(View.GONE);
        titleBar.setLeftButtonVisibility(View.INVISIBLE);
        titleBar.setRightButtonVisibility(View.VISIBLE);
        titleBar.setOnRightButtonClickListener(new View.OnClickListener() {
            @Override public void onClick(View view) {
                dismiss();
            }
        });
        titleBar.setOnLeftButtonClickListener(new View.OnClickListener() {
            @Override public void onClick(View view) {
                dismiss();
            }
        });
        setCanceledOnTouchOutside(true);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawable(new ColorDrawable(0x00000000));
            window.setGravity(Gravity.BOTTOM);
            window.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_NOTHING);
        }
    }

    void setDialogTitle(CharSequence text) {
        titleBar.setTitle(text);
    }

    void setPositive(CharSequence text, final View.OnClickListener listener) {
        positiveButton.setText(text);
        positiveButton.setVisibility(View.VISIBLE);
        if (positiveButton.getLayoutParams() instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams params =
                    (LinearLayout.LayoutParams) positiveButton.getLayoutParams();
            params.topMargin = getContext().getResources().getDimensionPixelOffset(
                    resource(getContext(), "dimen", "menu_dialog_btn_margin_view"));
            positiveButton.setLayoutParams(params);
        }
        positiveButton.setOnClickListener(new View.OnClickListener() {
            @Override public void onClick(View view) {
                if (listener != null) listener.onClick(view);
                dismiss();
            }
        });
    }

    @Override public void show() {
        MaintainedLauncherSettingsHost.applyNavigationBarToWindow(getContext(), getWindow());
        super.show();
        MaintainedLauncherSettingsHost.applyNavigationBarToWindow(getContext(), getWindow());
        Window window = getWindow();
        if (window != null) {
            window.setGravity(Gravity.BOTTOM);
            window.setLayout(WindowManager.LayoutParams.MATCH_PARENT,
                    WindowManager.LayoutParams.WRAP_CONTENT);
        }
    }

    private static int resource(Context context, String type, String name) {
        return context.getResources().getIdentifier(name, type, RESOURCE_PACKAGE);
    }
}
