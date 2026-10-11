package com.example.luckywheel.ui;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import com.whatscall.luckywheel.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class n extends b {
    public n(Activity activity) {
        super(activity);
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.request_dialog);
        ((TextView) findViewById(R.id.request_title)).setText(R.string.sync_info);
    }
}
