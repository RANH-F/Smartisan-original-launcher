package com.smartisan.launchertest.fixture;

import android.app.Activity;
import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.widget.Button;
import android.widget.LinearLayout;

/** The fixture changes its own aliases through the same public API as third-party apps. */
public class ComponentSettingsActivity extends Activity {
    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        LinearLayout layout = new LinearLayout(this);
        layout.setOrientation(LinearLayout.VERTICAL);
        add(layout, "Show default icon", 1, 2);
        add(layout, "Show alternate icon", 2, 1);
        add(layout, "Hide both icons", 2, 2);
        add(layout, "Reset alternate to manifest", 1, 0);
        setContentView(layout);
    }
    private void add(LinearLayout layout, String label, final int first, final int second) {
        Button button = new Button(this);
        button.setText(label);
        button.setOnClickListener(new android.view.View.OnClickListener() {
          @Override public void onClick(android.view.View view) {
            PackageManager pm = getPackageManager();
            pm.setComponentEnabledSetting(new ComponentName(ComponentSettingsActivity.this, getPackageName() + ".DefaultIcon"), first, PackageManager.DONT_KILL_APP);
            pm.setComponentEnabledSetting(new ComponentName(ComponentSettingsActivity.this, getPackageName() + ".AlternateIcon"), second, PackageManager.DONT_KILL_APP);
          }
        });
        layout.addView(button);
    }
}
