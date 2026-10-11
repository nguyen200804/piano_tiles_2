package android.support.v4.view;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.support.annotation.FloatRange;
import android.support.v4.view.ViewPager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import java.lang.ref.WeakReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class PagerTitleStrip extends ViewGroup implements ViewPager.Decor {
    private static final PagerTitleStripImpl IMPL;
    private static final float SIDE_ALPHA = 0.6f;
    private static final String TAG = "PagerTitleStrip";
    private static final int TEXT_SPACING = 16;
    TextView mCurrText;
    private int mGravity;
    private int mLastKnownCurrentPage;
    private float mLastKnownPositionOffset;
    TextView mNextText;
    private int mNonPrimaryAlpha;
    private final PageListener mPageListener;
    ViewPager mPager;
    TextView mPrevText;
    private int mScaledTextSpacing;
    int mTextColor;
    private boolean mUpdatingPositions;
    private boolean mUpdatingText;
    private WeakReference<PagerAdapter> mWatchingAdapter;
    private static final int[] ATTRS = {R.attr.textAppearance, R.attr.textSize, R.attr.textColor, R.attr.gravity};
    private static final int[] TEXT_ATTRS = {R.attr.textAllCaps};

    interface PagerTitleStripImpl {
        void setSingleLineAllCaps(TextView textView);
    }

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            IMPL = new PagerTitleStripImplIcs();
        } else {
            IMPL = new PagerTitleStripImplBase();
        }
    }

    static class PagerTitleStripImplBase implements PagerTitleStripImpl {
        PagerTitleStripImplBase() {
        }

        @Override // android.support.v4.view.PagerTitleStrip.PagerTitleStripImpl
        public void setSingleLineAllCaps(TextView text) {
            text.setSingleLine();
        }
    }

    static class PagerTitleStripImplIcs implements PagerTitleStripImpl {
        PagerTitleStripImplIcs() {
        }

        @Override // android.support.v4.view.PagerTitleStrip.PagerTitleStripImpl
        public void setSingleLineAllCaps(TextView text) {
            PagerTitleStripIcs.setSingleLineAllCaps(text);
        }
    }

    private static void setSingleLineAllCaps(TextView text) {
        IMPL.setSingleLineAllCaps(text);
    }

    public PagerTitleStrip(Context context) {
        this(context, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerTitleStrip(Context context, AttributeSet attrs) {
        super(context, attrs);
        boolean z = false;
        this.mLastKnownCurrentPage = -1;
        this.mLastKnownPositionOffset = -1.0f;
        this.mPageListener = new PageListener();
        TextView textView = new TextView(context);
        this.mPrevText = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.mCurrText = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.mNextText = textView3;
        addView(textView3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, ATTRS);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            this.mPrevText.setTextAppearance(context, resourceId);
            this.mCurrText.setTextAppearance(context, resourceId);
            this.mNextText.setTextAppearance(context, resourceId);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (obtainStyledAttributes.hasValue(2)) {
            int color = obtainStyledAttributes.getColor(2, 0);
            this.mPrevText.setTextColor(color);
            this.mCurrText.setTextColor(color);
            this.mNextText.setTextColor(color);
        }
        this.mGravity = obtainStyledAttributes.getInteger(3, 80);
        obtainStyledAttributes.recycle();
        this.mTextColor = this.mCurrText.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(SIDE_ALPHA);
        this.mPrevText.setEllipsize(TextUtils.TruncateAt.END);
        this.mCurrText.setEllipsize(TextUtils.TruncateAt.END);
        this.mNextText.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, TEXT_ATTRS);
            z = obtainStyledAttributes2.getBoolean(0, false);
            obtainStyledAttributes2.recycle();
        }
        if (z) {
            setSingleLineAllCaps(this.mPrevText);
            setSingleLineAllCaps(this.mCurrText);
            setSingleLineAllCaps(this.mNextText);
        } else {
            this.mPrevText.setSingleLine();
            this.mCurrText.setSingleLine();
            this.mNextText.setSingleLine();
        }
        this.mScaledTextSpacing = (int) (context.getResources().getDisplayMetrics().density * 16.0f);
    }

    public void setTextSpacing(int spacingPixels) {
        this.mScaledTextSpacing = spacingPixels;
        requestLayout();
    }

    public int getTextSpacing() {
        return this.mScaledTextSpacing;
    }

    public void setNonPrimaryAlpha(@FloatRange(from = 0.0d, to = 1.0d) float alpha) {
        this.mNonPrimaryAlpha = ((int) (255.0f * alpha)) & 255;
        int i = (this.mNonPrimaryAlpha << 24) | (this.mTextColor & ViewCompat.MEASURED_SIZE_MASK);
        this.mPrevText.setTextColor(i);
        this.mNextText.setTextColor(i);
    }

    public void setTextColor(@ColorInt int color) {
        this.mTextColor = color;
        this.mCurrText.setTextColor(color);
        int i = (this.mNonPrimaryAlpha << 24) | (this.mTextColor & ViewCompat.MEASURED_SIZE_MASK);
        this.mPrevText.setTextColor(i);
        this.mNextText.setTextColor(i);
    }

    public void setTextSize(int unit, float size) {
        this.mPrevText.setTextSize(unit, size);
        this.mCurrText.setTextSize(unit, size);
        this.mNextText.setTextSize(unit, size);
    }

    public void setGravity(int gravity) {
        this.mGravity = gravity;
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (!(parent instanceof ViewPager)) {
            throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
        }
        ViewPager viewPager = (ViewPager) parent;
        PagerAdapter adapter = viewPager.getAdapter();
        viewPager.setInternalPageChangeListener(this.mPageListener);
        viewPager.setOnAdapterChangeListener(this.mPageListener);
        this.mPager = viewPager;
        updateAdapter(this.mWatchingAdapter != null ? this.mWatchingAdapter.get() : null, adapter);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mPager != null) {
            updateAdapter(this.mPager.getAdapter(), null);
            this.mPager.setInternalPageChangeListener(null);
            this.mPager.setOnAdapterChangeListener(null);
            this.mPager = null;
        }
    }

    void updateText(int currentItem, PagerAdapter adapter) {
        CharSequence charSequence = null;
        int count = adapter != null ? adapter.getCount() : 0;
        this.mUpdatingText = true;
        this.mPrevText.setText((currentItem < 1 || adapter == null) ? null : adapter.getPageTitle(currentItem - 1));
        this.mCurrText.setText((adapter == null || currentItem >= count) ? null : adapter.getPageTitle(currentItem));
        if (currentItem + 1 < count && adapter != null) {
            charSequence = adapter.getPageTitle(currentItem + 1);
        }
        this.mNextText.setText(charSequence);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.mPrevText.measure(makeMeasureSpec, makeMeasureSpec2);
        this.mCurrText.measure(makeMeasureSpec, makeMeasureSpec2);
        this.mNextText.measure(makeMeasureSpec, makeMeasureSpec2);
        this.mLastKnownCurrentPage = currentItem;
        if (!this.mUpdatingPositions) {
            updateTextPositions(currentItem, this.mLastKnownPositionOffset, false);
        }
        this.mUpdatingText = false;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.mUpdatingText) {
            super.requestLayout();
        }
    }

    void updateAdapter(PagerAdapter oldAdapter, PagerAdapter newAdapter) {
        if (oldAdapter != null) {
            oldAdapter.unregisterDataSetObserver(this.mPageListener);
            this.mWatchingAdapter = null;
        }
        if (newAdapter != null) {
            newAdapter.registerDataSetObserver(this.mPageListener);
            this.mWatchingAdapter = new WeakReference<>(newAdapter);
        }
        if (this.mPager != null) {
            this.mLastKnownCurrentPage = -1;
            this.mLastKnownPositionOffset = -1.0f;
            updateText(this.mPager.getCurrentItem(), newAdapter);
            requestLayout();
        }
    }

    void updateTextPositions(int position, float positionOffset, boolean force) {
        int i;
        int i2;
        int i3;
        if (position != this.mLastKnownCurrentPage) {
            updateText(position, this.mPager.getAdapter());
        } else if (!force && positionOffset == this.mLastKnownPositionOffset) {
            return;
        }
        this.mUpdatingPositions = true;
        int measuredWidth = this.mPrevText.getMeasuredWidth();
        int measuredWidth2 = this.mCurrText.getMeasuredWidth();
        int measuredWidth3 = this.mNextText.getMeasuredWidth();
        int i4 = measuredWidth2 / 2;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i5 = paddingRight + i4;
        int i6 = (width - (paddingLeft + i4)) - i5;
        float f = 0.5f + positionOffset;
        if (f > 1.0f) {
            f -= 1.0f;
        }
        int i7 = ((width - i5) - ((int) (f * i6))) - (measuredWidth2 / 2);
        int i8 = i7 + measuredWidth2;
        int baseline = this.mPrevText.getBaseline();
        int baseline2 = this.mCurrText.getBaseline();
        int baseline3 = this.mNextText.getBaseline();
        int max = Math.max(Math.max(baseline, baseline2), baseline3);
        int i9 = max - baseline;
        int i10 = max - baseline2;
        int i11 = max - baseline3;
        int max2 = Math.max(Math.max(this.mPrevText.getMeasuredHeight() + i9, this.mCurrText.getMeasuredHeight() + i10), this.mNextText.getMeasuredHeight() + i11);
        switch (this.mGravity & 112) {
            case 16:
                int i12 = (((height - paddingTop) - paddingBottom) - max2) / 2;
                i = i12 + i9;
                i2 = i10 + i12;
                i3 = i12 + i11;
                break;
            case 80:
                int i13 = (height - paddingBottom) - max2;
                i = i13 + i9;
                i2 = i10 + i13;
                i3 = i13 + i11;
                break;
            default:
                i = paddingTop + i9;
                i2 = i10 + paddingTop;
                i3 = paddingTop + i11;
                break;
        }
        this.mCurrText.layout(i7, i2, i8, this.mCurrText.getMeasuredHeight() + i2);
        int min = Math.min(paddingLeft, (i7 - this.mScaledTextSpacing) - measuredWidth);
        this.mPrevText.layout(min, i, measuredWidth + min, this.mPrevText.getMeasuredHeight() + i);
        int max3 = Math.max((width - paddingRight) - measuredWidth3, this.mScaledTextSpacing + i8);
        this.mNextText.layout(max3, i3, max3 + measuredWidth3, this.mNextText.getMeasuredHeight() + i3);
        this.mLastKnownPositionOffset = positionOffset;
        this.mUpdatingPositions = false;
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int max;
        if (View.MeasureSpec.getMode(widthMeasureSpec) != 1073741824) {
            throw new IllegalStateException("Must measure with an exact width");
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = getChildMeasureSpec(heightMeasureSpec, paddingTop, -2);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int childMeasureSpec2 = getChildMeasureSpec(widthMeasureSpec, (int) (size * 0.2f), -2);
        this.mPrevText.measure(childMeasureSpec2, childMeasureSpec);
        this.mCurrText.measure(childMeasureSpec2, childMeasureSpec);
        this.mNextText.measure(childMeasureSpec2, childMeasureSpec);
        if (View.MeasureSpec.getMode(heightMeasureSpec) == 1073741824) {
            max = View.MeasureSpec.getSize(heightMeasureSpec);
        } else {
            max = Math.max(getMinHeight(), paddingTop + this.mCurrText.getMeasuredHeight());
        }
        setMeasuredDimension(size, ViewCompat.resolveSizeAndState(max, heightMeasureSpec, ViewCompat.getMeasuredState(this.mCurrText) << 16));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b2) {
        if (this.mPager != null) {
            updateTextPositions(this.mLastKnownCurrentPage, this.mLastKnownPositionOffset >= 0.0f ? this.mLastKnownPositionOffset : 0.0f, true);
        }
    }

    int getMinHeight() {
        Drawable background = getBackground();
        if (background == null) {
            return 0;
        }
        return background.getIntrinsicHeight();
    }

    private class PageListener extends DataSetObserver implements ViewPager.OnAdapterChangeListener, ViewPager.OnPageChangeListener {
        private int mScrollState;

        private PageListener() {
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            if (positionOffset > 0.5f) {
                position++;
            }
            PagerTitleStrip.this.updateTextPositions(position, positionOffset, false);
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            if (this.mScrollState == 0) {
                PagerTitleStrip.this.updateText(PagerTitleStrip.this.mPager.getCurrentItem(), PagerTitleStrip.this.mPager.getAdapter());
                PagerTitleStrip.this.updateTextPositions(PagerTitleStrip.this.mPager.getCurrentItem(), PagerTitleStrip.this.mLastKnownPositionOffset >= 0.0f ? PagerTitleStrip.this.mLastKnownPositionOffset : 0.0f, true);
            }
        }

        @Override // android.support.v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
            this.mScrollState = state;
        }

        @Override // android.support.v4.view.ViewPager.OnAdapterChangeListener
        public void onAdapterChanged(PagerAdapter oldAdapter, PagerAdapter newAdapter) {
            PagerTitleStrip.this.updateAdapter(oldAdapter, newAdapter);
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            PagerTitleStrip.this.updateText(PagerTitleStrip.this.mPager.getCurrentItem(), PagerTitleStrip.this.mPager.getAdapter());
            PagerTitleStrip.this.updateTextPositions(PagerTitleStrip.this.mPager.getCurrentItem(), PagerTitleStrip.this.mLastKnownPositionOffset >= 0.0f ? PagerTitleStrip.this.mLastKnownPositionOffset : 0.0f, true);
        }
    }
}
