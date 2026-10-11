package com.applovin.adview;

import android.view.animation.Animation;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class o implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f320a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ n f321b;

    o(n nVar, boolean z) {
        this.f321b = nVar;
        this.f320a = z;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        com.applovin.impl.adview.s sVar;
        if (this.f320a) {
            return;
        }
        sVar = this.f321b.f319a.B;
        sVar.setVisibility(4);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        com.applovin.impl.adview.s sVar;
        sVar = this.f321b.f319a.B;
        sVar.setVisibility(0);
    }
}
