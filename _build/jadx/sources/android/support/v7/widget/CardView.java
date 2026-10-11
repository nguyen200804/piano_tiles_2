package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.support.v7.cardview.R;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class CardView extends FrameLayout implements CardViewDelegate {
    private static final CardViewImpl IMPL;
    private boolean mCompatPadding;
    private final Rect mContentPadding;
    private boolean mPreventCornerOverlap;
    private final Rect mShadowBounds;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            IMPL = new CardViewApi21();
        } else if (Build.VERSION.SDK_INT >= 17) {
            IMPL = new CardViewJellybeanMr1();
        } else {
            IMPL = new CardViewEclairMr1();
        }
        IMPL.initStatic();
    }

    public CardView(Context context) {
        super(context);
        this.mContentPadding = new Rect();
        this.mShadowBounds = new Rect();
        initialize(context, null, 0);
    }

    public CardView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mContentPadding = new Rect();
        this.mShadowBounds = new Rect();
        initialize(context, attrs, 0);
    }

    public CardView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mContentPadding = new Rect();
        this.mShadowBounds = new Rect();
        initialize(context, attrs, defStyleAttr);
    }

    @Override // android.view.View
    public void setPadding(int left, int top, int right, int bottom) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int start, int top, int end, int bottom) {
    }

    @Override // android.support.v7.widget.CardViewDelegate
    public boolean getUseCompatPadding() {
        return this.mCompatPadding;
    }

    public void setUseCompatPadding(boolean useCompatPadding) {
        if (this.mCompatPadding != useCompatPadding) {
            this.mCompatPadding = useCompatPadding;
            IMPL.onCompatPaddingChanged(this);
        }
    }

    public void setContentPadding(int left, int top, int right, int bottom) {
        this.mContentPadding.set(left, top, right, bottom);
        IMPL.updatePadding(this);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (!(IMPL instanceof CardViewApi21)) {
            int mode = View.MeasureSpec.getMode(widthMeasureSpec);
            switch (mode) {
                case Integer.MIN_VALUE:
                case 1073741824:
                    widthMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(IMPL.getMinWidth(this)), View.MeasureSpec.getSize(widthMeasureSpec)), mode);
                    break;
            }
            int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
            switch (mode2) {
                case Integer.MIN_VALUE:
                case 1073741824:
                    heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(IMPL.getMinHeight(this)), View.MeasureSpec.getSize(heightMeasureSpec)), mode2);
                    break;
            }
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    private void initialize(Context context, AttributeSet attrs, int defStyleAttr) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.CardView, defStyleAttr, R.style.CardView_Light);
        int color = obtainStyledAttributes.getColor(R.styleable.CardView_cardBackgroundColor, 0);
        float dimension = obtainStyledAttributes.getDimension(R.styleable.CardView_cardCornerRadius, 0.0f);
        float dimension2 = obtainStyledAttributes.getDimension(R.styleable.CardView_cardElevation, 0.0f);
        float dimension3 = obtainStyledAttributes.getDimension(R.styleable.CardView_cardMaxElevation, 0.0f);
        this.mCompatPadding = obtainStyledAttributes.getBoolean(R.styleable.CardView_cardUseCompatPadding, false);
        this.mPreventCornerOverlap = obtainStyledAttributes.getBoolean(R.styleable.CardView_cardPreventCornerOverlap, true);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_contentPadding, 0);
        this.mContentPadding.left = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_contentPaddingLeft, dimensionPixelSize);
        this.mContentPadding.top = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_contentPaddingTop, dimensionPixelSize);
        this.mContentPadding.right = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_contentPaddingRight, dimensionPixelSize);
        this.mContentPadding.bottom = obtainStyledAttributes.getDimensionPixelSize(R.styleable.CardView_contentPaddingBottom, dimensionPixelSize);
        if (dimension2 > dimension3) {
            dimension3 = dimension2;
        }
        obtainStyledAttributes.recycle();
        IMPL.initialize(this, context, color, dimension, dimension2, dimension3);
    }

    public void setCardBackgroundColor(int color) {
        IMPL.setBackgroundColor(this, color);
    }

    public int getContentPaddingLeft() {
        return this.mContentPadding.left;
    }

    public int getContentPaddingRight() {
        return this.mContentPadding.right;
    }

    public int getContentPaddingTop() {
        return this.mContentPadding.top;
    }

    public int getContentPaddingBottom() {
        return this.mContentPadding.bottom;
    }

    public void setRadius(float radius) {
        IMPL.setRadius(this, radius);
    }

    @Override // android.support.v7.widget.CardViewDelegate
    public float getRadius() {
        return IMPL.getRadius(this);
    }

    @Override // android.support.v7.widget.CardViewDelegate
    public void setShadowPadding(int left, int top, int right, int bottom) {
        this.mShadowBounds.set(left, top, right, bottom);
        super.setPadding(this.mContentPadding.left + left, this.mContentPadding.top + top, this.mContentPadding.right + right, this.mContentPadding.bottom + bottom);
    }

    public void setCardElevation(float radius) {
        IMPL.setElevation(this, radius);
    }

    public float getCardElevation() {
        return IMPL.getElevation(this);
    }

    public void setMaxCardElevation(float radius) {
        IMPL.setMaxElevation(this, radius);
    }

    public float getMaxCardElevation() {
        return IMPL.getMaxElevation(this);
    }

    @Override // android.support.v7.widget.CardViewDelegate
    public boolean getPreventCornerOverlap() {
        return this.mPreventCornerOverlap;
    }

    public void setPreventCornerOverlap(boolean preventCornerOverlap) {
        if (preventCornerOverlap != this.mPreventCornerOverlap) {
            this.mPreventCornerOverlap = preventCornerOverlap;
            IMPL.onPreventCornerOverlapChanged(this);
        }
    }
}
