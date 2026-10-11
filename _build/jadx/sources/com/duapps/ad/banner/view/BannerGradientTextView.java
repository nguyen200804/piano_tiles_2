package com.duapps.ad.banner.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.widget.TextView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BannerGradientTextView extends TextView {

    /* renamed from: a, reason: collision with root package name */
    private int f2000a;

    /* renamed from: b, reason: collision with root package name */
    private int f2001b;
    private Paint c;
    private Matrix d;
    private LinearGradient e;

    public BannerGradientTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public BannerGradientTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public BannerGradientTextView(Context context) {
        super(context);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != 0) {
            this.f2000a = i;
        } else {
            this.f2000a = getMeasuredWidth();
        }
        this.c = getPaint();
        this.e = new LinearGradient(0.0f, 0.0f, this.f2000a, 0.0f, new int[]{-184065, -15820801, -15728645}, (float[]) null, Shader.TileMode.REPEAT);
        this.c.setShader(this.e);
        this.c.setColor(-16777216);
        this.d = new Matrix();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.d != null) {
            this.f2001b += this.f2000a / 15;
            if (this.f2001b > this.f2000a * 2) {
                this.f2001b -= this.f2000a * 2;
            }
            this.e.setLocalMatrix(this.d);
        }
    }
}
