package com.example.luckywheel.ui;

import android.view.animation.Animation;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class r implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f2387a;

    r(d dVar) {
        this.f2387a = dVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f2387a.dismiss();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
