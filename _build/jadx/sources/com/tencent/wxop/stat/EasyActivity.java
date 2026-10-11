package com.tencent.wxop.stat;

import android.app.Activity;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class EasyActivity extends Activity {
    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        e.m(this);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        e.l(this);
    }
}
