package com.example.luckywheel.ui;

import android.app.Activity;
import android.app.Dialog;
import android.util.Log;
import com.whatscall.luckywheel.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c extends Dialog {

    /* renamed from: b, reason: collision with root package name */
    protected Activity f2375b;

    public c(Activity activity) {
        super(activity, R.style.common_dialog);
        this.f2375b = activity;
    }

    public Activity c() {
        return this.f2375b;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        try {
            if (this.f2375b == null || this.f2375b.isFinishing()) {
                return;
            }
            super.cancel();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            if (this.f2375b == null || this.f2375b.isFinishing()) {
                return;
            }
            super.dismiss();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        Log.d("liufan", "show() + " + getClass().getSimpleName());
        try {
            if (this.f2375b == null || this.f2375b.isFinishing()) {
                return;
            }
            super.show();
            Log.d("liufan", "show success + " + getClass().getSimpleName());
        } catch (Exception e) {
            e.printStackTrace();
            Log.d("liufan", "show fail + " + e);
        }
    }
}
