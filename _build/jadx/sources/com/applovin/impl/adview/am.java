package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.applovin.sdk.AppLovinSdk;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class am extends u {
    private float c;
    private float d;
    private float e;
    private float f;
    private float g;

    public am(AppLovinSdk appLovinSdk, Context context) {
        super(appLovinSdk, context);
        this.c = 30.0f;
        this.d = 2.0f;
        this.e = 10.0f;
        this.f = 3.0f;
        this.g = 1.0f;
    }

    protected float a() {
        return this.c * this.g;
    }

    public void a(float f) {
        this.g = f;
    }

    @Override // com.applovin.impl.adview.u
    public void a(int i) {
        a(i / this.c);
    }

    protected float b() {
        return this.e * this.g;
    }

    protected float c() {
        return this.f * this.g;
    }

    protected float d() {
        return a() / 2.0f;
    }

    protected float e() {
        return this.d * this.g;
    }

    protected float f() {
        return d() - e();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float d = d();
        Paint paint = new Paint(1);
        paint.setColor(-1);
        canvas.drawCircle(d, d, d, paint);
        Paint paint2 = new Paint(1);
        paint2.setColor(-16777216);
        canvas.drawCircle(d, d, f(), paint2);
        Paint paint3 = new Paint(paint);
        paint3.setStyle(Paint.Style.STROKE);
        paint3.setStrokeWidth(c());
        float b2 = b();
        float a2 = a() - b2;
        canvas.drawLine(b2, b2, a2, a2, paint3);
        canvas.drawLine(b2, a2, a2, b2, paint3);
    }
}
