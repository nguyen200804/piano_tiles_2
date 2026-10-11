package com.facebook.notifications.internal.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;

/* compiled from: GifView.java */
@SuppressLint({"ViewConstructor"})
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f extends View {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3452a = f.class.getCanonicalName();

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final a f3453b;

    @NonNull
    private final Paint c;

    @NonNull
    private final Rect d;

    @NonNull
    private final RectF e;

    /* compiled from: GifView.java */
    private class a extends Thread {

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        private final com.facebook.notifications.internal.utilities.b f3455b;

        @Nullable
        private Bitmap c;

        public a(com.facebook.notifications.internal.utilities.b bVar) {
            this.f3455b = bVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (this.f3455b != null) {
                do {
                    long nanoTime = System.nanoTime();
                    this.f3455b.a();
                    long b2 = (this.f3455b.b() * 1000000) + nanoTime;
                    synchronized (this) {
                        this.c = this.f3455b.e();
                        notifyAll();
                    }
                    long nanoTime2 = System.nanoTime();
                    long max = Math.max(0L, ((b2 - nanoTime2) - (nanoTime2 - nanoTime)) / 1000000);
                    f.this.postInvalidate();
                    try {
                        Thread.sleep(max);
                    } catch (InterruptedException e) {
                        return;
                    }
                } while (!Thread.interrupted());
            }
        }
    }

    public f(@NonNull Context context, @Nullable com.facebook.notifications.internal.utilities.b bVar) {
        super(context);
        setDrawingCacheEnabled(false);
        setWillNotCacheDrawing(true);
        this.f3453b = new a(bVar);
        this.c = new Paint();
        this.d = new Rect();
        this.e = new RectF();
        this.c.setAntiAlias(true);
        this.c.setFilterBitmap(true);
        this.c.setDither(true);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f3453b.start();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        this.f3453b.interrupt();
        try {
            this.f3453b.join();
        } catch (InterruptedException e) {
            Log.e(f3452a, "Failed to kill decoder thread", e);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i;
        int i2;
        com.facebook.notifications.internal.utilities.b bVar = this.f3453b.f3455b;
        if (bVar == null) {
            setMeasuredDimension(0, 0);
            return;
        }
        boolean z = View.MeasureSpec.getMode(widthMeasureSpec) != 1073741824;
        boolean z2 = View.MeasureSpec.getMode(heightMeasureSpec) != 1073741824;
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        float c = bVar.c();
        float d = bVar.d();
        float f = size2 / d;
        float f2 = size / c;
        if (z && z2) {
            float min = Math.min(f, f2);
            i2 = Math.round(size * min);
            i = Math.round(min * size2);
        } else if (z) {
            i2 = Math.round(size2 * (c / d));
            i = size2;
        } else if (z2) {
            i = Math.round(size * (d / c));
            i2 = size;
        } else {
            i = size2;
            i2 = size;
        }
        setMeasuredDimension(i2, i);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmap;
        super.onDraw(canvas);
        synchronized (this.f3453b) {
            Bitmap bitmap2 = this.f3453b.c;
            if (bitmap2 == null) {
                try {
                    this.f3453b.wait(100L);
                    bitmap = this.f3453b.c;
                } catch (InterruptedException e) {
                    Log.e(f3452a, "Failed to wait", e);
                }
            }
            bitmap = bitmap2;
        }
        if (bitmap != null) {
            float width = bitmap.getWidth();
            float height = bitmap.getHeight();
            float width2 = getWidth();
            float height2 = getHeight();
            float max = Math.max(height2 / height, width2 / width);
            float f = width * max;
            float f2 = height * max;
            float f3 = (width2 - f) / 2.0f;
            float f4 = (height2 - f2) / 2.0f;
            this.d.set(0, 0, bitmap.getWidth(), bitmap.getHeight());
            this.e.set(f3, f4, f + f3, f2 + f4);
            canvas.drawBitmap(bitmap, this.d, this.e, this.c);
        }
    }
}
