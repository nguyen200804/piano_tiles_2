package com.example.luckywheel.ui;

import android.view.animation.Animation;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class aj implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f2365a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ LuckyWheelView f2366b;

    aj(LuckyWheelView luckyWheelView, int i) {
        this.f2366b = luckyWheelView;
        this.f2365a = i;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f2366b.d(this.f2365a);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
