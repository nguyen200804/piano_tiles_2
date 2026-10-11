package com.facebook.ads.internal;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.annotation.IntRange;
import android.support.annotation.Nullable;
import android.support.v4.media.TransportMediator;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i extends Drawable {
    private int f;
    private int g;
    private String h;
    private int i;
    private boolean j;

    @Nullable
    private String k;
    private String l;
    private long m;

    @Nullable
    private WeakReference<com.facebook.ads.internal.j.a> o;

    /* renamed from: a, reason: collision with root package name */
    private final Paint f2751a = new Paint();

    /* renamed from: b, reason: collision with root package name */
    private final Paint f2752b = new Paint();
    private final Path c = new Path();
    private final TextPaint d = new TextPaint();
    private final Paint e = new Paint();
    private final Handler n = new Handler();
    private final Runnable p = new Runnable() { // from class: com.facebook.ads.internal.i.1
        @Override // java.lang.Runnable
        public void run() {
            i.this.c();
            if (i.this.j) {
                i.this.n.postDelayed(i.this.p, 250L);
            }
        }
    };

    public i() {
        this.f2751a.setColor(Color.argb(TransportMediator.KEYCODE_MEDIA_PAUSE, 36, 36, 36));
        this.f2751a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f2752b.setAntiAlias(true);
        this.f2752b.setColor(Color.argb(191, 0, 255, 0));
        this.f2752b.setStrokeWidth(20.0f);
        this.f2752b.setStyle(Paint.Style.STROKE);
        this.d.setAntiAlias(true);
        this.d.setColor(-1);
        this.d.setStyle(Paint.Style.FILL_AND_STROKE);
        this.d.setTextSize(30.0f);
        this.e.setColor(Color.argb(212, 0, 0, 0));
        this.e.setStyle(Paint.Style.FILL_AND_STROKE);
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        StringBuilder sb = new StringBuilder();
        if (this.f <= 0) {
            if (!TextUtils.isEmpty(this.k)) {
                sb.append(this.k);
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
            }
            if (!TextUtils.isEmpty(this.l)) {
                sb.append(this.l);
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
            }
            sb.append("Sdk ");
            sb.append("4.26.1");
            sb.append(", Loaded ");
            if (this.m > 0) {
                long max = Math.max(0L, System.currentTimeMillis() - this.m);
                int i = (int) (max / 3600000);
                long j = max % 3600000;
                int i2 = (int) (j / 60000);
                int i3 = (int) ((j % 60000) / 1000);
                if (i > 0) {
                    sb.append(i);
                    sb.append("h ");
                }
                if (i > 0 || i2 > 0) {
                    sb.append(i2);
                    sb.append("m ");
                }
                sb.append(i3);
                sb.append("s ago");
            } else {
                sb.append("Unknown");
            }
        } else {
            sb.append("Card ");
            sb.append(this.g + 1);
            sb.append(" of ");
            sb.append(this.f);
        }
        sb.append("\nView: ");
        if (this.o == null || this.o.get() == null) {
            sb.append("Viewability Checker not set");
        } else {
            sb.append(this.o.get().c());
        }
        this.h = sb.toString();
        float f = -2.14748365E9f;
        for (String str : this.h.split(IOUtils.LINE_SEPARATOR_UNIX)) {
            f = Math.max(f, this.d.measureText(str, 0, str.length()));
        }
        this.i = (int) (0.5f + f);
        invalidateSelf();
    }

    public void a(int i, int i2) {
        this.f = i;
        this.g = i2;
        c();
    }

    public void a(long j) {
        this.m = j;
        c();
    }

    public void a(com.facebook.ads.internal.j.a aVar) {
        this.o = new WeakReference<>(aVar);
        c();
    }

    public void a(String str) {
        this.k = str;
        c();
    }

    public void a(boolean z) {
        this.j = z;
        if (this.j) {
            this.n.post(this.p);
        } else {
            this.n.removeCallbacks(this.p);
        }
        invalidateSelf();
    }

    public boolean a() {
        return this.j;
    }

    public void b() {
        this.f = 0;
        this.g = -1;
        this.h = "Initializing...";
        this.i = 100;
        this.k = null;
        this.m = -1L;
        this.o = null;
        a(false);
    }

    public void b(String str) {
        this.l = str;
        c();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.j) {
            int width = canvas.getWidth();
            int height = canvas.getHeight();
            canvas.drawRect(0.0f, 0.0f, width, height, this.f2751a);
            StaticLayout staticLayout = new StaticLayout(this.h, this.d, this.i, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
            float f = width / 2.0f;
            float f2 = height / 2.0f;
            float width2 = staticLayout.getWidth() / 2.0f;
            float height2 = staticLayout.getHeight() / 2.0f;
            canvas.drawRect((f - width2) - 40.0f, (f2 - height2) - 40.0f, 40.0f + f + width2, 40.0f + f2 + height2, this.e);
            canvas.save();
            canvas.translate(f - width2, f2 - height2);
            staticLayout.draw(canvas);
            canvas.restore();
            this.c.reset();
            this.c.moveTo(0.0f, 0.0f);
            this.c.lineTo(width, 0.0f);
            this.c.lineTo(width, height);
            this.c.lineTo(0.0f, height);
            this.c.lineTo(0.0f, 0.0f);
            canvas.drawPath(this.c, this.f2752b);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
    }
}
