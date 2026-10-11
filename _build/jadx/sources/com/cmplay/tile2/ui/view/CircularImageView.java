package com.cmplay.tile2.ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import com.cmplay.tiles4.R;
import com.cmplay.util.c;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CircularImageView extends ImageView {

    /* renamed from: a, reason: collision with root package name */
    private int f1672a;

    /* renamed from: b, reason: collision with root package name */
    private int f1673b;
    private Bitmap c;
    private Paint d;
    private Paint e;
    private Paint f;
    private int g;
    private int h;

    public CircularImageView(Context context) {
        this(context, null);
    }

    public CircularImageView(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.circularImageViewStyle);
    }

    public CircularImageView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.d = new Paint();
        this.d.setAntiAlias(true);
        this.e = new Paint();
        this.e.setAntiAlias(true);
        this.e.setStyle(Paint.Style.STROKE);
        this.e.setColor(Color.parseColor("#151515"));
        this.f = new Paint();
        this.f.setColor(Color.parseColor("#f1f1f1"));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.CircularImageView, defStyle, 0);
        if (obtainStyledAttributes.getBoolean(0, true)) {
            a(obtainStyledAttributes.getDimensionPixelOffset(1, (int) ((4.0f * getContext().getResources().getDisplayMetrics().density) + 0.5f)));
            b(obtainStyledAttributes.getColor(2, -1));
        }
        if (obtainStyledAttributes.getBoolean(3, false)) {
            a();
        }
    }

    public void a(int i) {
        this.f1672a = i;
        requestLayout();
        invalidate();
    }

    public void b(int i) {
        if (this.e != null) {
            this.e.setColor(i);
        }
        invalidate();
    }

    public void a() {
        if (Build.VERSION.SDK_INT > 10) {
            setLayerType(1, this.e);
        }
        this.e.setShadowLayer(4.0f, 0.0f, 2.0f, -16777216);
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        this.g = w;
        this.h = h;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        this.c = a(getDrawable());
        if (this.c != null) {
            c.a("CircularImageView", "CircularImage onDraw");
            this.f1673b = this.g;
            if (this.h < this.f1673b) {
                this.f1673b = this.h;
            }
            int i = this.f1673b / 2;
            int i2 = this.f1673b / 2;
            canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
            int e = e(3);
            int i3 = i - e;
            RectF rectF = new RectF(i - i3, i2 - i3, i2 + i3, i3 + i);
            this.e.setStrokeWidth(e);
            canvas.drawArc(rectF, 0.0f, 360.0f, false, this.e);
            canvas.drawCircle(i, i2, (i - (e * 2)) + e(1), this.f);
            this.d.setShader(new BitmapShader(Bitmap.createScaledBitmap(this.c, i * 2, i * 2, false), Shader.TileMode.CLAMP, Shader.TileMode.CLAMP));
            canvas.drawCircle(i, i2, (i - (e * 3)) + 1, this.d);
            Bitmap decodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.icon_cd_center);
            int e2 = e(60);
            canvas.drawBitmap(Bitmap.createScaledBitmap(decodeResource, e2, e2, true), i - (e2 / 2), i2 - (e2 / 2), (Paint) null);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        setMeasuredDimension(c(widthMeasureSpec), d(heightMeasureSpec));
    }

    private int c(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != 1073741824 && mode != Integer.MIN_VALUE) {
            return this.f1673b;
        }
        return size;
    }

    private int d(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != 1073741824 && mode != Integer.MIN_VALUE) {
            size = this.f1673b;
        }
        return size + 2;
    }

    public Bitmap a(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    private int e(int i) {
        return (int) (getContext().getResources().getDisplayMetrics().density * i);
    }
}
