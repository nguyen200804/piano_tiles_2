package com.duapps.ad.banner.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.duapps.ad.R;
import com.google.ads.AdSize;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ShimmerLJYFrameLayout extends FrameLayout {
    private static final PorterDuffXfermode c = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);

    /* renamed from: a, reason: collision with root package name */
    protected ValueAnimator f2002a;

    /* renamed from: b, reason: collision with root package name */
    protected Bitmap f2003b;
    private Paint d;
    private Paint e;
    private a f;
    private d g;
    private Bitmap h;
    private Bitmap i;
    private boolean j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private boolean q;
    private ViewTreeObserver.OnGlobalLayoutListener r;

    public enum b {
        CW_0,
        CW_90,
        CW_180,
        CW_270
    }

    public enum c {
        LINEAR,
        RADIAL
    }

    private static class a {

        /* renamed from: a, reason: collision with root package name */
        public b f2008a;

        /* renamed from: b, reason: collision with root package name */
        public float f2009b;
        public float c;
        public int d;
        public int e;
        public float f;
        public float g;
        public float h;
        public c i;

        private a() {
        }

        public int a(int i) {
            return this.d > 0 ? this.d : (int) (i * this.g);
        }

        public int b(int i) {
            return this.e > 0 ? this.e : (int) (i * this.h);
        }

        public int[] a() {
            int argb = Color.argb(0, 255, 255, 255);
            int argb2 = Color.argb(100, 255, 255, 255);
            switch (this.i) {
                case RADIAL:
                    return new int[]{-16777216, -16777216, 0};
                default:
                    return new int[]{argb, argb2, argb2, argb};
            }
        }

        public float[] b() {
            switch (this.i) {
                case RADIAL:
                    return new float[]{0.0f, Math.min(this.f, 1.0f), Math.min(this.f + this.c, 1.0f)};
                default:
                    return new float[]{Math.max(((1.0f - this.f) - this.c) / 2.0f, 0.0f), Math.max((1.0f - this.f) / 2.0f, 0.0f), Math.min((this.f + 1.0f) / 2.0f, 1.0f), Math.min(((this.f + 1.0f) + this.c) / 2.0f, 1.0f)};
            }
        }
    }

    private static class d {

        /* renamed from: a, reason: collision with root package name */
        public int f2014a;

        /* renamed from: b, reason: collision with root package name */
        public int f2015b;
        public int c;
        public int d;

        private d() {
        }

        public void a(int i, int i2, int i3, int i4) {
            this.f2014a = i;
            this.f2015b = i2;
            this.c = i3;
            this.d = i4;
        }
    }

    public ShimmerLJYFrameLayout(Context context) {
        this(context, null, 0);
    }

    public ShimmerLJYFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShimmerLJYFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setWillNotDraw(false);
        this.f = new a();
        this.d = new Paint();
        this.e = new Paint();
        this.e.setAntiAlias(true);
        this.e.setDither(true);
        this.e.setFilterBitmap(true);
        this.e.setXfermode(c);
        a();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ShimmerLJYFrameLayout, 0, 0);
            try {
                if (obtainStyledAttributes.hasValue(R.styleable.ShimmerLJYFrameLayout_auto_start)) {
                    a(obtainStyledAttributes.getBoolean(R.styleable.ShimmerLJYFrameLayout_auto_start, false));
                }
                if (obtainStyledAttributes.hasValue(R.styleable.ShimmerLJYFrameLayout_base_alpha)) {
                    a(obtainStyledAttributes.getFloat(R.styleable.ShimmerLJYFrameLayout_base_alpha, 0.0f));
                }
                if (obtainStyledAttributes.hasValue(R.styleable.ShimmerLJYFrameLayout_duration)) {
                    a(obtainStyledAttributes.getInt(R.styleable.ShimmerLJYFrameLayout_duration, 0));
                }
                if (obtainStyledAttributes.hasValue(R.styleable.ShimmerLJYFrameLayout_repeat_count)) {
                    b(obtainStyledAttributes.getInt(R.styleable.ShimmerLJYFrameLayout_repeat_count, 0));
                }
                if (obtainStyledAttributes.hasValue(R.styleable.ShimmerLJYFrameLayout_repeat_delay)) {
                    c(obtainStyledAttributes.getInt(R.styleable.ShimmerLJYFrameLayout_repeat_delay, 0));
                }
                if (obtainStyledAttributes.hasValue(R.styleable.ShimmerLJYFrameLayout_repeat_mode)) {
                    d(obtainStyledAttributes.getInt(R.styleable.ShimmerLJYFrameLayout_repeat_mode, 0));
                }
                if (obtainStyledAttributes.hasValue(R.styleable.ShimmerLJYFrameLayout_angle)) {
                    switch (obtainStyledAttributes.getInt(R.styleable.ShimmerLJYFrameLayout_angle, 0)) {
                        case AdSize.LARGE_AD_HEIGHT /* 90 */:
                            this.f.f2008a = b.CW_90;
                            break;
                        case 180:
                            this.f.f2008a = b.CW_180;
                            break;
                        case 270:
                            this.f.f2008a = b.CW_270;
                            break;
                        default:
                            this.f.f2008a = b.CW_0;
                            break;
                    }
                }
                if (obtainStyledAttributes.hasValue(R.styleable.ShimmerLJYFrameLayout_shape)) {
                    switch (obtainStyledAttributes.getInt(R.styleable.ShimmerLJYFrameLayout_shape, 0)) {
                        case 1:
                            this.f.i = c.RADIAL;
                            break;
                        default:
                            this.f.i = c.LINEAR;
                            break;
                    }
                }
                if (obtainStyledAttributes.hasValue(R.styleable.ShimmerLJYFrameLayout_dropoff)) {
                    this.f.c = obtainStyledAttributes.getFloat(R.styleable.ShimmerLJYFrameLayout_dropoff, 0.0f);
                }
                if (obtainStyledAttributes.hasValue(R.styleable.ShimmerLJYFrameLayout_fixed_width)) {
                    this.f.d = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ShimmerLJYFrameLayout_fixed_width, 0);
                }
                if (obtainStyledAttributes.hasValue(R.styleable.ShimmerLJYFrameLayout_fixed_height)) {
                    this.f.e = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ShimmerLJYFrameLayout_fixed_height, 0);
                }
                if (obtainStyledAttributes.hasValue(R.styleable.ShimmerLJYFrameLayout_intensity)) {
                    this.f.f = obtainStyledAttributes.getFloat(R.styleable.ShimmerLJYFrameLayout_intensity, 0.0f);
                }
                if (obtainStyledAttributes.hasValue(R.styleable.ShimmerLJYFrameLayout_relative_width)) {
                    this.f.g = obtainStyledAttributes.getFloat(R.styleable.ShimmerLJYFrameLayout_relative_width, 0.0f);
                }
                if (obtainStyledAttributes.hasValue(R.styleable.ShimmerLJYFrameLayout_relative_height)) {
                    this.f.h = obtainStyledAttributes.getFloat(R.styleable.ShimmerLJYFrameLayout_relative_height, 0.0f);
                }
                if (obtainStyledAttributes.hasValue(R.styleable.ShimmerLJYFrameLayout_tilt)) {
                    this.f.f2009b = obtainStyledAttributes.getFloat(R.styleable.ShimmerLJYFrameLayout_tilt, 0.0f);
                }
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
    }

    public void a() {
        a(false);
        a(1200);
        b(-1);
        c(0);
        d(1);
        this.f.f2008a = b.CW_0;
        this.f.i = c.LINEAR;
        this.f.c = 0.2f;
        this.f.d = 0;
        this.f.e = 0;
        this.f.f = 0.0f;
        this.f.g = 1.0f;
        this.f.h = 1.0f;
        this.f.f2009b = 40.0f;
        this.g = new d();
        a(1.0f);
        h();
    }

    public void a(boolean z) {
        this.j = z;
        h();
    }

    public void a(float f) {
        this.d.setAlpha((int) (a(0.0f, 1.0f, f) * 255.0f));
        h();
    }

    public void a(int i) {
        this.k = i;
        h();
    }

    public void b(int i) {
        this.l = i;
        h();
    }

    public void c(int i) {
        this.m = i;
        h();
    }

    public void d(int i) {
        this.n = i;
        h();
    }

    public void b() {
        if (!this.q) {
            l().start();
            this.q = true;
        }
    }

    public void c() {
        if (this.f2002a != null) {
            this.f2002a.end();
            this.f2002a.removeAllUpdateListeners();
            this.f2002a.cancel();
        }
        this.f2002a = null;
        this.q = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i) {
        if (this.o != i) {
            this.o = i;
            invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(int i) {
        if (this.p != i) {
            this.p = i;
            invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.r == null) {
            this.r = d();
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.r);
    }

    private ViewTreeObserver.OnGlobalLayoutListener d() {
        return new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.duapps.ad.banner.view.ShimmerLJYFrameLayout.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                boolean z = ShimmerLJYFrameLayout.this.q;
                ShimmerLJYFrameLayout.this.h();
                if (ShimmerLJYFrameLayout.this.j || z) {
                    ShimmerLJYFrameLayout.this.b();
                }
            }
        };
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        c();
        if (this.r != null) {
            getViewTreeObserver().removeGlobalOnLayoutListener(this.r);
            this.r = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (!this.q || getWidth() <= 0 || getHeight() <= 0) {
            super.dispatchDraw(canvas);
        } else {
            a(canvas);
        }
    }

    private static float a(float f, float f2, float f3) {
        return Math.min(f2, Math.max(f, f3));
    }

    private boolean a(Canvas canvas) {
        Bitmap e = e();
        Bitmap f = f();
        if (e == null || f == null) {
            return false;
        }
        b(new Canvas(e));
        canvas.drawBitmap(e, 0.0f, 0.0f, this.d);
        c(new Canvas(f));
        canvas.drawBitmap(f, 0.0f, 0.0f, (Paint) null);
        return true;
    }

    private Bitmap e() {
        if (this.i == null) {
            this.i = g();
        }
        return this.i;
    }

    private Bitmap f() {
        if (this.h == null) {
            this.h = g();
        }
        return this.h;
    }

    private Bitmap g() {
        int width = getWidth();
        int height = getHeight();
        try {
            return a(width, height);
        } catch (OutOfMemoryError e) {
            StringBuilder sb = new StringBuilder("ShimmerFrameLayout failed to create working bitmap");
            sb.append(" (width = ");
            sb.append(width);
            sb.append(", height = ");
            sb.append(height);
            sb.append(")\n\n");
            for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
                sb.append(stackTraceElement.toString());
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
            }
            Log.d("ShimmerFrameLayout", sb.toString());
            return null;
        }
    }

    private void b(Canvas canvas) {
        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        super.dispatchDraw(canvas);
    }

    private void c(Canvas canvas) {
        Bitmap k = k();
        if (k != null) {
            canvas.clipRect(this.o, this.p, this.o + k.getWidth(), this.p + k.getHeight());
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            super.dispatchDraw(canvas);
            canvas.drawBitmap(k, this.o, this.p, this.e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        c();
        i();
        j();
    }

    private void i() {
        if (this.f2003b != null) {
            this.f2003b.recycle();
            this.f2003b = null;
        }
    }

    private void j() {
        if (this.i != null) {
            this.i.recycle();
            this.i = null;
        }
        if (this.h != null) {
            this.h.recycle();
            this.h = null;
        }
    }

    private Bitmap k() {
        Shader radialGradient;
        int i;
        int i2;
        int i3;
        if (this.f2003b != null) {
            return this.f2003b;
        }
        int a2 = this.f.a(getWidth());
        int b2 = this.f.b(getHeight());
        this.f2003b = a(a2, b2);
        Canvas canvas = new Canvas(this.f2003b);
        switch (this.f.i) {
            case RADIAL:
                radialGradient = new RadialGradient(a2 / 2, b2 / 2, (float) (Math.max(a2, b2) / Math.sqrt(2.0d)), this.f.a(), this.f.b(), Shader.TileMode.REPEAT);
                break;
            default:
                switch (this.f.f2008a) {
                    case CW_90:
                        i = b2;
                        i2 = 0;
                        i3 = 0;
                        break;
                    case CW_180:
                        i = 0;
                        i2 = 0;
                        i3 = a2;
                        break;
                    case CW_270:
                        i = 0;
                        i2 = b2;
                        i3 = 0;
                        break;
                    default:
                        i = 0;
                        i2 = 0;
                        i3 = -a2;
                        break;
                }
                radialGradient = new LinearGradient(i3, i2, 0, i, this.f.a(), this.f.b(), Shader.TileMode.REPEAT);
                break;
        }
        canvas.rotate(this.f.f2009b, a2 / 2, b2 / 2);
        Paint paint = new Paint();
        paint.setShader(radialGradient);
        int sqrt = ((int) (Math.sqrt(2.0d) * Math.max(a2, b2))) / 2;
        canvas.drawRect(-sqrt, -sqrt, a2 + sqrt, sqrt + b2, paint);
        return this.f2003b;
    }

    private Animator l() {
        if (this.f2002a != null) {
            return this.f2002a;
        }
        int width = getWidth();
        int height = getHeight();
        int i = AnonymousClass3.f2006a[this.f.i.ordinal()];
        switch (this.f.f2008a) {
            case CW_90:
                this.g.a(0, -height, 0, height);
                break;
            case CW_180:
                this.g.a(width, 0, -width, 0);
                break;
            case CW_270:
                this.g.a(0, height, 0, -height);
                break;
            default:
                this.g.a(-width, 0, width, 0);
                break;
        }
        this.f2002a = ValueAnimator.ofFloat(0.0f, 1.0f + (this.m / this.k));
        this.f2002a.setDuration(this.k + this.m);
        this.f2002a.setRepeatCount(this.l);
        this.f2002a.setRepeatMode(this.n);
        this.f2002a.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.duapps.ad.banner.view.ShimmerLJYFrameLayout.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float max = Math.max(0.0f, Math.min(1.0f, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
                ShimmerLJYFrameLayout.this.e((int) ((ShimmerLJYFrameLayout.this.g.f2014a * (1.0f - max)) + (ShimmerLJYFrameLayout.this.g.c * max)));
                ShimmerLJYFrameLayout.this.f((int) ((max * ShimmerLJYFrameLayout.this.g.d) + (ShimmerLJYFrameLayout.this.g.f2015b * (1.0f - max))));
            }
        });
        return this.f2002a;
    }

    protected static Bitmap a(int i, int i2) {
        try {
            return Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError e) {
            System.gc();
            return Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        }
    }
}
