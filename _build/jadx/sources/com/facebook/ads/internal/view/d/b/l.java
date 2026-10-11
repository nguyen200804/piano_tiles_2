package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.os.Build;
import android.widget.Button;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class l extends Button {

    /* renamed from: a, reason: collision with root package name */
    private final Path f3020a;

    /* renamed from: b, reason: collision with root package name */
    private final Path f3021b;
    private final Paint c;
    private final Path d;
    private boolean e;

    public l(Context context) {
        super(context);
        this.e = false;
        this.f3020a = new Path();
        this.f3021b = new Path();
        this.d = new Path();
        this.c = new Paint() { // from class: com.facebook.ads.internal.view.d.b.l.1
            {
                setStyle(Paint.Style.FILL_AND_STROKE);
                setStrokeCap(Paint.Cap.ROUND);
                setStrokeWidth(3.0f);
                setAntiAlias(true);
                setColor(-10066330);
            }
        };
        setClickable(true);
        setBackgroundColor(0);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (canvas.isHardwareAccelerated() && Build.VERSION.SDK_INT < 17) {
            setLayerType(1, null);
        }
        float max = Math.max(canvas.getWidth(), canvas.getHeight()) / 100.0f;
        if (this.e) {
            this.d.rewind();
            this.d.moveTo(26.5f * max, 15.5f * max);
            this.d.lineTo(26.5f * max, 84.5f * max);
            this.d.lineTo(90.0f * max, 50.0f * max);
            this.d.lineTo(26.5f * max, max * 15.5f);
            this.d.close();
            canvas.drawPath(this.d, this.c);
        } else {
            this.f3020a.rewind();
            this.f3020a.moveTo(29.0f * max, 21.0f * max);
            this.f3020a.lineTo(29.0f * max, 79.0f * max);
            this.f3020a.lineTo(45.0f * max, 79.0f * max);
            this.f3020a.lineTo(45.0f * max, 21.0f * max);
            this.f3020a.lineTo(29.0f * max, 21.0f * max);
            this.f3020a.close();
            this.f3021b.rewind();
            this.f3021b.moveTo(55.0f * max, 21.0f * max);
            this.f3021b.lineTo(55.0f * max, 79.0f * max);
            this.f3021b.lineTo(71.0f * max, 79.0f * max);
            this.f3021b.lineTo(71.0f * max, 21.0f * max);
            this.f3021b.lineTo(55.0f * max, max * 21.0f);
            this.f3021b.close();
            canvas.drawPath(this.f3020a, this.c);
            canvas.drawPath(this.f3021b, this.c);
        }
        super.onDraw(canvas);
    }

    public void setChecked(boolean z) {
        this.e = z;
        refreshDrawableState();
        invalidate();
    }
}
