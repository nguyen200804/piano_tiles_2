package com.facebook.ads.internal.view;

import android.content.Context;
import android.widget.RelativeLayout;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class q extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private int f3088a;

    /* renamed from: b, reason: collision with root package name */
    private int f3089b;

    public q(Context context) {
        super(context);
        this.f3088a = 0;
        this.f3089b = 0;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f3089b > 0 && getMeasuredWidth() > this.f3089b) {
            setMeasuredDimension(this.f3089b, getMeasuredHeight());
        } else if (getMeasuredWidth() < this.f3088a) {
            setMeasuredDimension(this.f3088a, getMeasuredHeight());
        }
    }

    protected void setMaxWidth(int i) {
        this.f3089b = i;
    }

    public void setMinWidth(int i) {
        this.f3088a = i;
    }
}
