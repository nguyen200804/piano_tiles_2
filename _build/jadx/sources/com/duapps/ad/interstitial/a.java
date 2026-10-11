package com.duapps.ad.interstitial;

import android.app.Activity;
import android.graphics.drawable.BitmapDrawable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import java.lang.ref.SoftReference;

/* compiled from: AdPopupWindow.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a extends PopupWindow implements View.OnKeyListener {

    /* renamed from: a, reason: collision with root package name */
    private boolean f2186a;

    /* renamed from: b, reason: collision with root package name */
    private SoftReference<Activity> f2187b;

    public a(Activity activity, int i) {
        super(activity);
        this.f2187b = new SoftReference<>(activity);
        View inflate = LayoutInflater.from(activity).inflate(i, (ViewGroup) null);
        inflate.setFocusableInTouchMode(true);
        setContentView(inflate);
        setWindowLayoutMode(-1, -1);
        setBackgroundDrawable(new BitmapDrawable());
    }

    public void a() {
        Activity activity = this.f2187b.get();
        if (activity != null && !activity.isFinishing()) {
            showAtLocation(activity.getWindow().getDecorView(), 16, 0, 0);
            this.f2186a = true;
        }
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        getContentView().postDelayed(new Runnable() { // from class: com.duapps.ad.interstitial.a.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.super.dismiss();
                } catch (Exception e) {
                }
                a.this.f2186a = false;
            }
        }, 100L);
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i == 82 && keyEvent.getAction() == 1) {
            if (!this.f2186a) {
                this.f2186a = true;
            } else {
                dismiss();
                this.f2186a = false;
            }
        } else if (i == 4) {
            dismiss();
            this.f2186a = false;
        }
        return true;
    }
}
