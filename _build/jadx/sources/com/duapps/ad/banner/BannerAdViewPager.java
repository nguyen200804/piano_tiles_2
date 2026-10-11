package com.duapps.ad.banner;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BannerAdViewPager extends ViewPager {

    /* renamed from: a, reason: collision with root package name */
    private boolean f1999a;

    public BannerAdViewPager(Context context) {
        super(context);
        this.f1999a = true;
    }

    public BannerAdViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1999a = true;
    }

    @Override // android.support.v4.view.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f1999a && super.onTouchEvent(motionEvent);
    }

    @Override // android.support.v4.view.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f1999a && super.onInterceptTouchEvent(motionEvent);
    }
}
