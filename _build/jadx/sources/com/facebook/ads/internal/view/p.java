package com.facebook.ads.internal.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class p extends TextView {

    /* renamed from: a, reason: collision with root package name */
    private float f3086a;

    /* renamed from: b, reason: collision with root package name */
    private float f3087b;

    public p(Context context) {
        super(context);
        this.f3087b = 8.0f;
        super.setSingleLine();
        super.setMaxLines(1);
        this.f3086a = getTextSize() / context.getResources().getDisplayMetrics().density;
        setEllipsize(TextUtils.TruncateAt.END);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int measuredHeight = getMeasuredHeight();
        int measuredWidth = getMeasuredWidth();
        for (float f = this.f3086a; f >= this.f3087b; f -= 0.5f) {
            super.setTextSize(f);
            measure(0, 0);
            if (getMeasuredWidth() <= i5) {
                break;
            }
        }
        if (getMeasuredWidth() > i5) {
            measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
        }
        setMeasuredDimension(measuredWidth, measuredHeight);
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
    }

    public void setMinTextSize(float f) {
        if (f <= this.f3086a) {
            this.f3087b = f;
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
    }

    @Override // android.widget.TextView
    public void setTextSize(float f) {
        this.f3086a = f;
        super.setTextSize(f);
    }
}
