package com.example.luckywheel.ui;

import android.animation.ValueAnimator;
import android.widget.TextView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ab implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LuckyWheelActivity f2356a;

    ab(LuckyWheelActivity luckyWheelActivity) {
        this.f2356a = luckyWheelActivity;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        TextView textView;
        TextView textView2;
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        textView = this.f2356a.f;
        textView.setTranslationY((-floatValue) * LuckyWheelActivity.a(this.f2356a.getApplicationContext(), 15.0f));
        textView2 = this.f2356a.f;
        textView2.setAlpha(1.0f - floatValue);
    }
}
