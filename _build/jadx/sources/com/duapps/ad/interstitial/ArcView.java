package com.duapps.ad.interstitial;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.duapps.ad.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ArcView extends View {

    /* renamed from: a, reason: collision with root package name */
    private RectF f2182a;

    /* renamed from: b, reason: collision with root package name */
    private Paint f2183b;

    public ArcView(Context context) {
        super(context);
        a(context, null);
    }

    public ArcView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public ArcView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        int i = context.getResources().getDisplayMetrics().widthPixels;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Arc);
        int min = Math.min(Math.max(obtainStyledAttributes.getInt(R.styleable.Arc_ArcLevel, 10), 1), 1000);
        this.f2182a = new RectF((-i) / min, 0.0f, (i / min) + i, i / 2);
        this.f2183b = new Paint();
        this.f2183b.setAntiAlias(true);
        this.f2183b.setColor(obtainStyledAttributes.getColor(R.styleable.Arc_ArcColor, -1));
        this.f2183b.setStyle(Paint.Style.FILL);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawColor(0);
        canvas.drawArc(this.f2182a, 180.0f, 180.0f, false, this.f2183b);
    }
}
