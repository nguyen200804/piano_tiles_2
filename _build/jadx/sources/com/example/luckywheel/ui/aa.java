package com.example.luckywheel.ui;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class aa implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ View f2354a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ LuckyWheelActivity f2355b;

    aa(LuckyWheelActivity luckyWheelActivity, View view) {
        this.f2355b = luckyWheelActivity;
        this.f2354a = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        Rect rect = new Rect();
        this.f2354a.setEnabled(true);
        this.f2354a.getHitRect(rect);
        int a2 = LuckyWheelActivity.a(this.f2355b.getApplicationContext(), 15.0f);
        rect.top -= a2;
        rect.bottom += a2;
        rect.left -= a2;
        rect.right = a2 + rect.right;
        TouchDelegate touchDelegate = new TouchDelegate(rect, this.f2354a);
        if (View.class.isInstance(this.f2354a.getParent())) {
            ((View) this.f2354a.getParent()).setTouchDelegate(touchDelegate);
        }
    }
}
