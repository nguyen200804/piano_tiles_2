package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.view.animation.Animation;
import android.widget.ImageView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class CircleImageView extends ImageView {
    private static final int FILL_SHADOW_COLOR = 1023410176;
    private static final int KEY_SHADOW_COLOR = 503316480;
    private static final int SHADOW_ELEVATION = 4;
    private static final float SHADOW_RADIUS = 3.5f;
    private static final float X_OFFSET = 0.0f;
    private static final float Y_OFFSET = 1.75f;
    private Animation.AnimationListener mListener;
    private int mShadowRadius;

    public CircleImageView(Context context, int color, float radius) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f = getContext().getResources().getDisplayMetrics().density;
        int i = (int) (radius * f * 2.0f);
        int i2 = (int) (Y_OFFSET * f);
        int i3 = (int) (0.0f * f);
        this.mShadowRadius = (int) (SHADOW_RADIUS * f);
        if (elevationSupported()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            ViewCompat.setElevation(this, f * 4.0f);
        } else {
            shapeDrawable = new ShapeDrawable(new OvalShadow(this.mShadowRadius, i));
            ViewCompat.setLayerType(this, 1, shapeDrawable.getPaint());
            shapeDrawable.getPaint().setShadowLayer(this.mShadowRadius, i3, i2, KEY_SHADOW_COLOR);
            int i4 = this.mShadowRadius;
            setPadding(i4, i4, i4, i4);
        }
        shapeDrawable.getPaint().setColor(color);
        setBackgroundDrawable(shapeDrawable);
    }

    private boolean elevationSupported() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (!elevationSupported()) {
            setMeasuredDimension(getMeasuredWidth() + (this.mShadowRadius * 2), getMeasuredHeight() + (this.mShadowRadius * 2));
        }
    }

    public void setAnimationListener(Animation.AnimationListener listener) {
        this.mListener = listener;
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        if (this.mListener != null) {
            this.mListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        if (this.mListener != null) {
            this.mListener.onAnimationEnd(getAnimation());
        }
    }

    public void setBackgroundColorRes(int colorRes) {
        setBackgroundColor(getContext().getResources().getColor(colorRes));
    }

    @Override // android.view.View
    public void setBackgroundColor(int color) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(color);
        }
    }

    private class OvalShadow extends OvalShape {
        private int mCircleDiameter;
        private RadialGradient mRadialGradient;
        private Paint mShadowPaint = new Paint();

        public OvalShadow(int shadowRadius, int circleDiameter) {
            CircleImageView.this.mShadowRadius = shadowRadius;
            this.mCircleDiameter = circleDiameter;
            this.mRadialGradient = new RadialGradient(this.mCircleDiameter / 2, this.mCircleDiameter / 2, CircleImageView.this.mShadowRadius, new int[]{CircleImageView.FILL_SHADOW_COLOR, 0}, (float[]) null, Shader.TileMode.CLAMP);
            this.mShadowPaint.setShader(this.mRadialGradient);
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            int width = CircleImageView.this.getWidth();
            int height = CircleImageView.this.getHeight();
            canvas.drawCircle(width / 2, height / 2, (this.mCircleDiameter / 2) + CircleImageView.this.mShadowRadius, this.mShadowPaint);
            canvas.drawCircle(width / 2, height / 2, this.mCircleDiameter / 2, paint);
        }
    }
}
