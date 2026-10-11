package com.cmplay.util;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: JumpAnimator.java */
@TargetApi(11)
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class l implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    private ValueAnimator f1810a;

    /* renamed from: b, reason: collision with root package name */
    private View f1811b;
    private int c;
    private int d;
    private int e;
    private float f;
    private int g = -1;

    public l(View view, int i, int i2, int i3, float f) {
        this.f1811b = view;
        this.d = i3 * i2;
        this.e = i;
        this.f = f;
    }

    public void a() {
        if (this.f1810a == null) {
            this.c = 20;
            this.f1810a = ValueAnimator.ofInt(0, 20, 0);
            this.f1810a.setDuration(this.e).setStartDelay(this.d);
            this.f1810a.setInterpolator(new a(this.f));
            this.f1810a.setRepeatCount(-1);
            this.f1810a.setRepeatMode(1);
            this.f1810a.addUpdateListener(this);
            this.f1810a.start();
        }
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator animation) {
        int intValue = ((Integer) animation.getAnimatedValue()).intValue();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f1811b.getLayoutParams();
        if (-1 == this.g) {
            this.g = marginLayoutParams.bottomMargin;
        }
        marginLayoutParams.bottomMargin = intValue + this.g;
        this.f1811b.setLayoutParams(marginLayoutParams);
    }

    /* compiled from: JumpAnimator.java */
    private class a implements TimeInterpolator {

        /* renamed from: b, reason: collision with root package name */
        private float f1813b;

        public a(float f) {
            this.f1813b = Math.abs(f);
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float input) {
            if (input <= this.f1813b) {
                return ((float) (Math.cos((1.0f + (input / this.f1813b)) * 3.141592653589793d) / 2.0d)) + 0.5f;
            }
            return 1.0f;
        }
    }
}
