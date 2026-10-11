package com.cmcm.orion.picks.impl;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AspectRatioRelativeLayout extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    private float f882a;

    public AspectRatioRelativeLayout(Context context) {
        super(context);
        this.f882a = 1.7777778f;
    }

    public AspectRatioRelativeLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f882a = 1.7777778f;
    }

    public final void a(float f) {
        if (this.f882a != f) {
            this.f882a = f;
            requestLayout();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (this.f882a != 0.0f) {
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            float f = (this.f882a / (measuredWidth / measuredHeight)) - 1.0f;
            if (Math.abs(f) > 0.01f) {
                int mode = View.MeasureSpec.getMode(widthMeasureSpec);
                int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
                if ((mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE) || (mode == 1073741824 && mode2 == 1073741824)) {
                    if (f > 0.0f) {
                        measuredHeight = (int) (measuredWidth / this.f882a);
                    } else {
                        measuredWidth = (int) (measuredHeight * this.f882a);
                    }
                } else if (mode == 1073741824 || (mode == Integer.MIN_VALUE && mode2 == 0)) {
                    measuredHeight = (int) (measuredWidth / this.f882a);
                } else if (mode2 == 1073741824 || (mode2 == Integer.MIN_VALUE && mode == 0)) {
                    measuredWidth = (int) (measuredHeight * this.f882a);
                } else {
                    return;
                }
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
            }
        }
    }
}
