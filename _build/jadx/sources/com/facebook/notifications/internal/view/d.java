package com.facebook.notifications.internal.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.NonNull;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.LinearLayout;
import com.facebook.notifications.internal.configuration.CardConfiguration;
import com.facebook.notifications.internal.configuration.HeroConfiguration;
import com.facebook.notifications.internal.view.a;

/* compiled from: CardView.java */
@SuppressLint({"ViewConstructor"})
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final CardConfiguration f3448a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final g f3449b;

    @NonNull
    private final c c;

    @NonNull
    private final a d;

    @NonNull
    private static float[] a(@NonNull float[] fArr, CardConfiguration.CardSize cardSize) {
        float min = Math.min(400.0f, fArr[0]);
        float min2 = Math.min(700.0f, fArr[1]);
        switch (cardSize) {
            case Invalid:
                return new float[]{0.0f, 0.0f};
            case Small:
                min = (float) (min * 0.75d);
                min2 = (float) (min2 * 0.7d);
                break;
            case Medium:
                min = (float) (min * 0.83d);
                min2 = (float) (min2 * 0.9d);
                break;
        }
        return new float[]{min, min2};
    }

    public d(@NonNull Context context, @NonNull com.facebook.notifications.internal.asset.a aVar, @NonNull com.facebook.notifications.internal.content.a aVar2, @NonNull a.InterfaceC0090a interfaceC0090a, @NonNull CardConfiguration cardConfiguration) {
        super(context);
        this.f3448a = cardConfiguration;
        this.f3449b = new g(context, aVar, aVar2, this.f3448a);
        this.c = new c(context, aVar, aVar2, this.f3448a);
        this.d = new a(context, aVar, interfaceC0090a, this.f3448a);
        setOrientation(1);
        setGravity(16);
        addView(this.f3449b, new LinearLayout.LayoutParams(-1, -2));
        addView(this.c, new LinearLayout.LayoutParams(-1, -2));
        addView(this.d, new LinearLayout.LayoutParams(-1, -2));
        setBackgroundColor(this.f3448a.e());
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        float[] a2 = a(new float[]{size / displayMetrics.density, View.MeasureSpec.getSize(heightMeasureSpec) / displayMetrics.density}, this.f3448a.b());
        a2[0] = a2[0] * displayMetrics.density;
        a2[1] = displayMetrics.density * a2[1];
        int round = Math.round((size - a2[0]) / 2.0f);
        setPadding(round, 0, round, 0);
        int i = Integer.MAX_VALUE;
        HeroConfiguration f = this.f3448a.f();
        float f2 = 1.0f;
        if (f == null || f.b() == -1.0f) {
            this.f3449b.getLayoutParams().height = -2;
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            i = this.f3449b.getMeasuredHeight();
        } else {
            f2 = f.b();
        }
        this.f3449b.getLayoutParams().height = 0;
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.f3449b.getLayoutParams().height = Math.min(Math.round(Math.abs(f2) * ((Math.round(a2[1]) - this.c.getMeasuredHeight()) - this.d.getMeasuredHeight())), i);
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }
}
