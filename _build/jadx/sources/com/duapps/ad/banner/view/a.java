package com.duapps.ad.banner.view;

import android.annotation.TargetApi;
import android.support.v4.view.ViewPager;
import android.view.View;

/* compiled from: BannerZoomOutTransformer.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a implements ViewPager.PageTransformer {

    /* renamed from: a, reason: collision with root package name */
    private static float f2016a = 0.85f;

    /* renamed from: b, reason: collision with root package name */
    private static float f2017b = 0.5f;

    @Override // android.support.v4.view.ViewPager.PageTransformer
    @TargetApi(11)
    public void transformPage(View view, float f) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (f < -1.0f) {
            view.setAlpha(0.0f);
            view.setTranslationX(0.0f);
            return;
        }
        if (f <= 1.0f) {
            float max = Math.max(f2016a, 1.0f - Math.abs(f));
            float f2 = (height * (1.0f - max)) / 2.0f;
            float f3 = (width * (1.0f - max)) / 2.0f;
            if (f < 0.0f) {
                view.setTranslationX(f3 - (f2 / 2.0f));
            } else {
                view.setTranslationX((-f3) + (f2 / 2.0f));
            }
            view.setScaleX(max);
            view.setScaleY(max);
            view.setAlpha(f2017b + (((max - f2016a) / (1.0f - f2016a)) * (1.0f - f2017b)));
            return;
        }
        view.setAlpha(0.0f);
        view.setTranslationX(0.0f);
    }
}
