package com.cmplay.tile2.ui.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.cmplay.util.c;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ScoreRankView extends View {

    /* renamed from: a, reason: collision with root package name */
    private int f1687a;

    /* renamed from: b, reason: collision with root package name */
    private int f1688b;
    private Bitmap c;
    private int d;
    private int e;

    public ScoreRankView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.c = null;
        this.e = 0;
        a();
    }

    public ScoreRankView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.c = null;
        this.e = 0;
        a();
    }

    public ScoreRankView(Context context) {
        super(context);
        this.c = null;
        this.e = 0;
        a();
    }

    private void a() {
        this.f1688b = a(50);
        this.f1687a = a(40);
        this.d = 0;
    }

    int a(int i) {
        return (int) ((getResources().getDisplayMetrics().density * i) + 0.5f);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.c == null || this.e == 0) {
            super.onDraw(canvas);
            return;
        }
        for (int i = 0; i < this.e; i++) {
            canvas.drawBitmap(this.c, (this.f1687a * i) + ((i + 1) * this.d), 0, (Paint) null);
        }
    }

    public void a(int i, int i2) {
        this.c = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(getResources(), i), this.f1687a, this.f1688b, true);
        this.e = i2;
        c.a("ScoreRankView", "setRankResouce count =" + this.e);
        invalidate();
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int b2 = b(this.e > 0 ? (this.e * (this.f1687a + this.d)) + this.d : 0, widthMeasureSpec);
        setMeasuredDimension(b2, b2 > 0 ? b(this.f1688b, heightMeasureSpec) : 0);
    }

    private int b(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 1073741824) {
            return size;
        }
        if (mode == Integer.MIN_VALUE) {
            return Math.min(i, size);
        }
        return i;
    }
}
