package com.example.luckywheel.ui;

import android.animation.ValueAnimator;
import android.widget.ImageView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class p implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f2385a;

    p(l lVar) {
        this.f2385a = lVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        ImageView imageView;
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        imageView = this.f2385a.c;
        imageView.setAlpha(floatValue);
    }
}
