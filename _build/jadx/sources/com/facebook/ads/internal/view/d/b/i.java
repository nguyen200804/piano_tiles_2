package com.facebook.ads.internal.view.d.b;

import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import com.facebook.ads.internal.g.q;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i extends View implements m {

    /* renamed from: a, reason: collision with root package name */
    private final Paint f3004a;

    /* renamed from: b, reason: collision with root package name */
    private final Paint f3005b;
    private final Paint c;
    private a d;
    private final Paint e;
    private final RectF f;
    private com.facebook.ads.internal.view.o g;
    private int h;
    private final AtomicInteger i;
    private final AtomicBoolean j;
    private final com.facebook.ads.internal.view.d.a.m k;
    private final com.facebook.ads.internal.view.d.a.o l;
    private final com.facebook.ads.internal.view.d.a.c m;

    public enum a {
        CLOSE_BUTTON_MODE,
        SKIP_BUTTON_MODE
    }

    public i(Context context, int i, int i2) {
        super(context);
        this.d = a.CLOSE_BUTTON_MODE;
        this.i = new AtomicInteger(0);
        this.j = new AtomicBoolean(false);
        this.k = new com.facebook.ads.internal.view.d.a.m() { // from class: com.facebook.ads.internal.view.d.b.i.1
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.l lVar) {
                i.this.j.set(true);
            }
        };
        this.l = new com.facebook.ads.internal.view.d.a.o() { // from class: com.facebook.ads.internal.view.d.b.i.2
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.n nVar) {
                int i3 = i.this.h;
                int duration = i.this.g.getDuration();
                if (i3 <= 0) {
                    i.this.i.set(0);
                } else {
                    int min = Math.min(duration, i3 * 1000);
                    if (min == 0) {
                        return;
                    } else {
                        i.this.i.set(((min - i.this.g.getCurrentPosition()) * 100) / min);
                    }
                }
                i.this.postInvalidate();
            }
        };
        this.m = new com.facebook.ads.internal.view.d.a.c() { // from class: com.facebook.ads.internal.view.d.b.i.3
            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.b bVar) {
                i.this.h = 0;
                i.this.i.set(0);
                i.this.postInvalidate();
            }
        };
        float f = getResources().getDisplayMetrics().density;
        this.h = i;
        this.f3005b = new Paint();
        this.f3005b.setStyle(Paint.Style.FILL);
        this.f3005b.setColor(i2);
        this.c = new Paint();
        this.c.setColor(-1);
        this.c.setAlpha(230);
        this.c.setStyle(Paint.Style.FILL);
        this.c.setStrokeWidth(1.0f * f);
        this.c.setAntiAlias(true);
        this.f3004a = new Paint();
        this.f3004a.setColor(-16777216);
        this.f3004a.setStyle(Paint.Style.STROKE);
        this.f3004a.setAlpha(102);
        this.f3004a.setStrokeWidth(1.5f * f);
        this.f3004a.setAntiAlias(true);
        setLayerType(1, null);
        this.f3004a.setMaskFilter(new BlurMaskFilter(6.0f, BlurMaskFilter.Blur.NORMAL));
        this.e = new Paint();
        this.e.setColor(-10066330);
        this.e.setStyle(Paint.Style.STROKE);
        this.e.setStrokeWidth(f * 2.0f);
        this.e.setAntiAlias(true);
        this.f = new RectF();
    }

    @Override // com.facebook.ads.internal.view.d.b.m
    public void a(com.facebook.ads.internal.view.o oVar) {
        this.g = oVar;
        this.g.getEventBus().a((r<s, q>) this.k);
        this.g.getEventBus().a((r<s, q>) this.l);
        this.g.getEventBus().a((r<s, q>) this.m);
    }

    public boolean a() {
        if (this.g == null) {
            return false;
        }
        return this.h <= 0 || this.i.get() < 0;
    }

    public int getSkipSeconds() {
        return this.h;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (!this.j.get()) {
            super.onDraw(canvas);
            return;
        }
        int min = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        int i = min / 2;
        int i2 = min / 2;
        canvas.drawCircle(getPaddingLeft() + i, getPaddingTop() + i2, i, this.f3004a);
        canvas.drawCircle(getPaddingLeft() + i, i2 + getPaddingTop(), i, this.c);
        if (this.i.get() > 0) {
            this.f.set(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
            canvas.drawArc(this.f, -90.0f, (-(this.i.get() * 360)) / 100.0f, true, this.f3005b);
        } else if (this.d == a.SKIP_BUTTON_MODE) {
            int i3 = min / 4;
            int i4 = min / 3;
            Path path = new Path();
            path.moveTo(getPaddingLeft() + i3, getPaddingTop() + i4);
            path.lineTo(getPaddingLeft() + i, getPaddingTop() + i);
            path.lineTo(getPaddingLeft() + i3, (i4 * 2) + getPaddingTop());
            canvas.drawPath(path, this.e);
            Path path2 = new Path();
            path2.moveTo(getPaddingLeft() + i, getPaddingTop() + i4);
            path2.lineTo((i3 * 3) + getPaddingLeft(), getPaddingTop() + i);
            path2.lineTo(i + getPaddingLeft(), (i4 * 2) + getPaddingTop());
            canvas.drawPath(path2, this.e);
        } else {
            int i5 = min / 3;
            int i6 = min / 3;
            canvas.drawLine(getPaddingLeft() + i5, getPaddingTop() + i6, (i5 * 2) + getPaddingLeft(), (i6 * 2) + getPaddingTop(), this.e);
            canvas.drawLine((i5 * 2) + getPaddingLeft(), getPaddingTop() + i6, getPaddingLeft() + i5, (i6 * 2) + getPaddingTop(), this.e);
        }
        super.onDraw(canvas);
    }

    public void setButtonMode(a aVar) {
        this.d = aVar;
    }
}
