package com.facebook.ads.internal.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class n extends TextView {

    /* renamed from: a, reason: collision with root package name */
    private int f3080a;

    /* renamed from: b, reason: collision with root package name */
    private float f3081b;
    private float c;

    public n(Context context, int i) {
        super(context);
        this.c = 8.0f;
        setMaxLines(i);
        setEllipsize(TextUtils.TruncateAt.END);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.setMaxLines(this.f3080a + 1);
        super.setTextSize(this.f3081b);
        int i5 = i3 - i;
        int i6 = i4 - i2;
        measure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), View.MeasureSpec.makeMeasureSpec(i6, 0));
        if (getMeasuredHeight() > i6) {
            float f = this.f3081b;
            while (f > this.c) {
                f -= 0.5f;
                super.setTextSize(f);
                measure(View.MeasureSpec.makeMeasureSpec(i5, 1073741824), 0);
                if (getMeasuredHeight() <= i6 && getLineCount() <= this.f3080a) {
                    break;
                }
            }
        }
        super.setMaxLines(this.f3080a);
        setMeasuredDimension(i5, i6);
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        this.f3080a = i;
        super.setMaxLines(i);
    }

    public void setMinTextSize(float f) {
        this.c = f;
    }

    @Override // android.widget.TextView
    public void setTextSize(float f) {
        this.f3081b = f;
        super.setTextSize(f);
    }
}
