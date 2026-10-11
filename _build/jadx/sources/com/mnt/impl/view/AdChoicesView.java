package com.mnt.impl.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdChoicesView extends View {

    /* renamed from: a, reason: collision with root package name */
    private Paint f4092a;

    /* renamed from: b, reason: collision with root package name */
    private Path f4093b;
    private Rect c;
    private int d;
    private int e;

    public AdChoicesView(Context context) {
        this(context, null);
    }

    public AdChoicesView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdChoicesView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4092a = new Paint(1);
        this.f4092a.setColor(Color.parseColor(com.mnt.impl.e.jG));
        this.f4093b = new Path();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.c = new Rect(0, 0, i, i2);
        this.f4093b.moveTo(0.0f, 0.0f);
        this.f4093b.lineTo(0.0f, i);
        this.f4093b.lineTo(i2, 0.0f);
        this.d = i;
        this.e = i2;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f4092a.setColor(Color.parseColor(com.mnt.impl.e.jH));
        canvas.drawPath(this.f4093b, this.f4092a);
        this.f4092a.setColor(-1);
        this.f4092a.setTextSize(this.c.width() / 3);
        this.f4092a.setTextAlign(Paint.Align.CENTER);
        Paint.FontMetricsInt fontMetricsInt = this.f4092a.getFontMetricsInt();
        int i = (((this.c.bottom + this.c.top) - fontMetricsInt.bottom) - fontMetricsInt.top) / 2;
        canvas.save();
        canvas.translate((-this.d) / 5, (-this.e) / 5);
        canvas.rotate(-45.0f, this.d / 2, this.e / 2);
        canvas.drawText(com.mnt.impl.e.jI, this.c.centerX(), i, this.f4092a);
        canvas.restore();
    }
}
