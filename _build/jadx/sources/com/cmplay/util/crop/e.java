package com.cmplay.util.crop;

import android.graphics.Bitmap;
import android.graphics.Matrix;

/* compiled from: RotateBitmap.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class e {

    /* renamed from: a, reason: collision with root package name */
    private Bitmap f1765a;

    /* renamed from: b, reason: collision with root package name */
    private int f1766b;

    public e(Bitmap bitmap, int i) {
        this.f1765a = bitmap;
        this.f1766b = i % 360;
    }

    public void a(int i) {
        this.f1766b = i;
    }

    public int a() {
        return this.f1766b;
    }

    public Bitmap b() {
        return this.f1765a;
    }

    public void a(Bitmap bitmap) {
        this.f1765a = bitmap;
    }

    public Matrix c() {
        Matrix matrix = new Matrix();
        if (this.f1765a != null && this.f1766b != 0) {
            matrix.preTranslate(-(this.f1765a.getWidth() / 2), -(this.f1765a.getHeight() / 2));
            matrix.postRotate(this.f1766b);
            matrix.postTranslate(f() / 2, e() / 2);
        }
        return matrix;
    }

    public boolean d() {
        return (this.f1766b / 90) % 2 != 0;
    }

    public int e() {
        if (this.f1765a == null) {
            return 0;
        }
        if (d()) {
            return this.f1765a.getWidth();
        }
        return this.f1765a.getHeight();
    }

    public int f() {
        if (this.f1765a == null) {
            return 0;
        }
        if (d()) {
            return this.f1765a.getHeight();
        }
        return this.f1765a.getWidth();
    }

    public void g() {
        if (this.f1765a != null) {
            this.f1765a.recycle();
            this.f1765a = null;
        }
    }
}
