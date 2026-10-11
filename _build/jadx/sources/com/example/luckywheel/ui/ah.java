package com.example.luckywheel.ui;

import android.view.animation.Animation;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ah implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LuckyWheelView f2363a;

    ah(LuckyWheelView luckyWheelView) {
        this.f2363a = luckyWheelView;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f2363a.j();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
