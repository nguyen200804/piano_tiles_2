package com.cmplay.util.crop;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import com.cmplay.tiles4.R;

/* compiled from: HighlightView.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class c {

    /* renamed from: a, reason: collision with root package name */
    RectF f1758a;

    /* renamed from: b, reason: collision with root package name */
    Rect f1759b;
    Matrix c;
    private RectF d;
    private View h;
    private boolean i;
    private boolean j;
    private int k;
    private boolean n;
    private float o;
    private float p;
    private float q;
    private boolean r;
    private final Paint e = new Paint();
    private final Paint f = new Paint();
    private final Paint g = new Paint();
    private b l = b.None;
    private a m = a.Changing;

    /* compiled from: HighlightView.java */
    enum a {
        Changing,
        Always,
        Never
    }

    /* compiled from: HighlightView.java */
    enum b {
        None,
        Move,
        Grow
    }

    public c(View view) {
        this.h = view;
        a(view.getContext());
    }

    private void a(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.cropImageStyle, typedValue, true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(typedValue.resourceId, R.styleable.CropImageView);
        try {
            this.i = obtainStyledAttributes.getBoolean(1, false);
            this.j = obtainStyledAttributes.getBoolean(2, false);
            this.k = obtainStyledAttributes.getColor(0, -13388315);
            this.m = a.values()[obtainStyledAttributes.getInt(3, 0)];
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public void a(Matrix matrix, Rect rect, RectF rectF, boolean z) {
        this.c = new Matrix(matrix);
        this.f1758a = rectF;
        this.d = new RectF(rect);
        this.n = z;
        this.o = this.f1758a.width() / this.f1758a.height();
        this.f1759b = c();
        this.e.setARGB(125, 50, 50, 50);
        this.f.setStyle(Paint.Style.STROKE);
        this.f.setAntiAlias(true);
        this.q = b(2.0f);
        this.g.setColor(this.k);
        this.g.setStyle(Paint.Style.FILL);
        this.g.setAntiAlias(true);
        this.p = b(12.0f);
        this.l = b.None;
    }

    private float b(float f) {
        return this.h.getResources().getDisplayMetrics().density * f;
    }

    protected void a(Canvas canvas) {
        canvas.save();
        Path path = new Path();
        this.f.setStrokeWidth(this.q);
        if (!b()) {
            this.f.setColor(-16777216);
            canvas.drawRect(this.f1759b, this.f);
            return;
        }
        Rect rect = new Rect();
        this.h.getDrawingRect(rect);
        path.addRect(new RectF(this.f1759b), Path.Direction.CW);
        this.f.setColor(this.k);
        if (c(canvas)) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawRect(rect, this.e);
        } else {
            b(canvas);
        }
        canvas.restore();
        canvas.drawPath(path, this.f);
        if (this.i) {
            e(canvas);
        }
        if (this.j) {
            f(canvas);
        }
        if (this.m == a.Always || (this.m == a.Changing && this.l == b.Grow)) {
            d(canvas);
        }
    }

    private void b(Canvas canvas) {
        canvas.drawRect(0.0f, 0.0f, canvas.getWidth(), this.f1759b.top, this.e);
        canvas.drawRect(0.0f, this.f1759b.bottom, canvas.getWidth(), canvas.getHeight(), this.e);
        canvas.drawRect(0.0f, this.f1759b.top, this.f1759b.left, this.f1759b.bottom, this.e);
        canvas.drawRect(this.f1759b.right, this.f1759b.top, canvas.getWidth(), this.f1759b.bottom, this.e);
    }

    @SuppressLint({"NewApi"})
    private boolean c(Canvas canvas) {
        if (Build.VERSION.SDK_INT == 17) {
            return false;
        }
        return Build.VERSION.SDK_INT < 14 || Build.VERSION.SDK_INT > 15 || !canvas.isHardwareAccelerated();
    }

    private void d(Canvas canvas) {
        int i = this.f1759b.left + ((this.f1759b.right - this.f1759b.left) / 2);
        int i2 = this.f1759b.top + ((this.f1759b.bottom - this.f1759b.top) / 2);
        canvas.drawCircle(this.f1759b.left, i2, this.p, this.g);
        canvas.drawCircle(i, this.f1759b.top, this.p, this.g);
        canvas.drawCircle(this.f1759b.right, i2, this.p, this.g);
        canvas.drawCircle(i, this.f1759b.bottom, this.p, this.g);
    }

    private void e(Canvas canvas) {
        this.f.setStrokeWidth(1.0f);
        float f = (this.f1759b.right - this.f1759b.left) / 3;
        float f2 = (this.f1759b.bottom - this.f1759b.top) / 3;
        canvas.drawLine(this.f1759b.left + f, this.f1759b.top, this.f1759b.left + f, this.f1759b.bottom, this.f);
        canvas.drawLine((f * 2.0f) + this.f1759b.left, this.f1759b.top, (f * 2.0f) + this.f1759b.left, this.f1759b.bottom, this.f);
        canvas.drawLine(this.f1759b.left, this.f1759b.top + f2, this.f1759b.right, this.f1759b.top + f2, this.f);
        canvas.drawLine(this.f1759b.left, (f2 * 2.0f) + this.f1759b.top, this.f1759b.right, (f2 * 2.0f) + this.f1759b.top, this.f);
    }

    private void f(Canvas canvas) {
        this.f.setStrokeWidth(1.0f);
        canvas.drawOval(new RectF(this.f1759b), this.f);
    }

    public void a(b bVar) {
        if (bVar != this.l) {
            this.l = bVar;
            this.h.invalidate();
        }
    }

    public int a(float f, float f2) {
        boolean z = false;
        Rect c = c();
        boolean z2 = f2 >= ((float) c.top) - 20.0f && f2 < ((float) c.bottom) + 20.0f;
        if (f >= c.left - 20.0f && f < c.right + 20.0f) {
            z = true;
        }
        int i = (Math.abs(((float) c.left) - f) >= 20.0f || !z2) ? 1 : 3;
        if (Math.abs(c.right - f) < 20.0f && z2) {
            i |= 4;
        }
        if (Math.abs(c.top - f2) < 20.0f && z) {
            i |= 8;
        }
        int i2 = (Math.abs(((float) c.bottom) - f2) >= 20.0f || !z) ? i : i | 16;
        if (i2 == 1 && c.contains((int) f, (int) f2)) {
            return 32;
        }
        return i2;
    }

    void a(int i, float f, float f2) {
        Rect c = c();
        if (i == 32) {
            b((this.f1758a.width() / c.width()) * f, (this.f1758a.height() / c.height()) * f2);
            return;
        }
        if ((i & 6) == 0) {
            f = 0.0f;
        }
        if ((i & 24) == 0) {
            f2 = 0.0f;
        }
        c(f * (this.f1758a.width() / c.width()) * ((i & 2) != 0 ? -1 : 1), ((i & 8) != 0 ? -1 : 1) * f2 * (this.f1758a.height() / c.height()));
    }

    void b(float f, float f2) {
        Rect rect = new Rect(this.f1759b);
        this.f1758a.offset(f, f2);
        this.f1758a.offset(Math.max(0.0f, this.d.left - this.f1758a.left), Math.max(0.0f, this.d.top - this.f1758a.top));
        this.f1758a.offset(Math.min(0.0f, this.d.right - this.f1758a.right), Math.min(0.0f, this.d.bottom - this.f1758a.bottom));
        this.f1759b = c();
        rect.union(this.f1759b);
        rect.inset(-((int) this.p), -((int) this.p));
        this.h.invalidate(rect);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void c(float r9, float r10) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.util.crop.c.c(float, float):void");
    }

    public Rect a(float f) {
        return new Rect((int) (this.f1758a.left * f), (int) (this.f1758a.top * f), (int) (this.f1758a.right * f), (int) (this.f1758a.bottom * f));
    }

    private Rect c() {
        RectF rectF = new RectF(this.f1758a.left, this.f1758a.top, this.f1758a.right, this.f1758a.bottom);
        this.c.mapRect(rectF);
        return new Rect(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
    }

    public void a() {
        this.f1759b = c();
    }

    public boolean b() {
        return this.r;
    }

    public void a(boolean z) {
        this.r = z;
    }
}
