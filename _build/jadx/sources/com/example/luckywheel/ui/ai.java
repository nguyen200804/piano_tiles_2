package com.example.luckywheel.ui;

import android.content.Context;
import android.util.Log;
import android.view.animation.Animation;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ai implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LuckyWheelView f2364a;

    ai(LuckyWheelView luckyWheelView) {
        this.f2364a = luckyWheelView;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        boolean z;
        boolean z2;
        int i;
        Context context;
        z = this.f2364a.k;
        int i2 = z ? this.f2364a.l : 0;
        StringBuilder append = new StringBuilder().append("LuckyWheelView credits = ").append(i2).append(", mIsRequestSuccess = ");
        z2 = this.f2364a.k;
        StringBuilder append2 = append.append(z2).append(", mRequestErrorCode = ");
        i = this.f2364a.n;
        Log.d("liufan", append2.append(i).toString());
        context = this.f2364a.g;
        i b2 = j.a(context).b(i2);
        this.f2364a.c(b2 != null ? b2.b() + (b2.d() / 2) : 0);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
