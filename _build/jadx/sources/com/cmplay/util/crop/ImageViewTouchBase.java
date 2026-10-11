package com.cmplay.util.crop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.ImageView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
abstract class ImageViewTouchBase extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    private final Matrix f1748a;

    /* renamed from: b, reason: collision with root package name */
    private final float[] f1749b;
    private Runnable c;
    protected Matrix d;
    protected Matrix e;
    protected final e f;
    int g;
    int h;
    float i;
    protected Handler j;
    private a k;

    public interface a {
        void a(Bitmap bitmap);
    }

    public ImageViewTouchBase(Context context) {
        super(context);
        this.d = new Matrix();
        this.e = new Matrix();
        this.f1748a = new Matrix();
        this.f1749b = new float[9];
        this.f = new e(null, 0);
        this.g = -1;
        this.h = -1;
        this.j = new Handler();
        f();
    }

    public ImageViewTouchBase(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.d = new Matrix();
        this.e = new Matrix();
        this.f1748a = new Matrix();
        this.f1749b = new float[9];
        this.f = new e(null, 0);
        this.g = -1;
        this.h = -1;
        this.j = new Handler();
        f();
    }

    public ImageViewTouchBase(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.d = new Matrix();
        this.e = new Matrix();
        this.f1748a = new Matrix();
        this.f1749b = new float[9];
        this.f = new e(null, 0);
        this.g = -1;
        this.h = -1;
        this.j = new Handler();
        f();
    }

    public void a(a aVar) {
        this.k = aVar;
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.g = right - left;
        this.h = bottom - top;
        Runnable runnable = this.c;
        if (runnable != null) {
            this.c = null;
            runnable.run();
        }
        if (this.f.b() != null) {
            a(this.f, this.d, true);
            setImageMatrix(d());
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4 || event.getRepeatCount() != 0) {
            return super.onKeyDown(keyCode, event);
        }
        event.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (keyCode != 4 || !event.isTracking() || event.isCanceled() || c() <= 1.0f) {
            return super.onKeyUp(keyCode, event);
        }
        a(1.0f);
        return true;
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        a(bitmap, 0);
    }

    private void a(Bitmap bitmap, int i) {
        super.setImageBitmap(bitmap);
        Drawable drawable = getDrawable();
        if (drawable != null) {
            drawable.setDither(true);
        }
        Bitmap b2 = this.f.b();
        this.f.a(bitmap);
        this.f.a(i);
        if (b2 != null && b2 != bitmap && this.k != null) {
            this.k.a(b2);
        }
    }

    public void b() {
        a((Bitmap) null, true);
    }

    public void a(Bitmap bitmap, boolean z) {
        a(new e(bitmap, 0), z);
    }

    public void a(final e eVar, final boolean z) {
        if (getWidth() <= 0) {
            this.c = new Runnable() { // from class: com.cmplay.util.crop.ImageViewTouchBase.1
                @Override // java.lang.Runnable
                public void run() {
                    ImageViewTouchBase.this.a(eVar, z);
                }
            };
            return;
        }
        if (eVar.b() != null) {
            a(eVar, this.d, true);
            a(eVar.b(), eVar.a());
        } else {
            this.d.reset();
            setImageBitmap(null);
        }
        if (z) {
            this.e.reset();
        }
        setImageMatrix(d());
        this.i = e();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void a(boolean r8, boolean r9) {
        /*
            r7 = this;
            r6 = 1073741824(0x40000000, float:2.0)
            r0 = 0
            com.cmplay.util.crop.e r1 = r7.f
            android.graphics.Bitmap r1 = r1.b()
            if (r1 != 0) goto Lc
        Lb:
            return
        Lc:
            android.graphics.Matrix r2 = r7.d()
            android.graphics.RectF r3 = new android.graphics.RectF
            int r4 = r1.getWidth()
            float r4 = (float) r4
            int r1 = r1.getHeight()
            float r1 = (float) r1
            r3.<init>(r0, r0, r4, r1)
            r2.mapRect(r3)
            float r1 = r3.height()
            float r2 = r3.width()
            if (r9 == 0) goto L88
            int r4 = r7.getHeight()
            float r5 = (float) r4
            int r5 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r5 >= 0) goto L58
            float r4 = (float) r4
            float r1 = r4 - r1
            float r1 = r1 / r6
            float r4 = r3.top
            float r1 = r1 - r4
        L3c:
            if (r8 == 0) goto L4d
            int r4 = r7.getWidth()
            float r5 = (float) r4
            int r5 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r5 >= 0) goto L72
            float r0 = (float) r4
            float r0 = r0 - r2
            float r0 = r0 / r6
            float r2 = r3.left
            float r0 = r0 - r2
        L4d:
            r7.a(r0, r1)
            android.graphics.Matrix r0 = r7.d()
            r7.setImageMatrix(r0)
            goto Lb
        L58:
            float r1 = r3.top
            int r1 = (r1 > r0 ? 1 : (r1 == r0 ? 0 : -1))
            if (r1 <= 0) goto L62
            float r1 = r3.top
            float r1 = -r1
            goto L3c
        L62:
            float r1 = r3.bottom
            float r4 = (float) r4
            int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r1 >= 0) goto L88
            int r1 = r7.getHeight()
            float r1 = (float) r1
            float r4 = r3.bottom
            float r1 = r1 - r4
            goto L3c
        L72:
            float r2 = r3.left
            int r2 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r2 <= 0) goto L7c
            float r0 = r3.left
            float r0 = -r0
            goto L4d
        L7c:
            float r2 = r3.right
            float r5 = (float) r4
            int r2 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r2 >= 0) goto L4d
            float r0 = (float) r4
            float r2 = r3.right
            float r0 = r0 - r2
            goto L4d
        L88:
            r1 = r0
            goto L3c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.util.crop.ImageViewTouchBase.a(boolean, boolean):void");
    }

    private void f() {
        setScaleType(ImageView.ScaleType.MATRIX);
    }

    protected float a(Matrix matrix, int i) {
        matrix.getValues(this.f1749b);
        return this.f1749b[i];
    }

    protected float a(Matrix matrix) {
        return a(matrix, 0);
    }

    protected float c() {
        return a(this.e);
    }

    private void a(e eVar, Matrix matrix, boolean z) {
        float width = getWidth();
        float height = getHeight();
        float f = eVar.f();
        float e = eVar.e();
        matrix.reset();
        float min = Math.min(Math.min(width / f, 3.0f), Math.min(height / e, 3.0f));
        if (z) {
            matrix.postConcat(eVar.c());
        }
        matrix.postScale(min, min);
        matrix.postTranslate((width - (f * min)) / 2.0f, (height - (e * min)) / 2.0f);
    }

    protected Matrix d() {
        this.f1748a.set(this.d);
        this.f1748a.postConcat(this.e);
        return this.f1748a;
    }

    public Matrix a() {
        Matrix matrix = new Matrix();
        a(this.f, matrix, false);
        matrix.postConcat(this.e);
        return matrix;
    }

    protected float e() {
        if (this.f.b() == null) {
            return 1.0f;
        }
        return Math.max(this.f.f() / this.g, this.f.e() / this.h) * 4.0f;
    }

    protected void a(float f, float f2, float f3) {
        if (f > this.i) {
            f = this.i;
        }
        float c = f / c();
        this.e.postScale(c, c, f2, f3);
        setImageMatrix(d());
        a(true, true);
    }

    protected void a(float f, final float f2, final float f3, final float f4) {
        final float c = (f - c()) / f4;
        final float c2 = c();
        final long currentTimeMillis = System.currentTimeMillis();
        this.j.post(new Runnable() { // from class: com.cmplay.util.crop.ImageViewTouchBase.2
            @Override // java.lang.Runnable
            public void run() {
                float min = Math.min(f4, System.currentTimeMillis() - currentTimeMillis);
                ImageViewTouchBase.this.a(c2 + (c * min), f2, f3);
                if (min < f4) {
                    ImageViewTouchBase.this.j.post(this);
                }
            }
        });
    }

    protected void a(float f) {
        a(f, getWidth() / 2.0f, getHeight() / 2.0f);
    }

    protected void a(float f, float f2) {
        this.e.postTranslate(f, f2);
    }

    protected void b(float f, float f2) {
        a(f, f2);
        setImageMatrix(d());
    }
}
