package com.example.luckywheel.ui;

import android.view.animation.Animation;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class t implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f2390a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ d f2391b;

    t(d dVar, h hVar) {
        this.f2391b = dVar;
        this.f2390a = hVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        if (this.f2390a != null) {
            this.f2390a.a();
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
