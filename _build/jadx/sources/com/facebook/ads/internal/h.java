package com.facebook.ads.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h extends View {

    /* renamed from: a, reason: collision with root package name */
    private Paint f2746a;

    /* renamed from: b, reason: collision with root package name */
    private Paint f2747b;
    private Paint c;
    private int d;
    private boolean e;

    public h(Context context) {
        this(context, 60, true);
    }

    public h(Context context, int i, boolean z) {
        super(context);
        this.d = i;
        this.e = z;
        if (z) {
            this.f2746a = new Paint();
            this.f2746a.setColor(-3355444);
            this.f2746a.setStyle(Paint.Style.STROKE);
            this.f2746a.setStrokeWidth(3.0f);
            this.f2746a.setAntiAlias(true);
            this.f2747b = new Paint();
            this.f2747b.setColor(-1287371708);
            this.f2747b.setStyle(Paint.Style.FILL);
            this.f2747b.setAntiAlias(true);
            this.c = new Paint();
            this.c.setColor(-1);
            this.c.setStyle(Paint.Style.STROKE);
            this.c.setStrokeWidth(6.0f);
            this.c.setAntiAlias(true);
        }
        a();
    }

    private void a() {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (this.d * displayMetrics.density), (int) (displayMetrics.density * this.d));
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.e) {
            if (canvas.isHardwareAccelerated() && Build.VERSION.SDK_INT < 17) {
                setLayerType(1, null);
            }
            int min = Math.min(canvas.getWidth(), canvas.getHeight());
            int i = min / 2;
            int i2 = min / 2;
            canvas.drawCircle(i, i2, (i * 2) / 3, this.f2746a);
            canvas.drawCircle(i, i2, r3 - 2, this.f2747b);
            int i3 = min / 3;
            int i4 = min / 3;
            canvas.drawLine(i3, i4, i3 * 2, i4 * 2, this.c);
            canvas.drawLine(i3 * 2, i4, i3, i4 * 2, this.c);
        }
        super.onDraw(canvas);
    }
}
