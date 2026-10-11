package android.support.v4.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class SwipeProgressBar {
    private static final int ANIMATION_DURATION_MS = 2000;
    private static final int COLOR1 = -1291845632;
    private static final int COLOR2 = Integer.MIN_VALUE;
    private static final int COLOR3 = 1291845632;
    private static final int COLOR4 = 436207616;
    private static final int FINISH_ANIMATION_DURATION_MS = 1000;
    private static final Interpolator INTERPOLATOR = new FastOutSlowInInterpolator();
    private long mFinishTime;
    private View mParent;
    private boolean mRunning;
    private long mStartTime;
    private float mTriggerPercentage;
    private final Paint mPaint = new Paint();
    private final RectF mClipRect = new RectF();
    private Rect mBounds = new Rect();
    private int mColor1 = COLOR1;
    private int mColor2 = Integer.MIN_VALUE;
    private int mColor3 = COLOR3;
    private int mColor4 = COLOR4;

    public SwipeProgressBar(View parent) {
        this.mParent = parent;
    }

    void setColorScheme(int color1, int color2, int color3, int color4) {
        this.mColor1 = color1;
        this.mColor2 = color2;
        this.mColor3 = color3;
        this.mColor4 = color4;
    }

    void setTriggerPercentage(float triggerPercentage) {
        this.mTriggerPercentage = triggerPercentage;
        this.mStartTime = 0L;
        ViewCompat.postInvalidateOnAnimation(this.mParent, this.mBounds.left, this.mBounds.top, this.mBounds.right, this.mBounds.bottom);
    }

    void start() {
        if (!this.mRunning) {
            this.mTriggerPercentage = 0.0f;
            this.mStartTime = AnimationUtils.currentAnimationTimeMillis();
            this.mRunning = true;
            this.mParent.postInvalidate();
        }
    }

    void stop() {
        if (this.mRunning) {
            this.mTriggerPercentage = 0.0f;
            this.mFinishTime = AnimationUtils.currentAnimationTimeMillis();
            this.mRunning = false;
            this.mParent.postInvalidate();
        }
    }

    boolean isRunning() {
        return this.mRunning || this.mFinishTime > 0;
    }

    void draw(Canvas canvas) {
        boolean z;
        int i;
        int width = this.mBounds.width();
        int height = this.mBounds.height();
        int i2 = width / 2;
        int i3 = height / 2;
        int save = canvas.save();
        canvas.clipRect(this.mBounds);
        if (this.mRunning || this.mFinishTime > 0) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            long j = (currentAnimationTimeMillis - this.mStartTime) % 2000;
            long j2 = (currentAnimationTimeMillis - this.mStartTime) / 2000;
            float f = j / 20.0f;
            if (this.mRunning) {
                z = false;
            } else {
                if (currentAnimationTimeMillis - this.mFinishTime >= 1000) {
                    this.mFinishTime = 0L;
                    return;
                }
                float interpolation = INTERPOLATOR.getInterpolation((((currentAnimationTimeMillis - this.mFinishTime) % 1000) / 10.0f) / 100.0f) * (width / 2);
                this.mClipRect.set(i2 - interpolation, 0.0f, interpolation + i2, height);
                canvas.saveLayerAlpha(this.mClipRect, 0, 0);
                z = true;
            }
            if (j2 == 0) {
                canvas.drawColor(this.mColor1);
            } else if (f >= 0.0f && f < 25.0f) {
                canvas.drawColor(this.mColor4);
            } else if (f >= 25.0f && f < 50.0f) {
                canvas.drawColor(this.mColor1);
            } else if (f >= 50.0f && f < 75.0f) {
                canvas.drawColor(this.mColor2);
            } else {
                canvas.drawColor(this.mColor3);
            }
            if (f >= 0.0f && f <= 25.0f) {
                drawCircle(canvas, i2, i3, this.mColor1, ((25.0f + f) * 2.0f) / 100.0f);
            }
            if (f >= 0.0f && f <= 50.0f) {
                drawCircle(canvas, i2, i3, this.mColor2, (2.0f * f) / 100.0f);
            }
            if (f >= 25.0f && f <= 75.0f) {
                drawCircle(canvas, i2, i3, this.mColor3, ((f - 25.0f) * 2.0f) / 100.0f);
            }
            if (f >= 50.0f && f <= 100.0f) {
                drawCircle(canvas, i2, i3, this.mColor4, ((f - 50.0f) * 2.0f) / 100.0f);
            }
            if (f >= 75.0f && f <= 100.0f) {
                drawCircle(canvas, i2, i3, this.mColor1, ((f - 75.0f) * 2.0f) / 100.0f);
            }
            if (this.mTriggerPercentage <= 0.0f || !z) {
                i = save;
            } else {
                canvas.restoreToCount(save);
                i = canvas.save();
                canvas.clipRect(this.mBounds);
                drawTrigger(canvas, i2, i3);
            }
            ViewCompat.postInvalidateOnAnimation(this.mParent, this.mBounds.left, this.mBounds.top, this.mBounds.right, this.mBounds.bottom);
            save = i;
        } else if (this.mTriggerPercentage > 0.0f && this.mTriggerPercentage <= 1.0d) {
            drawTrigger(canvas, i2, i3);
        }
        canvas.restoreToCount(save);
    }

    private void drawTrigger(Canvas canvas, int cx, int cy) {
        this.mPaint.setColor(this.mColor1);
        canvas.drawCircle(cx, cy, cx * this.mTriggerPercentage, this.mPaint);
    }

    private void drawCircle(Canvas canvas, float cx, float cy, int color, float pct) {
        this.mPaint.setColor(color);
        canvas.save();
        canvas.translate(cx, cy);
        float interpolation = INTERPOLATOR.getInterpolation(pct);
        canvas.scale(interpolation, interpolation);
        canvas.drawCircle(0.0f, 0.0f, cx, this.mPaint);
        canvas.restore();
    }

    void setBounds(int left, int top, int right, int bottom) {
        this.mBounds.left = left;
        this.mBounds.top = top;
        this.mBounds.right = right;
        this.mBounds.bottom = bottom;
    }
}
