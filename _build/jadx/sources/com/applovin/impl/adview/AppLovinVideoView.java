package com.applovin.impl.adview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.VideoView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AppLovinVideoView extends VideoView {

    /* renamed from: a, reason: collision with root package name */
    private int f331a;

    /* renamed from: b, reason: collision with root package name */
    private int f332b;

    public AppLovinVideoView(Context context) {
        this(context, null);
    }

    public AppLovinVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppLovinVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f331a = 0;
        this.f332b = 0;
    }

    @Override // android.widget.VideoView, android.view.SurfaceView, android.view.View
    protected void onMeasure(int i, int i2) {
        int ceil;
        int ceil2;
        if (this.f331a <= 0 || this.f332b <= 0) {
            super.onMeasure(i, i2);
            return;
        }
        if (this.f332b / getHeight() > this.f331a / getWidth()) {
            ceil = (int) Math.ceil(this.f332b / r0);
            ceil2 = (int) Math.ceil(this.f331a / r0);
        } else {
            ceil = (int) Math.ceil(this.f332b / r2);
            ceil2 = (int) Math.ceil(this.f331a / r2);
        }
        setMeasuredDimension(ceil2, ceil);
    }

    public void setVideoSize(int i, int i2) {
        this.f331a = i;
        this.f332b = i2;
        try {
            getHolder().setFixedSize(i, i2);
            requestLayout();
            invalidate();
        } catch (Exception e) {
        }
    }
}
