package com.example.luckywheel.ui;

import android.util.Log;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class z implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f2399a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f2400b;
    final /* synthetic */ LuckyWheelActivity c;

    z(LuckyWheelActivity luckyWheelActivity, int i, int i2) {
        this.c = luckyWheelActivity;
        this.f2399a = i;
        this.f2400b = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        this.c.j = this.f2399a - this.f2400b;
        this.c.k = this.f2399a;
        StringBuilder append = new StringBuilder().append("newBalance = ").append(this.f2399a).append(", mAwardPoints = ");
        i = this.c.j;
        Log.d("liufan", append.append(i).toString());
    }
}
