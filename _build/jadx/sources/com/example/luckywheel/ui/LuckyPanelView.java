package com.example.luckywheel.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class LuckyPanelView extends View {

    /* renamed from: a, reason: collision with root package name */
    private RectF f2347a;

    /* renamed from: b, reason: collision with root package name */
    private int f2348b;
    private Paint c;
    private Paint d;
    private Paint e;
    private int f;
    private Context g;
    private int h;
    private float i;
    private ArrayList<i> j;
    private Path k;
    private RectF l;
    private PaintFlagsDrawFilter m;

    public LuckyPanelView(Context context) {
        this(context, null);
    }

    public LuckyPanelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2347a = new RectF();
        this.h = (int) TypedValue.applyDimension(1, 13.0f, getResources().getDisplayMetrics());
        this.i = TypedValue.applyDimension(2, 12.0f, getResources().getDisplayMetrics());
        this.j = new ArrayList<>();
        setLayerType(1, null);
        this.g = context;
        setFocusable(true);
        setFocusableInTouchMode(true);
        setKeepScreenOn(true);
        j.a(context).a();
        this.j = j.a(context).d();
        b();
    }

    private void a(Canvas canvas) {
        canvas.drawCircle(getMeasuredWidth() >> 1, getMeasuredHeight() >> 1, (getMeasuredWidth() >> 1) - (this.h >> 1), this.e);
    }

    private void a(Canvas canvas, float f, float f2, float f3, float f4, float f5) {
        this.k.reset();
        this.k.moveTo(f, f2);
        this.k.lineTo((float) (f + (f3 * Math.cos((f4 * 3.141592653589793d) / 180.0d))), (float) (f2 + (f3 * Math.sin((f4 * 3.141592653589793d) / 180.0d))));
        this.k.lineTo((float) (f + (f3 * Math.cos((f5 * 3.141592653589793d) / 180.0d))), (float) (f2 + (f3 * Math.sin((f5 * 3.141592653589793d) / 180.0d))));
        this.k.close();
        this.k.addArc(this.l, f4, f5 - f4);
        canvas.drawPath(this.k, this.c);
    }

    private void a(Canvas canvas, float f, float f2, String str, int i, int i2, int i3) {
        float f3;
        int i4;
        if (i3 != 0) {
            return;
        }
        Path path = new Path();
        path.addArc(this.f2347a, f, f2);
        this.d.setColor(i);
        this.d.setFakeBoldText(true);
        this.d.setLinearText(true);
        this.d.setAntiAlias(true);
        if (i3 != 0) {
            f3 = ((this.f2348b - (this.h << 1)) / 2.0f) / 3.2f;
            i4 = 12;
            if (Build.VERSION.SDK_INT >= 21) {
                this.d.setLetterSpacing(0.2f);
            }
        } else {
            f3 = ((this.f2348b - (this.h << 1)) / 2) / 5.0f;
            i4 = this.g.getResources().getDisplayMetrics().densityDpi <= 320 ? 16 : 18;
            if (Build.VERSION.SDK_INT >= 21) {
                this.d.setLetterSpacing(0.1f);
            }
        }
        this.d.setTextSize(TypedValue.applyDimension(2, i4, getResources().getDisplayMetrics()));
        canvas.drawTextOnPath(str, path, (float) ((((((this.f2348b - (this.h << 1)) * 3.141592653589793d) * i2) / 360.0d) / 2.0d) - (this.d.measureText(str) / 2.0f)), f3, this.d);
    }

    private void a(Canvas canvas, float f, int i, int i2) {
        int i3 = (this.f2348b - (this.h << 1)) / 10;
        int f2 = this.j.get(i2).f();
        if (f2 != 0) {
            try {
                Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), f2);
                if (decodeResource != null) {
                    float f3 = (float) (((i / 2) + f) * 0.017453292519943295d);
                    int cos = (int) (this.f + ((((this.f2348b - (this.h << 1)) / 2) / 1.18d) * Math.cos(f3)));
                    int sin = (int) (this.f + ((((this.f2348b - (this.h << 1)) / 2) / 1.2d) * Math.sin(f3)));
                    canvas.drawBitmap(decodeResource, (Rect) null, new Rect(cos - (i3 / 2), sin - (i3 / 2), cos + (i3 / 2), (i3 / 2) + sin), (Paint) null);
                    decodeResource.recycle();
                }
            } catch (Exception e) {
            }
        }
    }

    private void b() {
        this.c = new Paint();
        this.c.setStrokeWidth(5.0f);
        this.c.setAntiAlias(true);
        this.d = new Paint();
        this.d.setColor(-1);
        this.d.setTextSize(this.i);
        this.e = new Paint();
        this.e.setAntiAlias(true);
        this.e.setDither(true);
        this.e.setColor(-1);
        this.e.setStyle(Paint.Style.FILL_AND_STROKE);
        this.e.setStrokeWidth(this.h);
        this.e.setFlags(1);
        this.k = new Path();
        this.m = new PaintFlagsDrawFilter(0, 3);
    }

    public void a() {
        j.a(this.g).b();
        j.a(this.g).c();
        this.j = j.a(this.g).d();
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        try {
            canvas.setDrawFilter(this.m);
            a(canvas);
            float f = 270.0f;
            int i = 0;
            int i2 = 1;
            while (i < this.j.size()) {
                int i3 = 0;
                while (true) {
                    int i4 = i3;
                    if (i4 < this.j.size()) {
                        i iVar = this.j.get(i4);
                        if (iVar.c() == i2) {
                            float d = iVar.d();
                            this.c.setColor(iVar.g());
                            a(canvas, getMeasuredWidth() >> 1, getMeasuredHeight() >> 1, (this.f2348b / 2) - this.h, f, f + d);
                            a(canvas, f, d, iVar.a() > 0 ? "+" + iVar.a() : iVar.e(), iVar.h(), iVar.d(), iVar.f());
                            a(canvas, f, iVar.d(), i);
                            f += d;
                        } else {
                            i3 = i4 + 1;
                        }
                    }
                }
                i++;
                i2++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int min = Math.min(getMeasuredWidth(), getMeasuredHeight());
        this.f2348b = (min - getPaddingLeft()) - getPaddingRight();
        this.f = min / 2;
        setMeasuredDimension(min, min);
        this.f2347a = new RectF(getPaddingLeft() + this.h, getPaddingLeft() + this.h, (this.f2348b + getPaddingLeft()) - this.h, (this.f2348b + getPaddingLeft()) - this.h);
        int i3 = (this.f2348b / 2) - this.h;
        this.l = new RectF((min / 2) - i3, (min / 2) - i3, (min / 2) + i3, (min / 2) + i3);
    }
}
