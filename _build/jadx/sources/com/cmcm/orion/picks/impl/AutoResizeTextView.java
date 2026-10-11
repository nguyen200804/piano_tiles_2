package com.cmcm.orion.picks.impl;

import android.content.Context;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.cmcm.orion.picks.impl.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AutoResizeTextView extends TextView {

    /* renamed from: a, reason: collision with root package name */
    private float f883a;

    public AutoResizeTextView(Context context) {
        this(context, null);
    }

    public AutoResizeTextView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public AutoResizeTextView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f883a = 16.0f;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        CharSequence text = getText();
        float textSize = getTextSize();
        while (textSize > a.AnonymousClass1.b(getContext()) * this.f883a) {
            TextPaint paint = getPaint();
            float measureText = paint.measureText(text, 0, text.length());
            new StringBuilder("onMeasure: textViewWidth = ").append(View.MeasureSpec.getSize(widthMeasureSpec));
            if (measureText <= View.MeasureSpec.getSize(widthMeasureSpec)) {
                break;
            }
            textSize -= a.AnonymousClass1.b(getContext());
            paint.setTextSize(textSize);
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }
}
