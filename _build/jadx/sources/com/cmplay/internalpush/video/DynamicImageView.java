package com.cmplay.internalpush.video;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.cmplay.internalpush.R;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DynamicImageView extends ImageView implements View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a, reason: collision with root package name */
    private a f1510a;

    /* renamed from: b, reason: collision with root package name */
    private SensorManager f1511b;
    private final Matrix c;
    private final Matrix d;
    private final Matrix e;
    private final RectF f;
    private final float[] g;
    private float h;

    public DynamicImageView(Context context) {
        this(context, null);
    }

    public DynamicImageView(Context context, AttributeSet attr) {
        this(context, attr, 0);
    }

    public DynamicImageView(Context context, AttributeSet attr, int defStyle) {
        super(context, attr, defStyle);
        TypedArray obtainStyledAttributes;
        this.c = new Matrix();
        this.d = new Matrix();
        this.e = new Matrix();
        this.f = new RectF();
        this.g = new float[9];
        this.h = 0.0f;
        super.setScaleType(ImageView.ScaleType.MATRIX);
        setOnTouchListener(this);
        Resources.Theme theme = getContext().getTheme();
        if (theme != null && (obtainStyledAttributes = theme.obtainStyledAttributes(attr, R.styleable.DynamicImageView, defStyle, 0)) != null) {
            float f = obtainStyledAttributes.getFloat(R.styleable.DynamicImageView_width_aspect, 0.0f);
            float f2 = obtainStyledAttributes.getFloat(R.styleable.DynamicImageView_height_aspect, 0.0f);
            if (f != 0.0f && f2 != 0.0f) {
                this.h = f / f2;
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (this.h != 0.0f) {
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            float f = (this.h / (measuredWidth / measuredHeight)) - 1.0f;
            if (Math.abs(f) > 0.01d) {
                int mode = View.MeasureSpec.getMode(widthMeasureSpec);
                int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
                if ((mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE) || (mode == 1073741824 && mode2 == 1073741824)) {
                    if (f > 0.0f) {
                        measuredHeight = (int) (measuredWidth / this.h);
                    } else {
                        measuredWidth = (int) (measuredHeight * this.h);
                    }
                } else if (mode == 1073741824 || (mode == Integer.MIN_VALUE && mode2 == 0)) {
                    measuredHeight = (int) (measuredWidth / this.h);
                } else if (mode2 == 1073741824 || (mode2 == Integer.MIN_VALUE && mode == 0)) {
                    measuredWidth = (int) (measuredHeight * this.h);
                } else {
                    return;
                }
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
            }
        }
    }

    private void b() {
        super.setScaleType(ImageView.ScaleType.MATRIX);
        Drawable drawable = getDrawable();
        if (drawable != null) {
            float width = getWidth();
            float height = getHeight();
            float intrinsicWidth = drawable.getIntrinsicWidth();
            float intrinsicHeight = drawable.getIntrinsicHeight();
            float max = Math.max(getWidth() / intrinsicWidth, getHeight() / intrinsicHeight);
            this.c.reset();
            this.c.postScale(max, max);
            this.c.postTranslate((width - (intrinsicWidth * max)) / 2.0f, (height - (intrinsicHeight * max)) / 2.0f);
            e();
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View v, MotionEvent event) {
        return this.f1510a.a(event);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(16)
    public void a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, 16L);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        b();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        Sensor defaultSensor;
        super.onAttachedToWindow();
        getViewTreeObserver().addOnGlobalLayoutListener(this);
        this.f1510a = new a();
        this.f1510a.a();
        if (!isInEditMode()) {
            this.f1511b = (SensorManager) getContext().getSystemService("sensor");
            if (this.f1511b != null && (defaultSensor = this.f1511b.getDefaultSensor(1)) != null) {
                this.f1511b.registerListener(this.f1510a, defaultSensor, 2);
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeGlobalOnLayoutListener(this);
        if (this.f1510a != null) {
            this.f1510a.b();
        }
        if (!isInEditMode() && this.f1511b != null) {
            this.f1511b.unregisterListener(this.f1510a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        d();
        setImageMatrix(a());
    }

    private void d() {
        RectF a2 = a(a());
        if (a2 != null) {
            float width = getWidth();
            float height = getHeight();
            float f = a2.top > 0.0f ? -a2.top : 0.0f;
            if (a2.bottom < height) {
                f = height - a2.bottom;
            }
            float f2 = a2.left > 0.0f ? -a2.left : 0.0f;
            if (a2.right < width) {
                f2 = width - a2.right;
            }
            this.e.postTranslate(f2, f);
        }
    }

    private RectF a(Matrix matrix) {
        if (getDrawable() == null) {
            return null;
        }
        this.f.set(0.0f, 0.0f, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        matrix.mapRect(this.f);
        return this.f;
    }

    private void e() {
        if (this.e != null) {
            this.e.reset();
            setImageMatrix(a());
        }
    }

    protected Matrix a() {
        this.d.set(this.c);
        this.d.postConcat(this.e);
        return this.d;
    }

    private class a implements SensorEventListener {

        /* renamed from: a, reason: collision with root package name */
        RunnableC0047a f1512a;
        private VelocityTracker c;
        private float d;
        private float e;
        private float f;
        private float g;
        private float h;
        private boolean i;

        private a() {
            this.g = 0.0f;
            this.h = 0.0f;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x003e, code lost:
        
            return true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean a(android.view.MotionEvent r11) {
            /*
                r10 = this;
                r1 = 1
                r4 = 0
                r0 = 0
                int r6 = r11.getPointerCount()
                r2 = r0
                r3 = r4
                r5 = r4
            La:
                if (r2 >= r6) goto L19
                float r7 = r11.getX(r2)
                float r5 = r5 + r7
                float r7 = r11.getY(r2)
                float r3 = r3 + r7
                int r2 = r2 + 1
                goto La
            L19:
                float r2 = (float) r6
                float r2 = r5 / r2
                float r5 = (float) r6
                float r3 = r3 / r5
                float r5 = (float) r6
                float r7 = r10.f
                int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
                if (r5 == 0) goto L34
                r10.i = r0
                android.view.VelocityTracker r5 = r10.c
                if (r5 == 0) goto L30
                android.view.VelocityTracker r5 = r10.c
                r5.clear()
            L30:
                r10.d = r2
                r10.e = r3
            L34:
                float r5 = (float) r6
                r10.f = r5
                int r5 = r11.getAction()
                switch(r5) {
                    case 0: goto L3f;
                    case 1: goto La2;
                    case 2: goto L5b;
                    case 3: goto La2;
                    default: goto L3e;
                }
            L3e:
                return r1
            L3f:
                android.view.VelocityTracker r4 = r10.c
                if (r4 != 0) goto L55
                android.view.VelocityTracker r4 = android.view.VelocityTracker.obtain()
                r10.c = r4
            L49:
                android.view.VelocityTracker r4 = r10.c
                r4.addMovement(r11)
                r10.d = r2
                r10.e = r3
                r10.i = r0
                goto L3e
            L55:
                android.view.VelocityTracker r4 = r10.c
                r4.clear()
                goto L49
            L5b:
                float r4 = r10.d
                float r4 = r2 - r4
                float r5 = r10.e
                float r5 = r3 - r5
                boolean r6 = r10.i
                if (r6 != 0) goto L7a
                float r6 = r4 * r4
                float r7 = r5 * r5
                float r6 = r6 + r7
                double r6 = (double) r6
                double r6 = java.lang.Math.sqrt(r6)
                r8 = 4621819117588971520(0x4024000000000000, double:10.0)
                int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r6 <= 0) goto L78
                r0 = r1
            L78:
                r10.i = r0
            L7a:
                boolean r0 = r10.i
                if (r0 == 0) goto L3e
                com.cmplay.internalpush.video.DynamicImageView r0 = com.cmplay.internalpush.video.DynamicImageView.this
                android.graphics.drawable.Drawable r0 = r0.getDrawable()
                if (r0 == 0) goto L94
                com.cmplay.internalpush.video.DynamicImageView r0 = com.cmplay.internalpush.video.DynamicImageView.this
                android.graphics.Matrix r0 = com.cmplay.internalpush.video.DynamicImageView.a(r0)
                r0.postTranslate(r4, r5)
                com.cmplay.internalpush.video.DynamicImageView r0 = com.cmplay.internalpush.video.DynamicImageView.this
                com.cmplay.internalpush.video.DynamicImageView.b(r0)
            L94:
                r10.d = r2
                r10.e = r3
                android.view.VelocityTracker r0 = r10.c
                if (r0 == 0) goto L3e
                android.view.VelocityTracker r0 = r10.c
                r0.addMovement(r11)
                goto L3e
            La2:
                boolean r2 = r10.i
                if (r2 == 0) goto Lb7
                r10.i = r0
            La8:
                r10.f = r4
                android.view.VelocityTracker r0 = r10.c
                if (r0 == 0) goto L3e
                android.view.VelocityTracker r0 = r10.c
                r0.recycle()
                r0 = 0
                r10.c = r0
                goto L3e
            Lb7:
                com.cmplay.internalpush.video.DynamicImageView r0 = com.cmplay.internalpush.video.DynamicImageView.this
                r0.performClick()
                goto La8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.cmplay.internalpush.video.DynamicImageView.a.a(android.view.MotionEvent):boolean");
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent event) {
            this.g = event.values[0];
            this.h = event.values[1];
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int accuracy) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            if (this.f1512a == null) {
                this.f1512a = new RunnableC0047a();
                DynamicImageView.this.a(DynamicImageView.this, this.f1512a);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            if (this.f1512a != null) {
                this.f1512a.a();
                DynamicImageView.this.removeCallbacks(this.f1512a);
                this.f1512a = null;
            }
        }

        /* renamed from: com.cmplay.internalpush.video.DynamicImageView$a$a, reason: collision with other inner class name */
        private class RunnableC0047a implements Runnable {

            /* renamed from: b, reason: collision with root package name */
            private float f1515b = 0.0f;
            private float c = 0.0f;
            private boolean d = false;
            private float e = 8.0f;
            private float f = 0.1f;
            private float g = 0.5f;
            private float h = 2.0f;

            public RunnableC0047a() {
            }

            /* JADX WARN: Removed duplicated region for block: B:24:0x0069  */
            /* JADX WARN: Removed duplicated region for block: B:27:0x0079  */
            /* JADX WARN: Removed duplicated region for block: B:30:0x00e6  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 260
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.cmplay.internalpush.video.DynamicImageView.a.RunnableC0047a.run():void");
            }

            public void a() {
                this.d = true;
            }
        }
    }
}
