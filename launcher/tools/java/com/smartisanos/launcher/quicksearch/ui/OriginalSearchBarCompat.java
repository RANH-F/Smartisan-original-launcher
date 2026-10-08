package com.smartisanos.launcher.quicksearch.ui;

import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.RelativeLayout;

/** Minimal runnable replacement for the private Smartisan SearchBar widget. */
public final class OriginalSearchBarCompat extends RelativeLayout {
    private static final String RESOURCE_PACKAGE =
            "com.smartisanos.launcher.quicksearch.originalresources";
    private EditText editText;
    private View clearButton;
    private View cancelButton;
    private OnClickListener cancelListener;

    public OriginalSearchBarCompat(Context context) {
        this(context, null);
    }

    public OriginalSearchBarCompat(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public OriginalSearchBarCompat(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        int layoutId = resource("layout", "qs_original_search_bar");
        if (layoutId == 0) {
            throw new IllegalStateException("qs_original_search_bar missing");
        }
        LayoutInflater.from(context).cloneInContext(context).inflate(layoutId, this, true);
        bindChildren();
    }

    public EditText getEditText() {
        return editText;
    }

    /** One settings width/height contract. The NinePatch alone owns horizontal insets. */
    public android.widget.FrameLayout createSettingsHost(Context context) {
        float density = context.getResources().getDisplayMetrics().density;
        android.widget.FrameLayout host = new android.widget.FrameLayout(context);
        host.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, Math.round(64 * density)));
        android.widget.FrameLayout.LayoutParams params = new android.widget.FrameLayout.LayoutParams(-1, Math.round(56 * density));
        params.gravity = android.view.Gravity.CENTER_VERTICAL;
        host.addView(this, params);
        return host;
    }

    /** Align the field with Settings cards; retain only the in-field clear button. */
    public void setSettingsPresentation(android.graphics.drawable.Drawable background) {
        View field = findViewById(resource("id", "qs_original_search_edit_layout"));
        if (field == null) return;
        RelativeLayout.LayoutParams fieldParams = (RelativeLayout.LayoutParams) field.getLayoutParams();
        fieldParams.height = Math.round(48f * getResources().getDisplayMetrics().density);
        fieldParams.leftMargin = Math.round(12f * getResources().getDisplayMetrics().density);
        fieldParams.rightMargin = fieldParams.leftMargin;
        fieldParams.addRule(RelativeLayout.LEFT_OF, 0);
        fieldParams.addRule(RelativeLayout.ALIGN_PARENT_RIGHT, RelativeLayout.TRUE);
        field.setLayoutParams(fieldParams);
        // Settings already supplies a rounded NinePatch with its own edge/shadow.
        // Do not stretch the QuickSearch pill or add a second system shadow.
        setBackground(background);
        field.setBackgroundColor(android.graphics.Color.TRANSPARENT);
        cancelButton.setVisibility(GONE);
        View searchIcon = findViewById(resource("id", "qs_original_search_left_icon"));
        RelativeLayout.LayoutParams iconParams = (RelativeLayout.LayoutParams) searchIcon.getLayoutParams();
        // The original 72px asset has 12px transparent left padding at xxhdpi.
        // 12dp card inset + 14dp margin + 4dp artwork inset = 30dp label edge.
        iconParams.leftMargin = Math.round(14f * getResources().getDisplayMetrics().density);
        searchIcon.setLayoutParams(iconParams);
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            field.setOutlineProvider(android.view.ViewOutlineProvider.BOUNDS);
            field.setClipToOutline(true);
            field.setElevation(0f);
            setClipChildren(false);
            setClipToPadding(false);
        }
    }

    public void setCancelListener(OnClickListener listener) {
        cancelListener = listener;
    }

    public void setInputEnabled(boolean enabled) {
        editText.setEnabled(enabled);
        clearButton.setEnabled(enabled);
        cancelButton.setEnabled(enabled);
    }

    public void setBackListener(OriginalSearchEditTextCompat.BackListener listener) {
        if (editText instanceof OriginalSearchEditTextCompat) {
            ((OriginalSearchEditTextCompat) editText).setBackListener(listener);
        }
    }

    private void bindChildren() {
        editText = (EditText) findViewById(resource("id", "qs_original_search_edit_text"));
        clearButton = findViewById(resource("id", "qs_original_search_clear"));
        cancelButton = findViewById(resource("id", "qs_original_search_cancel"));
        if (editText == null || clearButton == null || cancelButton == null) {
            throw new IllegalStateException("Original SearchBar children missing");
        }
        clearButton.setOnClickListener(new OnClickListener() {
            @Override public void onClick(View view) {
                // Pristine SearchBar.g(): clear only. The focused editor keeps focus/IME.
                editText.setText(null);
            }
        });
        cancelButton.setOnClickListener(new OnClickListener() {
            @Override public void onClick(View view) {
                if (cancelListener != null) cancelListener.onClick(view);
            }
        });
        editText.addTextChangedListener(new TextWatcher() {
            @Override public void beforeTextChanged(CharSequence text, int start, int count,
                    int after) {
            }

            @Override public void onTextChanged(CharSequence text, int start, int before,
                    int count) {
                clearButton.setVisibility(text != null && text.length() > 0
                        ? VISIBLE : GONE);
            }

            @Override public void afterTextChanged(Editable editable) {
            }
        });
    }

    private int resource(String type, String name) {
        return getResources().getIdentifier(name, type, RESOURCE_PACKAGE);
    }
}
