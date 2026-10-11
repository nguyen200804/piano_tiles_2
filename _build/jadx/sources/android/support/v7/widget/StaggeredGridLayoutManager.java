package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.media.TransportMediator;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.LayoutManager {
    private static final boolean DEBUG = false;

    @Deprecated
    public static final int GAP_HANDLING_LAZY = 1;
    public static final int GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS = 2;
    public static final int GAP_HANDLING_NONE = 0;
    public static final int HORIZONTAL = 0;
    private static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    public static final String TAG = "StaggeredGridLayoutManager";
    public static final int VERTICAL = 1;
    private int mFullSizeSpec;
    private boolean mLastLayoutFromEnd;
    private boolean mLastLayoutRTL;

    @NonNull
    private final LayoutState mLayoutState;
    private int mOrientation;
    private SavedState mPendingSavedState;

    @NonNull
    OrientationHelper mPrimaryOrientation;
    private BitSet mRemainingSpans;

    @NonNull
    OrientationHelper mSecondaryOrientation;
    private int mSizePerSpan;
    private Span[] mSpans;
    private int mSpanCount = -1;
    private boolean mReverseLayout = false;
    boolean mShouldReverseLayout = false;
    int mPendingScrollPosition = -1;
    int mPendingScrollPositionOffset = Integer.MIN_VALUE;
    LazySpanLookup mLazySpanLookup = new LazySpanLookup();
    private int mGapStrategy = 2;
    private final Rect mTmpRect = new Rect();
    private final AnchorInfo mAnchorInfo = new AnchorInfo();
    private boolean mLaidOutInvalidFullSpan = false;
    private boolean mSmoothScrollbarEnabled = true;
    private final Runnable mCheckForGapsRunnable = new Runnable() { // from class: android.support.v7.widget.StaggeredGridLayoutManager.1
        @Override // java.lang.Runnable
        public void run() {
            StaggeredGridLayoutManager.this.checkForGaps();
        }
    };

    public StaggeredGridLayoutManager(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        RecyclerView.LayoutManager.Properties properties = getProperties(context, attrs, defStyleAttr, defStyleRes);
        setOrientation(properties.orientation);
        setSpanCount(properties.spanCount);
        setReverseLayout(properties.reverseLayout);
        setAutoMeasureEnabled(this.mGapStrategy != 0);
        this.mLayoutState = new LayoutState();
        createOrientationHelpers();
    }

    public StaggeredGridLayoutManager(int spanCount, int orientation) {
        this.mOrientation = orientation;
        setSpanCount(spanCount);
        setAutoMeasureEnabled(this.mGapStrategy != 0);
        this.mLayoutState = new LayoutState();
        createOrientationHelpers();
    }

    private void createOrientationHelpers() {
        this.mPrimaryOrientation = OrientationHelper.createOrientationHelper(this, this.mOrientation);
        this.mSecondaryOrientation = OrientationHelper.createOrientationHelper(this, 1 - this.mOrientation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkForGaps() {
        int firstChildPosition;
        int lastChildPosition;
        if (getChildCount() == 0 || this.mGapStrategy == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.mShouldReverseLayout) {
            firstChildPosition = getLastChildPosition();
            lastChildPosition = getFirstChildPosition();
        } else {
            firstChildPosition = getFirstChildPosition();
            lastChildPosition = getLastChildPosition();
        }
        if (firstChildPosition == 0 && hasGapsToFix() != null) {
            this.mLazySpanLookup.clear();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
        if (!this.mLaidOutInvalidFullSpan) {
            return false;
        }
        int i = this.mShouldReverseLayout ? -1 : 1;
        LazySpanLookup.FullSpanItem firstFullSpanItemInRange = this.mLazySpanLookup.getFirstFullSpanItemInRange(firstChildPosition, lastChildPosition + 1, i, true);
        if (firstFullSpanItemInRange == null) {
            this.mLaidOutInvalidFullSpan = false;
            this.mLazySpanLookup.forceInvalidateAfter(lastChildPosition + 1);
            return false;
        }
        LazySpanLookup.FullSpanItem firstFullSpanItemInRange2 = this.mLazySpanLookup.getFirstFullSpanItemInRange(firstChildPosition, firstFullSpanItemInRange.mPosition, i * (-1), true);
        if (firstFullSpanItemInRange2 == null) {
            this.mLazySpanLookup.forceInvalidateAfter(firstFullSpanItemInRange.mPosition);
        } else {
            this.mLazySpanLookup.forceInvalidateAfter(firstFullSpanItemInRange2.mPosition + 1);
        }
        requestSimpleAnimationsInNextLayout();
        requestLayout();
        return true;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int state) {
        if (state == 0) {
            checkForGaps();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView view, RecyclerView.Recycler recycler) {
        removeCallbacks(this.mCheckForGapsRunnable);
        for (int i = 0; i < this.mSpanCount; i++) {
            this.mSpans[i].clear();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x005d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    android.view.View hasGapsToFix() {
        /*
            r12 = this;
            r0 = -1
            r5 = 0
            r3 = 1
            int r1 = r12.getChildCount()
            int r1 = r1 + (-1)
            java.util.BitSet r9 = new java.util.BitSet
            int r2 = r12.mSpanCount
            r9.<init>(r2)
            int r2 = r12.mSpanCount
            r9.set(r5, r2, r3)
            int r2 = r12.mOrientation
            if (r2 != r3) goto L49
            boolean r2 = r12.isLayoutRTL()
            if (r2 == 0) goto L49
            r2 = r3
        L20:
            boolean r4 = r12.mShouldReverseLayout
            if (r4 == 0) goto L4b
            r8 = r0
        L25:
            if (r1 >= r8) goto L50
            r4 = r3
        L28:
            r7 = r1
        L29:
            if (r7 == r8) goto Lb5
            android.view.View r6 = r12.getChildAt(r7)
            android.view.ViewGroup$LayoutParams r0 = r6.getLayoutParams()
            android.support.v7.widget.StaggeredGridLayoutManager$LayoutParams r0 = (android.support.v7.widget.StaggeredGridLayoutManager.LayoutParams) r0
            android.support.v7.widget.StaggeredGridLayoutManager$Span r1 = r0.mSpan
            int r1 = r1.mIndex
            boolean r1 = r9.get(r1)
            if (r1 == 0) goto L59
            android.support.v7.widget.StaggeredGridLayoutManager$Span r1 = r0.mSpan
            boolean r1 = r12.checkSpanForGap(r1)
            if (r1 == 0) goto L52
            r0 = r6
        L48:
            return r0
        L49:
            r2 = r0
            goto L20
        L4b:
            int r1 = r1 + 1
            r8 = r1
            r1 = r5
            goto L25
        L50:
            r4 = r0
            goto L28
        L52:
            android.support.v7.widget.StaggeredGridLayoutManager$Span r1 = r0.mSpan
            int r1 = r1.mIndex
            r9.clear(r1)
        L59:
            boolean r1 = r0.mFullSpan
            if (r1 == 0) goto L61
        L5d:
            int r0 = r7 + r4
            r7 = r0
            goto L29
        L61:
            int r1 = r7 + r4
            if (r1 == r8) goto L5d
            int r1 = r7 + r4
            android.view.View r10 = r12.getChildAt(r1)
            boolean r1 = r12.mShouldReverseLayout
            if (r1 == 0) goto L9d
            android.support.v7.widget.OrientationHelper r1 = r12.mPrimaryOrientation
            int r1 = r1.getDecoratedEnd(r6)
            android.support.v7.widget.OrientationHelper r11 = r12.mPrimaryOrientation
            int r11 = r11.getDecoratedEnd(r10)
            if (r1 >= r11) goto L7f
            r0 = r6
            goto L48
        L7f:
            if (r1 != r11) goto Lb7
            r1 = r3
        L82:
            if (r1 == 0) goto L5d
            android.view.ViewGroup$LayoutParams r1 = r10.getLayoutParams()
            android.support.v7.widget.StaggeredGridLayoutManager$LayoutParams r1 = (android.support.v7.widget.StaggeredGridLayoutManager.LayoutParams) r1
            android.support.v7.widget.StaggeredGridLayoutManager$Span r0 = r0.mSpan
            int r0 = r0.mIndex
            android.support.v7.widget.StaggeredGridLayoutManager$Span r1 = r1.mSpan
            int r1 = r1.mIndex
            int r0 = r0 - r1
            if (r0 >= 0) goto Lb1
            r1 = r3
        L96:
            if (r2 >= 0) goto Lb3
            r0 = r3
        L99:
            if (r1 == r0) goto L5d
            r0 = r6
            goto L48
        L9d:
            android.support.v7.widget.OrientationHelper r1 = r12.mPrimaryOrientation
            int r1 = r1.getDecoratedStart(r6)
            android.support.v7.widget.OrientationHelper r11 = r12.mPrimaryOrientation
            int r11 = r11.getDecoratedStart(r10)
            if (r1 <= r11) goto Lad
            r0 = r6
            goto L48
        Lad:
            if (r1 != r11) goto Lb7
            r1 = r3
            goto L82
        Lb1:
            r1 = r5
            goto L96
        Lb3:
            r0 = r5
            goto L99
        Lb5:
            r0 = 0
            goto L48
        Lb7:
            r1 = r5
            goto L82
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.StaggeredGridLayoutManager.hasGapsToFix():android.view.View");
    }

    private boolean checkSpanForGap(Span span) {
        if (this.mShouldReverseLayout) {
            if (span.getEndLine() < this.mPrimaryOrientation.getEndAfterPadding()) {
                return !span.getLayoutParams((View) span.mViews.get(span.mViews.size() + (-1))).mFullSpan;
            }
        } else if (span.getStartLine() > this.mPrimaryOrientation.getStartAfterPadding()) {
            return span.getLayoutParams((View) span.mViews.get(0)).mFullSpan ? false : true;
        }
        return false;
    }

    public void setSpanCount(int spanCount) {
        assertNotInLayoutOrScroll(null);
        if (spanCount != this.mSpanCount) {
            invalidateSpanAssignments();
            this.mSpanCount = spanCount;
            this.mRemainingSpans = new BitSet(this.mSpanCount);
            this.mSpans = new Span[this.mSpanCount];
            for (int i = 0; i < this.mSpanCount; i++) {
                this.mSpans[i] = new Span(i);
            }
            requestLayout();
        }
    }

    public void setOrientation(int orientation) {
        if (orientation != 0 && orientation != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (orientation != this.mOrientation) {
            this.mOrientation = orientation;
            OrientationHelper orientationHelper = this.mPrimaryOrientation;
            this.mPrimaryOrientation = this.mSecondaryOrientation;
            this.mSecondaryOrientation = orientationHelper;
            requestLayout();
        }
    }

    public void setReverseLayout(boolean reverseLayout) {
        assertNotInLayoutOrScroll(null);
        if (this.mPendingSavedState != null && this.mPendingSavedState.mReverseLayout != reverseLayout) {
            this.mPendingSavedState.mReverseLayout = reverseLayout;
        }
        this.mReverseLayout = reverseLayout;
        requestLayout();
    }

    public int getGapStrategy() {
        return this.mGapStrategy;
    }

    public void setGapStrategy(int gapStrategy) {
        assertNotInLayoutOrScroll(null);
        if (gapStrategy != this.mGapStrategy) {
            if (gapStrategy != 0 && gapStrategy != 2) {
                throw new IllegalArgumentException("invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS");
            }
            this.mGapStrategy = gapStrategy;
            setAutoMeasureEnabled(this.mGapStrategy != 0);
            requestLayout();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void assertNotInLayoutOrScroll(String message) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(message);
        }
    }

    public int getSpanCount() {
        return this.mSpanCount;
    }

    public void invalidateSpanAssignments() {
        this.mLazySpanLookup.clear();
        requestLayout();
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = this.mReverseLayout ? false : true;
        }
    }

    boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void setMeasuredDimension(Rect childrenBounds, int wSpec, int hSpec) {
        int chooseSize;
        int chooseSize2;
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == 1) {
            chooseSize2 = chooseSize(hSpec, paddingTop + childrenBounds.height(), getMinimumHeight());
            chooseSize = chooseSize(wSpec, paddingRight + (this.mSizePerSpan * this.mSpanCount), getMinimumWidth());
        } else {
            chooseSize = chooseSize(wSpec, paddingRight + childrenBounds.width(), getMinimumWidth());
            chooseSize2 = chooseSize(hSpec, paddingTop + (this.mSizePerSpan * this.mSpanCount), getMinimumHeight());
        }
        setMeasuredDimension(chooseSize, chooseSize2);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        onLayoutChildren(recycler, state, true);
    }

    private void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state, boolean shouldCheckForGaps) {
        boolean z;
        AnchorInfo anchorInfo = this.mAnchorInfo;
        anchorInfo.reset();
        if ((this.mPendingSavedState != null || this.mPendingScrollPosition != -1) && state.getItemCount() == 0) {
            removeAndRecycleAllViews(recycler);
            return;
        }
        if (this.mPendingSavedState != null) {
            applyPendingSavedState(anchorInfo);
        } else {
            resolveShouldLayoutReverse();
            anchorInfo.mLayoutFromEnd = this.mShouldReverseLayout;
        }
        updateAnchorInfoForLayout(state, anchorInfo);
        if (this.mPendingSavedState == null && (anchorInfo.mLayoutFromEnd != this.mLastLayoutFromEnd || isLayoutRTL() != this.mLastLayoutRTL)) {
            this.mLazySpanLookup.clear();
            anchorInfo.mInvalidateOffsets = true;
        }
        if (getChildCount() > 0 && (this.mPendingSavedState == null || this.mPendingSavedState.mSpanOffsetsSize < 1)) {
            if (anchorInfo.mInvalidateOffsets) {
                for (int i = 0; i < this.mSpanCount; i++) {
                    this.mSpans[i].clear();
                    if (anchorInfo.mOffset != Integer.MIN_VALUE) {
                        this.mSpans[i].setLine(anchorInfo.mOffset);
                    }
                }
            } else {
                for (int i2 = 0; i2 < this.mSpanCount; i2++) {
                    this.mSpans[i2].cacheReferenceLineAndClear(this.mShouldReverseLayout, anchorInfo.mOffset);
                }
            }
        }
        detachAndScrapAttachedViews(recycler);
        this.mLayoutState.mRecycle = false;
        this.mLaidOutInvalidFullSpan = false;
        updateMeasureSpecs(this.mSecondaryOrientation.getTotalSpace());
        updateLayoutState(anchorInfo.mPosition, state);
        if (anchorInfo.mLayoutFromEnd) {
            setLayoutStateDirection(-1);
            fill(recycler, this.mLayoutState, state);
            setLayoutStateDirection(1);
            this.mLayoutState.mCurrentPosition = anchorInfo.mPosition + this.mLayoutState.mItemDirection;
            fill(recycler, this.mLayoutState, state);
        } else {
            setLayoutStateDirection(1);
            fill(recycler, this.mLayoutState, state);
            setLayoutStateDirection(-1);
            this.mLayoutState.mCurrentPosition = anchorInfo.mPosition + this.mLayoutState.mItemDirection;
            fill(recycler, this.mLayoutState, state);
        }
        repositionToWrapContentIfNecessary();
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout) {
                fixEndGap(recycler, state, true);
                fixStartGap(recycler, state, false);
            } else {
                fixStartGap(recycler, state, true);
                fixEndGap(recycler, state, false);
            }
        }
        if (!shouldCheckForGaps || state.isPreLayout()) {
            z = false;
        } else {
            if (this.mGapStrategy != 0 && getChildCount() > 0 && (this.mLaidOutInvalidFullSpan || hasGapsToFix() != null)) {
                removeCallbacks(this.mCheckForGapsRunnable);
                if (checkForGaps()) {
                    z = true;
                    this.mPendingScrollPosition = -1;
                    this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
                }
            }
            z = false;
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        }
        this.mLastLayoutFromEnd = anchorInfo.mLayoutFromEnd;
        this.mLastLayoutRTL = isLayoutRTL();
        this.mPendingSavedState = null;
        if (z) {
            onLayoutChildren(recycler, state, false);
        }
    }

    private void repositionToWrapContentIfNecessary() {
        float max;
        if (this.mSecondaryOrientation.getMode() != 1073741824) {
            float f = 0.0f;
            int childCount = getChildCount();
            int i = 0;
            while (i < childCount) {
                View childAt = getChildAt(i);
                float decoratedMeasurement = this.mSecondaryOrientation.getDecoratedMeasurement(childAt);
                if (decoratedMeasurement < f) {
                    max = f;
                } else {
                    max = Math.max(f, ((LayoutParams) childAt.getLayoutParams()).isFullSpan() ? (1.0f * decoratedMeasurement) / this.mSpanCount : decoratedMeasurement);
                }
                i++;
                f = max;
            }
            int i2 = this.mSizePerSpan;
            int round = Math.round(this.mSpanCount * f);
            if (this.mSecondaryOrientation.getMode() == Integer.MIN_VALUE) {
                round = Math.min(round, this.mSecondaryOrientation.getTotalSpace());
            }
            updateMeasureSpecs(round);
            if (this.mSizePerSpan != i2) {
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt2 = getChildAt(i3);
                    LayoutParams layoutParams = (LayoutParams) childAt2.getLayoutParams();
                    if (!layoutParams.mFullSpan) {
                        if (isLayoutRTL() && this.mOrientation == 1) {
                            childAt2.offsetLeftAndRight(((-((this.mSpanCount - 1) - layoutParams.mSpan.mIndex)) * this.mSizePerSpan) - ((-((this.mSpanCount - 1) - layoutParams.mSpan.mIndex)) * i2));
                        } else {
                            int i4 = layoutParams.mSpan.mIndex * this.mSizePerSpan;
                            int i5 = layoutParams.mSpan.mIndex * i2;
                            if (this.mOrientation == 1) {
                                childAt2.offsetLeftAndRight(i4 - i5);
                            } else {
                                childAt2.offsetTopAndBottom(i4 - i5);
                            }
                        }
                    }
                }
            }
        }
    }

    private void applyPendingSavedState(AnchorInfo anchorInfo) {
        if (this.mPendingSavedState.mSpanOffsetsSize > 0) {
            if (this.mPendingSavedState.mSpanOffsetsSize == this.mSpanCount) {
                for (int i = 0; i < this.mSpanCount; i++) {
                    this.mSpans[i].clear();
                    int i2 = this.mPendingSavedState.mSpanOffsets[i];
                    if (i2 != Integer.MIN_VALUE) {
                        if (this.mPendingSavedState.mAnchorLayoutFromEnd) {
                            i2 += this.mPrimaryOrientation.getEndAfterPadding();
                        } else {
                            i2 += this.mPrimaryOrientation.getStartAfterPadding();
                        }
                    }
                    this.mSpans[i].setLine(i2);
                }
            } else {
                this.mPendingSavedState.invalidateSpanInfo();
                this.mPendingSavedState.mAnchorPosition = this.mPendingSavedState.mVisibleAnchorPosition;
            }
        }
        this.mLastLayoutRTL = this.mPendingSavedState.mLastLayoutRTL;
        setReverseLayout(this.mPendingSavedState.mReverseLayout);
        resolveShouldLayoutReverse();
        if (this.mPendingSavedState.mAnchorPosition != -1) {
            this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
            anchorInfo.mLayoutFromEnd = this.mPendingSavedState.mAnchorLayoutFromEnd;
        } else {
            anchorInfo.mLayoutFromEnd = this.mShouldReverseLayout;
        }
        if (this.mPendingSavedState.mSpanLookupSize > 1) {
            this.mLazySpanLookup.mData = this.mPendingSavedState.mSpanLookup;
            this.mLazySpanLookup.mFullSpanItems = this.mPendingSavedState.mFullSpanItems;
        }
    }

    void updateAnchorInfoForLayout(RecyclerView.State state, AnchorInfo anchorInfo) {
        if (!updateAnchorFromPendingData(state, anchorInfo) && !updateAnchorFromChildren(state, anchorInfo)) {
            anchorInfo.assignCoordinateFromPadding();
            anchorInfo.mPosition = 0;
        }
    }

    private boolean updateAnchorFromChildren(RecyclerView.State state, AnchorInfo anchorInfo) {
        anchorInfo.mPosition = this.mLastLayoutFromEnd ? findLastReferenceChildPosition(state.getItemCount()) : findFirstReferenceChildPosition(state.getItemCount());
        anchorInfo.mOffset = Integer.MIN_VALUE;
        return true;
    }

    boolean updateAnchorFromPendingData(RecyclerView.State state, AnchorInfo anchorInfo) {
        if (state.isPreLayout() || this.mPendingScrollPosition == -1) {
            return false;
        }
        if (this.mPendingScrollPosition < 0 || this.mPendingScrollPosition >= state.getItemCount()) {
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
            return false;
        }
        if (this.mPendingSavedState == null || this.mPendingSavedState.mAnchorPosition == -1 || this.mPendingSavedState.mSpanOffsetsSize < 1) {
            View findViewByPosition = findViewByPosition(this.mPendingScrollPosition);
            if (findViewByPosition != null) {
                anchorInfo.mPosition = this.mShouldReverseLayout ? getLastChildPosition() : getFirstChildPosition();
                if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
                    if (anchorInfo.mLayoutFromEnd) {
                        anchorInfo.mOffset = (this.mPrimaryOrientation.getEndAfterPadding() - this.mPendingScrollPositionOffset) - this.mPrimaryOrientation.getDecoratedEnd(findViewByPosition);
                        return true;
                    }
                    anchorInfo.mOffset = (this.mPrimaryOrientation.getStartAfterPadding() + this.mPendingScrollPositionOffset) - this.mPrimaryOrientation.getDecoratedStart(findViewByPosition);
                    return true;
                }
                if (this.mPrimaryOrientation.getDecoratedMeasurement(findViewByPosition) > this.mPrimaryOrientation.getTotalSpace()) {
                    anchorInfo.mOffset = anchorInfo.mLayoutFromEnd ? this.mPrimaryOrientation.getEndAfterPadding() : this.mPrimaryOrientation.getStartAfterPadding();
                    return true;
                }
                int decoratedStart = this.mPrimaryOrientation.getDecoratedStart(findViewByPosition) - this.mPrimaryOrientation.getStartAfterPadding();
                if (decoratedStart < 0) {
                    anchorInfo.mOffset = -decoratedStart;
                    return true;
                }
                int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding() - this.mPrimaryOrientation.getDecoratedEnd(findViewByPosition);
                if (endAfterPadding < 0) {
                    anchorInfo.mOffset = endAfterPadding;
                    return true;
                }
                anchorInfo.mOffset = Integer.MIN_VALUE;
                return true;
            }
            anchorInfo.mPosition = this.mPendingScrollPosition;
            if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                anchorInfo.mLayoutFromEnd = calculateScrollDirectionForPosition(anchorInfo.mPosition) == 1;
                anchorInfo.assignCoordinateFromPadding();
            } else {
                anchorInfo.assignCoordinateFromPadding(this.mPendingScrollPositionOffset);
            }
            anchorInfo.mInvalidateOffsets = true;
            return true;
        }
        anchorInfo.mOffset = Integer.MIN_VALUE;
        anchorInfo.mPosition = this.mPendingScrollPosition;
        return true;
    }

    void updateMeasureSpecs(int totalSpace) {
        this.mSizePerSpan = totalSpace / this.mSpanCount;
        this.mFullSizeSpec = View.MeasureSpec.makeMeasureSpec(totalSpace, this.mSecondaryOrientation.getMode());
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null;
    }

    public int[] findFirstVisibleItemPositions(int[] into) {
        if (into == null) {
            into = new int[this.mSpanCount];
        } else if (into.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + into.length);
        }
        for (int i = 0; i < this.mSpanCount; i++) {
            into[i] = this.mSpans[i].findFirstVisibleItemPosition();
        }
        return into;
    }

    public int[] findFirstCompletelyVisibleItemPositions(int[] into) {
        if (into == null) {
            into = new int[this.mSpanCount];
        } else if (into.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + into.length);
        }
        for (int i = 0; i < this.mSpanCount; i++) {
            into[i] = this.mSpans[i].findFirstCompletelyVisibleItemPosition();
        }
        return into;
    }

    public int[] findLastVisibleItemPositions(int[] into) {
        if (into == null) {
            into = new int[this.mSpanCount];
        } else if (into.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + into.length);
        }
        for (int i = 0; i < this.mSpanCount; i++) {
            into[i] = this.mSpans[i].findLastVisibleItemPosition();
        }
        return into;
    }

    public int[] findLastCompletelyVisibleItemPositions(int[] into) {
        if (into == null) {
            into = new int[this.mSpanCount];
        } else if (into.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + into.length);
        }
        for (int i = 0; i < this.mSpanCount; i++) {
            into[i] = this.mSpans[i].findLastCompletelyVisibleItemPosition();
        }
        return into;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    private int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.computeScrollOffset(state, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleItemClosestToEnd(this.mSmoothScrollbarEnabled ? false : true, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    private int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.computeScrollExtent(state, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleItemClosestToEnd(this.mSmoothScrollbarEnabled ? false : true, true), this, this.mSmoothScrollbarEnabled);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    private int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        return ScrollbarHelper.computeScrollRange(state, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleItemClosestToEnd(this.mSmoothScrollbarEnabled ? false : true, true), this, this.mSmoothScrollbarEnabled);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    private void measureChildWithDecorationsAndMargin(View child, LayoutParams lp, boolean alreadyMeasured) {
        if (lp.mFullSpan) {
            if (this.mOrientation == 1) {
                measureChildWithDecorationsAndMargin(child, this.mFullSizeSpec, getChildMeasureSpec(getHeight(), getHeightMode(), 0, lp.height, true), alreadyMeasured);
                return;
            } else {
                measureChildWithDecorationsAndMargin(child, getChildMeasureSpec(getWidth(), getWidthMode(), 0, lp.width, true), this.mFullSizeSpec, alreadyMeasured);
                return;
            }
        }
        if (this.mOrientation == 1) {
            measureChildWithDecorationsAndMargin(child, getChildMeasureSpec(this.mSizePerSpan, getWidthMode(), 0, lp.width, false), getChildMeasureSpec(getHeight(), getHeightMode(), 0, lp.height, true), alreadyMeasured);
        } else {
            measureChildWithDecorationsAndMargin(child, getChildMeasureSpec(getWidth(), getWidthMode(), 0, lp.width, true), getChildMeasureSpec(this.mSizePerSpan, getHeightMode(), 0, lp.height, false), alreadyMeasured);
        }
    }

    private void measureChildWithDecorationsAndMargin(View child, int widthSpec, int heightSpec, boolean alreadyMeasured) {
        calculateItemDecorationsForChild(child, this.mTmpRect);
        LayoutParams layoutParams = (LayoutParams) child.getLayoutParams();
        int widthSpec2 = updateSpecWithExtra(widthSpec, layoutParams.leftMargin + this.mTmpRect.left, layoutParams.rightMargin + this.mTmpRect.right);
        int heightSpec2 = updateSpecWithExtra(heightSpec, layoutParams.topMargin + this.mTmpRect.top, layoutParams.bottomMargin + this.mTmpRect.bottom);
        if (alreadyMeasured ? shouldReMeasureChild(child, widthSpec2, heightSpec2, layoutParams) : shouldMeasureChild(child, widthSpec2, heightSpec2, layoutParams)) {
            child.measure(widthSpec2, heightSpec2);
        }
    }

    private int updateSpecWithExtra(int spec, int startInset, int endInset) {
        if (startInset != 0 || endInset != 0) {
            int mode = View.MeasureSpec.getMode(spec);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                return View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(spec) - startInset) - endInset), mode);
            }
            return spec;
        }
        return spec;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable state) {
        if (state instanceof SavedState) {
            this.mPendingSavedState = (SavedState) state;
            requestLayout();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        int startLine;
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        savedState.mReverseLayout = this.mReverseLayout;
        savedState.mAnchorLayoutFromEnd = this.mLastLayoutFromEnd;
        savedState.mLastLayoutRTL = this.mLastLayoutRTL;
        if (this.mLazySpanLookup != null && this.mLazySpanLookup.mData != null) {
            savedState.mSpanLookup = this.mLazySpanLookup.mData;
            savedState.mSpanLookupSize = savedState.mSpanLookup.length;
            savedState.mFullSpanItems = this.mLazySpanLookup.mFullSpanItems;
        } else {
            savedState.mSpanLookupSize = 0;
        }
        if (getChildCount() > 0) {
            savedState.mAnchorPosition = this.mLastLayoutFromEnd ? getLastChildPosition() : getFirstChildPosition();
            savedState.mVisibleAnchorPosition = findFirstVisibleItemPositionInt();
            savedState.mSpanOffsetsSize = this.mSpanCount;
            savedState.mSpanOffsets = new int[this.mSpanCount];
            for (int i = 0; i < this.mSpanCount; i++) {
                if (this.mLastLayoutFromEnd) {
                    startLine = this.mSpans[i].getEndLine(Integer.MIN_VALUE);
                    if (startLine != Integer.MIN_VALUE) {
                        startLine -= this.mPrimaryOrientation.getEndAfterPadding();
                    }
                } else {
                    startLine = this.mSpans[i].getStartLine(Integer.MIN_VALUE);
                    if (startLine != Integer.MIN_VALUE) {
                        startLine -= this.mPrimaryOrientation.getStartAfterPadding();
                    }
                }
                savedState.mSpanOffsets[i] = startLine;
            }
        } else {
            savedState.mAnchorPosition = -1;
            savedState.mVisibleAnchorPosition = -1;
            savedState.mSpanOffsetsSize = 0;
        }
        return savedState;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler recycler, RecyclerView.State state, View host, AccessibilityNodeInfoCompat info) {
        ViewGroup.LayoutParams layoutParams = host.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.onInitializeAccessibilityNodeInfoForItem(host, info);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        if (this.mOrientation != 0) {
            info.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(-1, -1, layoutParams2.getSpanIndex(), layoutParams2.mFullSpan ? this.mSpanCount : 1, layoutParams2.mFullSpan, false));
        } else {
            info.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(layoutParams2.getSpanIndex(), layoutParams2.mFullSpan ? this.mSpanCount : 1, -1, -1, layoutParams2.mFullSpan, false));
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        super.onInitializeAccessibilityEvent(event);
        if (getChildCount() > 0) {
            AccessibilityRecordCompat asRecord = AccessibilityEventCompat.asRecord(event);
            View findFirstVisibleItemClosestToStart = findFirstVisibleItemClosestToStart(false, true);
            View findFirstVisibleItemClosestToEnd = findFirstVisibleItemClosestToEnd(false, true);
            if (findFirstVisibleItemClosestToStart != null && findFirstVisibleItemClosestToEnd != null) {
                int position = getPosition(findFirstVisibleItemClosestToStart);
                int position2 = getPosition(findFirstVisibleItemClosestToEnd);
                if (position < position2) {
                    asRecord.setFromIndex(position);
                    asRecord.setToIndex(position2);
                } else {
                    asRecord.setFromIndex(position2);
                    asRecord.setToIndex(position);
                }
            }
        }
    }

    int findFirstVisibleItemPositionInt() {
        View findFirstVisibleItemClosestToEnd = this.mShouldReverseLayout ? findFirstVisibleItemClosestToEnd(true, true) : findFirstVisibleItemClosestToStart(true, true);
        if (findFirstVisibleItemClosestToEnd == null) {
            return -1;
        }
        return getPosition(findFirstVisibleItemClosestToEnd);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int getRowCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.mOrientation == 0 ? this.mSpanCount : super.getRowCountForAccessibility(recycler, state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int getColumnCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.mOrientation == 1 ? this.mSpanCount : super.getColumnCountForAccessibility(recycler, state);
    }

    View findFirstVisibleItemClosestToStart(boolean fullyVisible, boolean acceptPartiallyVisible) {
        int startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
        int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
        int childCount = getChildCount();
        View view = null;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int decoratedStart = this.mPrimaryOrientation.getDecoratedStart(childAt);
            if (this.mPrimaryOrientation.getDecoratedEnd(childAt) > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedStart < startAfterPadding && fullyVisible) {
                    if (acceptPartiallyVisible && view == null) {
                        view = childAt;
                    }
                } else {
                    return childAt;
                }
            }
        }
        return view;
    }

    View findFirstVisibleItemClosestToEnd(boolean fullyVisible, boolean acceptPartiallyVisible) {
        int startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
        int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int decoratedStart = this.mPrimaryOrientation.getDecoratedStart(childAt);
            int decoratedEnd = this.mPrimaryOrientation.getDecoratedEnd(childAt);
            if (decoratedEnd > startAfterPadding && decoratedStart < endAfterPadding) {
                if (decoratedEnd > endAfterPadding && fullyVisible) {
                    if (acceptPartiallyVisible && view == null) {
                        view = childAt;
                    }
                } else {
                    return childAt;
                }
            }
        }
        return view;
    }

    private void fixEndGap(RecyclerView.Recycler recycler, RecyclerView.State state, boolean canOffsetChildren) {
        int endAfterPadding;
        int maxEnd = getMaxEnd(Integer.MIN_VALUE);
        if (maxEnd != Integer.MIN_VALUE && (endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding() - maxEnd) > 0) {
            int i = endAfterPadding - (-scrollBy(-endAfterPadding, recycler, state));
            if (canOffsetChildren && i > 0) {
                this.mPrimaryOrientation.offsetChildren(i);
            }
        }
    }

    private void fixStartGap(RecyclerView.Recycler recycler, RecyclerView.State state, boolean canOffsetChildren) {
        int startAfterPadding;
        int minStart = getMinStart(Integer.MAX_VALUE);
        if (minStart != Integer.MAX_VALUE && (startAfterPadding = minStart - this.mPrimaryOrientation.getStartAfterPadding()) > 0) {
            int scrollBy = startAfterPadding - scrollBy(startAfterPadding, recycler, state);
            if (canOffsetChildren && scrollBy > 0) {
                this.mPrimaryOrientation.offsetChildren(-scrollBy);
            }
        }
    }

    private void updateLayoutState(int anchorPosition, RecyclerView.State state) {
        int i;
        int i2;
        int targetScrollPosition;
        boolean z = false;
        this.mLayoutState.mAvailable = 0;
        this.mLayoutState.mCurrentPosition = anchorPosition;
        if (!isSmoothScrolling() || (targetScrollPosition = state.getTargetScrollPosition()) == -1) {
            i = 0;
            i2 = 0;
        } else {
            if (this.mShouldReverseLayout == (targetScrollPosition < anchorPosition)) {
                i = this.mPrimaryOrientation.getTotalSpace();
                i2 = 0;
            } else {
                i2 = this.mPrimaryOrientation.getTotalSpace();
                i = 0;
            }
        }
        if (getClipToPadding()) {
            this.mLayoutState.mStartLine = this.mPrimaryOrientation.getStartAfterPadding() - i2;
            this.mLayoutState.mEndLine = i + this.mPrimaryOrientation.getEndAfterPadding();
        } else {
            this.mLayoutState.mEndLine = i + this.mPrimaryOrientation.getEnd();
            this.mLayoutState.mStartLine = -i2;
        }
        this.mLayoutState.mStopInFocusable = false;
        this.mLayoutState.mRecycle = true;
        LayoutState layoutState = this.mLayoutState;
        if (this.mPrimaryOrientation.getMode() == 0 && this.mPrimaryOrientation.getEnd() == 0) {
            z = true;
        }
        layoutState.mInfinite = z;
    }

    private void setLayoutStateDirection(int direction) {
        this.mLayoutState.mLayoutDirection = direction;
        this.mLayoutState.mItemDirection = this.mShouldReverseLayout != (direction == -1) ? -1 : 1;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void offsetChildrenHorizontal(int dx) {
        super.offsetChildrenHorizontal(dx);
        for (int i = 0; i < this.mSpanCount; i++) {
            this.mSpans[i].onOffset(dx);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void offsetChildrenVertical(int dy) {
        super.offsetChildrenVertical(dy);
        for (int i = 0; i < this.mSpanCount; i++) {
            this.mSpans[i].onOffset(dy);
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int positionStart, int itemCount) {
        handleUpdate(positionStart, itemCount, 2);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int positionStart, int itemCount) {
        handleUpdate(positionStart, itemCount, 1);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.mLazySpanLookup.clear();
        requestLayout();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int from, int to, int itemCount) {
        handleUpdate(from, to, 8);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int positionStart, int itemCount, Object payload) {
        handleUpdate(positionStart, itemCount, 4);
    }

    private void handleUpdate(int positionStart, int itemCountOrToPosition, int cmd) {
        int i;
        int i2;
        int lastChildPosition = this.mShouldReverseLayout ? getLastChildPosition() : getFirstChildPosition();
        if (cmd == 8) {
            if (positionStart < itemCountOrToPosition) {
                i = itemCountOrToPosition + 1;
                i2 = positionStart;
            } else {
                i = positionStart + 1;
                i2 = itemCountOrToPosition;
            }
        } else {
            i = positionStart + itemCountOrToPosition;
            i2 = positionStart;
        }
        this.mLazySpanLookup.invalidateAfter(i2);
        switch (cmd) {
            case 1:
                this.mLazySpanLookup.offsetForAddition(positionStart, itemCountOrToPosition);
                break;
            case 2:
                this.mLazySpanLookup.offsetForRemoval(positionStart, itemCountOrToPosition);
                break;
            case 8:
                this.mLazySpanLookup.offsetForRemoval(positionStart, 1);
                this.mLazySpanLookup.offsetForAddition(itemCountOrToPosition, 1);
                break;
        }
        if (i > lastChildPosition) {
            if (i2 <= (this.mShouldReverseLayout ? getFirstChildPosition() : getLastChildPosition())) {
                requestLayout();
            }
        }
    }

    private int fill(RecyclerView.Recycler recycler, LayoutState layoutState, RecyclerView.State state) {
        int i;
        int maxEnd;
        Span span;
        int decoratedMeasurement;
        int i2;
        int decoratedMeasurement2;
        int i3;
        boolean z;
        this.mRemainingSpans.set(0, this.mSpanCount, true);
        if (this.mLayoutState.mInfinite) {
            if (layoutState.mLayoutDirection == 1) {
                i = Integer.MAX_VALUE;
            } else {
                i = Integer.MIN_VALUE;
            }
        } else if (layoutState.mLayoutDirection == 1) {
            i = layoutState.mEndLine + layoutState.mAvailable;
        } else {
            i = layoutState.mStartLine - layoutState.mAvailable;
        }
        updateAllRemainingSpans(layoutState.mLayoutDirection, i);
        int endAfterPadding = this.mShouldReverseLayout ? this.mPrimaryOrientation.getEndAfterPadding() : this.mPrimaryOrientation.getStartAfterPadding();
        boolean z2 = false;
        while (layoutState.hasMore(state) && (this.mLayoutState.mInfinite || !this.mRemainingSpans.isEmpty())) {
            View next = layoutState.next(recycler);
            LayoutParams layoutParams = (LayoutParams) next.getLayoutParams();
            int viewLayoutPosition = layoutParams.getViewLayoutPosition();
            int span2 = this.mLazySpanLookup.getSpan(viewLayoutPosition);
            boolean z3 = span2 == -1;
            if (z3) {
                Span nextSpan = layoutParams.mFullSpan ? this.mSpans[0] : getNextSpan(layoutState);
                this.mLazySpanLookup.setSpan(viewLayoutPosition, nextSpan);
                span = nextSpan;
            } else {
                span = this.mSpans[span2];
            }
            layoutParams.mSpan = span;
            if (layoutState.mLayoutDirection == 1) {
                addView(next);
            } else {
                addView(next, 0);
            }
            measureChildWithDecorationsAndMargin(next, layoutParams, false);
            if (layoutState.mLayoutDirection == 1) {
                int maxEnd2 = layoutParams.mFullSpan ? getMaxEnd(endAfterPadding) : span.getEndLine(endAfterPadding);
                i2 = maxEnd2 + this.mPrimaryOrientation.getDecoratedMeasurement(next);
                if (z3 && layoutParams.mFullSpan) {
                    LazySpanLookup.FullSpanItem createFullSpanItemFromEnd = createFullSpanItemFromEnd(maxEnd2);
                    createFullSpanItemFromEnd.mGapDir = -1;
                    createFullSpanItemFromEnd.mPosition = viewLayoutPosition;
                    this.mLazySpanLookup.addFullSpanItem(createFullSpanItemFromEnd);
                    decoratedMeasurement = maxEnd2;
                } else {
                    decoratedMeasurement = maxEnd2;
                }
            } else {
                int minStart = layoutParams.mFullSpan ? getMinStart(endAfterPadding) : span.getStartLine(endAfterPadding);
                decoratedMeasurement = minStart - this.mPrimaryOrientation.getDecoratedMeasurement(next);
                if (z3 && layoutParams.mFullSpan) {
                    LazySpanLookup.FullSpanItem createFullSpanItemFromStart = createFullSpanItemFromStart(minStart);
                    createFullSpanItemFromStart.mGapDir = 1;
                    createFullSpanItemFromStart.mPosition = viewLayoutPosition;
                    this.mLazySpanLookup.addFullSpanItem(createFullSpanItemFromStart);
                }
                i2 = minStart;
            }
            if (layoutParams.mFullSpan && layoutState.mItemDirection == -1) {
                if (z3) {
                    this.mLaidOutInvalidFullSpan = true;
                } else {
                    if (layoutState.mLayoutDirection == 1) {
                        z = !areAllEndsEqual();
                    } else {
                        z = !areAllStartsEqual();
                    }
                    if (z) {
                        LazySpanLookup.FullSpanItem fullSpanItem = this.mLazySpanLookup.getFullSpanItem(viewLayoutPosition);
                        if (fullSpanItem != null) {
                            fullSpanItem.mHasUnwantedGapAfter = true;
                        }
                        this.mLaidOutInvalidFullSpan = true;
                    }
                }
            }
            attachViewToSpans(next, layoutParams, layoutState);
            if (isLayoutRTL() && this.mOrientation == 1) {
                int endAfterPadding2 = layoutParams.mFullSpan ? this.mSecondaryOrientation.getEndAfterPadding() : this.mSecondaryOrientation.getEndAfterPadding() - (((this.mSpanCount - 1) - span.mIndex) * this.mSizePerSpan);
                i3 = endAfterPadding2 - this.mSecondaryOrientation.getDecoratedMeasurement(next);
                decoratedMeasurement2 = endAfterPadding2;
            } else {
                int startAfterPadding = layoutParams.mFullSpan ? this.mSecondaryOrientation.getStartAfterPadding() : (span.mIndex * this.mSizePerSpan) + this.mSecondaryOrientation.getStartAfterPadding();
                decoratedMeasurement2 = startAfterPadding + this.mSecondaryOrientation.getDecoratedMeasurement(next);
                i3 = startAfterPadding;
            }
            if (this.mOrientation == 1) {
                layoutDecoratedWithMargins(next, i3, decoratedMeasurement, decoratedMeasurement2, i2);
            } else {
                layoutDecoratedWithMargins(next, decoratedMeasurement, i3, i2, decoratedMeasurement2);
            }
            if (layoutParams.mFullSpan) {
                updateAllRemainingSpans(this.mLayoutState.mLayoutDirection, i);
            } else {
                updateRemainingSpans(span, this.mLayoutState.mLayoutDirection, i);
            }
            recycle(recycler, this.mLayoutState);
            if (this.mLayoutState.mStopInFocusable && next.isFocusable()) {
                if (layoutParams.mFullSpan) {
                    this.mRemainingSpans.clear();
                } else {
                    this.mRemainingSpans.set(span.mIndex, false);
                }
            }
            z2 = true;
        }
        if (!z2) {
            recycle(recycler, this.mLayoutState);
        }
        if (this.mLayoutState.mLayoutDirection == -1) {
            maxEnd = this.mPrimaryOrientation.getStartAfterPadding() - getMinStart(this.mPrimaryOrientation.getStartAfterPadding());
        } else {
            maxEnd = getMaxEnd(this.mPrimaryOrientation.getEndAfterPadding()) - this.mPrimaryOrientation.getEndAfterPadding();
        }
        if (maxEnd > 0) {
            return Math.min(layoutState.mAvailable, maxEnd);
        }
        return 0;
    }

    private LazySpanLookup.FullSpanItem createFullSpanItemFromEnd(int newItemTop) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.mGapPerSpan = new int[this.mSpanCount];
        for (int i = 0; i < this.mSpanCount; i++) {
            fullSpanItem.mGapPerSpan[i] = newItemTop - this.mSpans[i].getEndLine(newItemTop);
        }
        return fullSpanItem;
    }

    private LazySpanLookup.FullSpanItem createFullSpanItemFromStart(int newItemBottom) {
        LazySpanLookup.FullSpanItem fullSpanItem = new LazySpanLookup.FullSpanItem();
        fullSpanItem.mGapPerSpan = new int[this.mSpanCount];
        for (int i = 0; i < this.mSpanCount; i++) {
            fullSpanItem.mGapPerSpan[i] = this.mSpans[i].getStartLine(newItemBottom) - newItemBottom;
        }
        return fullSpanItem;
    }

    private void attachViewToSpans(View view, LayoutParams lp, LayoutState layoutState) {
        if (layoutState.mLayoutDirection == 1) {
            if (lp.mFullSpan) {
                appendViewToAllSpans(view);
                return;
            } else {
                lp.mSpan.appendToSpan(view);
                return;
            }
        }
        if (lp.mFullSpan) {
            prependViewToAllSpans(view);
        } else {
            lp.mSpan.prependToSpan(view);
        }
    }

    private void recycle(RecyclerView.Recycler recycler, LayoutState layoutState) {
        int min;
        int min2;
        if (layoutState.mRecycle && !layoutState.mInfinite) {
            if (layoutState.mAvailable == 0) {
                if (layoutState.mLayoutDirection == -1) {
                    recycleFromEnd(recycler, layoutState.mEndLine);
                    return;
                } else {
                    recycleFromStart(recycler, layoutState.mStartLine);
                    return;
                }
            }
            if (layoutState.mLayoutDirection == -1) {
                int maxStart = layoutState.mStartLine - getMaxStart(layoutState.mStartLine);
                if (maxStart < 0) {
                    min2 = layoutState.mEndLine;
                } else {
                    min2 = layoutState.mEndLine - Math.min(maxStart, layoutState.mAvailable);
                }
                recycleFromEnd(recycler, min2);
                return;
            }
            int minEnd = getMinEnd(layoutState.mEndLine) - layoutState.mEndLine;
            if (minEnd < 0) {
                min = layoutState.mStartLine;
            } else {
                min = Math.min(minEnd, layoutState.mAvailable) + layoutState.mStartLine;
            }
            recycleFromStart(recycler, min);
        }
    }

    private void appendViewToAllSpans(View view) {
        for (int i = this.mSpanCount - 1; i >= 0; i--) {
            this.mSpans[i].appendToSpan(view);
        }
    }

    private void prependViewToAllSpans(View view) {
        for (int i = this.mSpanCount - 1; i >= 0; i--) {
            this.mSpans[i].prependToSpan(view);
        }
    }

    private void layoutDecoratedWithMargins(View child, int left, int top, int right, int bottom) {
        LayoutParams layoutParams = (LayoutParams) child.getLayoutParams();
        layoutDecorated(child, left + layoutParams.leftMargin, top + layoutParams.topMargin, right - layoutParams.rightMargin, bottom - layoutParams.bottomMargin);
    }

    private void updateAllRemainingSpans(int layoutDir, int targetLine) {
        for (int i = 0; i < this.mSpanCount; i++) {
            if (!this.mSpans[i].mViews.isEmpty()) {
                updateRemainingSpans(this.mSpans[i], layoutDir, targetLine);
            }
        }
    }

    private void updateRemainingSpans(Span span, int layoutDir, int targetLine) {
        int deletedSize = span.getDeletedSize();
        if (layoutDir == -1) {
            if (deletedSize + span.getStartLine() <= targetLine) {
                this.mRemainingSpans.set(span.mIndex, false);
            }
        } else if (span.getEndLine() - deletedSize >= targetLine) {
            this.mRemainingSpans.set(span.mIndex, false);
        }
    }

    private int getMaxStart(int def) {
        int startLine = this.mSpans[0].getStartLine(def);
        for (int i = 1; i < this.mSpanCount; i++) {
            int startLine2 = this.mSpans[i].getStartLine(def);
            if (startLine2 > startLine) {
                startLine = startLine2;
            }
        }
        return startLine;
    }

    private int getMinStart(int def) {
        int startLine = this.mSpans[0].getStartLine(def);
        for (int i = 1; i < this.mSpanCount; i++) {
            int startLine2 = this.mSpans[i].getStartLine(def);
            if (startLine2 < startLine) {
                startLine = startLine2;
            }
        }
        return startLine;
    }

    boolean areAllEndsEqual() {
        int endLine = this.mSpans[0].getEndLine(Integer.MIN_VALUE);
        for (int i = 1; i < this.mSpanCount; i++) {
            if (this.mSpans[i].getEndLine(Integer.MIN_VALUE) != endLine) {
                return false;
            }
        }
        return true;
    }

    boolean areAllStartsEqual() {
        int startLine = this.mSpans[0].getStartLine(Integer.MIN_VALUE);
        for (int i = 1; i < this.mSpanCount; i++) {
            if (this.mSpans[i].getStartLine(Integer.MIN_VALUE) != startLine) {
                return false;
            }
        }
        return true;
    }

    private int getMaxEnd(int def) {
        int endLine = this.mSpans[0].getEndLine(def);
        for (int i = 1; i < this.mSpanCount; i++) {
            int endLine2 = this.mSpans[i].getEndLine(def);
            if (endLine2 > endLine) {
                endLine = endLine2;
            }
        }
        return endLine;
    }

    private int getMinEnd(int def) {
        int endLine = this.mSpans[0].getEndLine(def);
        for (int i = 1; i < this.mSpanCount; i++) {
            int endLine2 = this.mSpans[i].getEndLine(def);
            if (endLine2 < endLine) {
                endLine = endLine2;
            }
        }
        return endLine;
    }

    private void recycleFromStart(RecyclerView.Recycler recycler, int line) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.mPrimaryOrientation.getDecoratedEnd(childAt) <= line) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.mFullSpan) {
                    for (int i = 0; i < this.mSpanCount; i++) {
                        if (this.mSpans[i].mViews.size() == 1) {
                            return;
                        }
                    }
                    for (int i2 = 0; i2 < this.mSpanCount; i2++) {
                        this.mSpans[i2].popStart();
                    }
                } else if (layoutParams.mSpan.mViews.size() != 1) {
                    layoutParams.mSpan.popStart();
                } else {
                    return;
                }
                removeAndRecycleView(childAt, recycler);
            } else {
                return;
            }
        }
    }

    private void recycleFromEnd(RecyclerView.Recycler recycler, int line) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.mPrimaryOrientation.getDecoratedStart(childAt) >= line) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.mFullSpan) {
                    for (int i = 0; i < this.mSpanCount; i++) {
                        if (this.mSpans[i].mViews.size() == 1) {
                            return;
                        }
                    }
                    for (int i2 = 0; i2 < this.mSpanCount; i2++) {
                        this.mSpans[i2].popEnd();
                    }
                } else if (layoutParams.mSpan.mViews.size() != 1) {
                    layoutParams.mSpan.popEnd();
                } else {
                    return;
                }
                removeAndRecycleView(childAt, recycler);
            } else {
                return;
            }
        }
    }

    private boolean preferLastSpan(int layoutDir) {
        if (this.mOrientation == 0) {
            return (layoutDir == -1) != this.mShouldReverseLayout;
        }
        return ((layoutDir == -1) == this.mShouldReverseLayout) == isLayoutRTL();
    }

    private Span getNextSpan(LayoutState layoutState) {
        int i;
        int i2;
        Span span;
        Span span2;
        Span span3 = null;
        int i3 = -1;
        if (preferLastSpan(layoutState.mLayoutDirection)) {
            i = this.mSpanCount - 1;
            i2 = -1;
        } else {
            i = 0;
            i2 = this.mSpanCount;
            i3 = 1;
        }
        if (layoutState.mLayoutDirection == 1) {
            int startAfterPadding = this.mPrimaryOrientation.getStartAfterPadding();
            int i4 = i;
            int i5 = Integer.MAX_VALUE;
            while (i4 != i2) {
                Span span4 = this.mSpans[i4];
                int endLine = span4.getEndLine(startAfterPadding);
                if (endLine < i5) {
                    span2 = span4;
                } else {
                    endLine = i5;
                    span2 = span3;
                }
                i4 += i3;
                span3 = span2;
                i5 = endLine;
            }
        } else {
            int endAfterPadding = this.mPrimaryOrientation.getEndAfterPadding();
            int i6 = i;
            int i7 = Integer.MIN_VALUE;
            while (i6 != i2) {
                Span span5 = this.mSpans[i6];
                int startLine = span5.getStartLine(endAfterPadding);
                if (startLine > i7) {
                    span = span5;
                } else {
                    startLine = i7;
                    span = span3;
                }
                i6 += i3;
                span3 = span;
                i7 = startLine;
            }
        }
        return span3;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int dx, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return scrollBy(dx, recycler, state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int dy, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return scrollBy(dy, recycler, state);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int calculateScrollDirectionForPosition(int position) {
        if (getChildCount() == 0) {
            return this.mShouldReverseLayout ? 1 : -1;
        }
        return (position < getFirstChildPosition()) == this.mShouldReverseLayout ? 1 : -1;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int position) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: android.support.v7.widget.StaggeredGridLayoutManager.2
            @Override // android.support.v7.widget.LinearSmoothScroller
            public PointF computeScrollVectorForPosition(int targetPosition) {
                int calculateScrollDirectionForPosition = StaggeredGridLayoutManager.this.calculateScrollDirectionForPosition(targetPosition);
                if (calculateScrollDirectionForPosition != 0) {
                    if (StaggeredGridLayoutManager.this.mOrientation == 0) {
                        return new PointF(calculateScrollDirectionForPosition, 0.0f);
                    }
                    return new PointF(0.0f, calculateScrollDirectionForPosition);
                }
                return null;
            }
        };
        linearSmoothScroller.setTargetPosition(position);
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int position) {
        if (this.mPendingSavedState != null && this.mPendingSavedState.mAnchorPosition != position) {
            this.mPendingSavedState.invalidateAnchorPositionInfo();
        }
        this.mPendingScrollPosition = position;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        requestLayout();
    }

    public void scrollToPositionWithOffset(int position, int offset) {
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.invalidateAnchorPositionInfo();
        }
        this.mPendingScrollPosition = position;
        this.mPendingScrollPositionOffset = offset;
        requestLayout();
    }

    int scrollBy(int dt, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i;
        int firstChildPosition;
        if (dt > 0) {
            firstChildPosition = getLastChildPosition();
            i = 1;
        } else {
            i = -1;
            firstChildPosition = getFirstChildPosition();
        }
        this.mLayoutState.mRecycle = true;
        updateLayoutState(firstChildPosition, state);
        setLayoutStateDirection(i);
        this.mLayoutState.mCurrentPosition = this.mLayoutState.mItemDirection + firstChildPosition;
        int abs = Math.abs(dt);
        this.mLayoutState.mAvailable = abs;
        int fill = fill(recycler, this.mLayoutState, state);
        if (abs >= fill) {
            dt = dt < 0 ? -fill : fill;
        }
        this.mPrimaryOrientation.offsetChildren(-dt);
        this.mLastLayoutFromEnd = this.mShouldReverseLayout;
        return dt;
    }

    private int getLastChildPosition() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    private int getFirstChildPosition() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    private int findFirstReferenceChildPosition(int itemCount) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            int position = getPosition(getChildAt(i));
            if (position >= 0 && position < itemCount) {
                return position;
            }
        }
        return 0;
    }

    private int findLastReferenceChildPosition(int itemCount) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            int position = getPosition(getChildAt(childCount));
            if (position >= 0 && position < itemCount) {
                return position;
            }
        }
        return 0;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context c, AttributeSet attrs) {
        return new LayoutParams(c, attrs);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams lp) {
        return lp instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) lp) : new LayoutParams(lp);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams lp) {
        return lp instanceof LayoutParams;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    @Nullable
    public View onFocusSearchFailed(View focused, int direction, RecyclerView.Recycler recycler, RecyclerView.State state) {
        View findContainingItemView;
        int firstChildPosition;
        View focusableViewAfter;
        if (getChildCount() != 0 && (findContainingItemView = findContainingItemView(focused)) != null) {
            resolveShouldLayoutReverse();
            int convertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(direction);
            if (convertFocusDirectionToLayoutDirection == Integer.MIN_VALUE) {
                return null;
            }
            LayoutParams layoutParams = (LayoutParams) findContainingItemView.getLayoutParams();
            boolean z = layoutParams.mFullSpan;
            Span span = layoutParams.mSpan;
            if (convertFocusDirectionToLayoutDirection == 1) {
                firstChildPosition = getLastChildPosition();
            } else {
                firstChildPosition = getFirstChildPosition();
            }
            updateLayoutState(firstChildPosition, state);
            setLayoutStateDirection(convertFocusDirectionToLayoutDirection);
            this.mLayoutState.mCurrentPosition = this.mLayoutState.mItemDirection + firstChildPosition;
            this.mLayoutState.mAvailable = (int) (MAX_SCROLL_FACTOR * this.mPrimaryOrientation.getTotalSpace());
            this.mLayoutState.mStopInFocusable = true;
            this.mLayoutState.mRecycle = false;
            fill(recycler, this.mLayoutState, state);
            this.mLastLayoutFromEnd = this.mShouldReverseLayout;
            if (!z && (focusableViewAfter = span.getFocusableViewAfter(firstChildPosition, convertFocusDirectionToLayoutDirection)) != null && focusableViewAfter != findContainingItemView) {
                return focusableViewAfter;
            }
            if (preferLastSpan(convertFocusDirectionToLayoutDirection)) {
                for (int i = this.mSpanCount - 1; i >= 0; i--) {
                    View focusableViewAfter2 = this.mSpans[i].getFocusableViewAfter(firstChildPosition, convertFocusDirectionToLayoutDirection);
                    if (focusableViewAfter2 != null && focusableViewAfter2 != findContainingItemView) {
                        return focusableViewAfter2;
                    }
                }
            } else {
                for (int i2 = 0; i2 < this.mSpanCount; i2++) {
                    View focusableViewAfter3 = this.mSpans[i2].getFocusableViewAfter(firstChildPosition, convertFocusDirectionToLayoutDirection);
                    if (focusableViewAfter3 != null && focusableViewAfter3 != findContainingItemView) {
                        return focusableViewAfter3;
                    }
                }
            }
            return null;
        }
        return null;
    }

    private int convertFocusDirectionToLayoutDirection(int focusDirection) {
        switch (focusDirection) {
            case 1:
                return -1;
            case 2:
                return 1;
            case 17:
                return this.mOrientation != 0 ? Integer.MIN_VALUE : -1;
            case MotionEventCompat.AXIS_GENERIC_2 /* 33 */:
                return this.mOrientation != 1 ? Integer.MIN_VALUE : -1;
            case 66:
                return this.mOrientation != 0 ? Integer.MIN_VALUE : 1;
            case TransportMediator.KEYCODE_MEDIA_RECORD /* 130 */:
                return this.mOrientation == 1 ? 1 : Integer.MIN_VALUE;
            default:
                return Integer.MIN_VALUE;
        }
    }

    public static class LayoutParams extends RecyclerView.LayoutParams {
        public static final int INVALID_SPAN_ID = -1;
        boolean mFullSpan;
        Span mSpan;

        public LayoutParams(Context c, AttributeSet attrs) {
            super(c, attrs);
        }

        public LayoutParams(int width, int height) {
            super(width, height);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super(source);
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
        }

        public LayoutParams(RecyclerView.LayoutParams source) {
            super(source);
        }

        public void setFullSpan(boolean fullSpan) {
            this.mFullSpan = fullSpan;
        }

        public boolean isFullSpan() {
            return this.mFullSpan;
        }

        public final int getSpanIndex() {
            if (this.mSpan == null) {
                return -1;
            }
            return this.mSpan.mIndex;
        }
    }

    class Span {
        static final int INVALID_LINE = Integer.MIN_VALUE;
        int mCachedEnd;
        int mCachedStart;
        int mDeletedSize;
        final int mIndex;
        private ArrayList<View> mViews;

        private Span(int index) {
            this.mViews = new ArrayList<>();
            this.mCachedStart = Integer.MIN_VALUE;
            this.mCachedEnd = Integer.MIN_VALUE;
            this.mDeletedSize = 0;
            this.mIndex = index;
        }

        int getStartLine(int def) {
            if (this.mCachedStart != Integer.MIN_VALUE) {
                int def2 = this.mCachedStart;
                return def2;
            }
            if (this.mViews.size() != 0) {
                calculateCachedStart();
                int def3 = this.mCachedStart;
                return def3;
            }
            return def;
        }

        void calculateCachedStart() {
            LazySpanLookup.FullSpanItem fullSpanItem;
            View view = this.mViews.get(0);
            LayoutParams layoutParams = getLayoutParams(view);
            this.mCachedStart = StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedStart(view);
            if (layoutParams.mFullSpan && (fullSpanItem = StaggeredGridLayoutManager.this.mLazySpanLookup.getFullSpanItem(layoutParams.getViewLayoutPosition())) != null && fullSpanItem.mGapDir == -1) {
                this.mCachedStart -= fullSpanItem.getGapForSpan(this.mIndex);
            }
        }

        int getStartLine() {
            if (this.mCachedStart != Integer.MIN_VALUE) {
                return this.mCachedStart;
            }
            calculateCachedStart();
            return this.mCachedStart;
        }

        int getEndLine(int def) {
            if (this.mCachedEnd != Integer.MIN_VALUE) {
                int def2 = this.mCachedEnd;
                return def2;
            }
            if (this.mViews.size() != 0) {
                calculateCachedEnd();
                int def3 = this.mCachedEnd;
                return def3;
            }
            return def;
        }

        void calculateCachedEnd() {
            LazySpanLookup.FullSpanItem fullSpanItem;
            View view = this.mViews.get(this.mViews.size() - 1);
            LayoutParams layoutParams = getLayoutParams(view);
            this.mCachedEnd = StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedEnd(view);
            if (!layoutParams.mFullSpan || (fullSpanItem = StaggeredGridLayoutManager.this.mLazySpanLookup.getFullSpanItem(layoutParams.getViewLayoutPosition())) == null || fullSpanItem.mGapDir != 1) {
                return;
            }
            this.mCachedEnd = fullSpanItem.getGapForSpan(this.mIndex) + this.mCachedEnd;
        }

        int getEndLine() {
            if (this.mCachedEnd != Integer.MIN_VALUE) {
                return this.mCachedEnd;
            }
            calculateCachedEnd();
            return this.mCachedEnd;
        }

        void prependToSpan(View view) {
            LayoutParams layoutParams = getLayoutParams(view);
            layoutParams.mSpan = this;
            this.mViews.add(0, view);
            this.mCachedStart = Integer.MIN_VALUE;
            if (this.mViews.size() == 1) {
                this.mCachedEnd = Integer.MIN_VALUE;
            }
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                this.mDeletedSize += StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedMeasurement(view);
            }
        }

        void appendToSpan(View view) {
            LayoutParams layoutParams = getLayoutParams(view);
            layoutParams.mSpan = this;
            this.mViews.add(view);
            this.mCachedEnd = Integer.MIN_VALUE;
            if (this.mViews.size() == 1) {
                this.mCachedStart = Integer.MIN_VALUE;
            }
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                this.mDeletedSize += StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedMeasurement(view);
            }
        }

        void cacheReferenceLineAndClear(boolean reverseLayout, int offset) {
            int startLine;
            if (reverseLayout) {
                startLine = getEndLine(Integer.MIN_VALUE);
            } else {
                startLine = getStartLine(Integer.MIN_VALUE);
            }
            clear();
            if (startLine != Integer.MIN_VALUE) {
                if (!reverseLayout || startLine >= StaggeredGridLayoutManager.this.mPrimaryOrientation.getEndAfterPadding()) {
                    if (reverseLayout || startLine <= StaggeredGridLayoutManager.this.mPrimaryOrientation.getStartAfterPadding()) {
                        if (offset != Integer.MIN_VALUE) {
                            startLine += offset;
                        }
                        this.mCachedEnd = startLine;
                        this.mCachedStart = startLine;
                    }
                }
            }
        }

        void clear() {
            this.mViews.clear();
            invalidateCache();
            this.mDeletedSize = 0;
        }

        void invalidateCache() {
            this.mCachedStart = Integer.MIN_VALUE;
            this.mCachedEnd = Integer.MIN_VALUE;
        }

        void setLine(int line) {
            this.mCachedStart = line;
            this.mCachedEnd = line;
        }

        void popEnd() {
            int size = this.mViews.size();
            View remove = this.mViews.remove(size - 1);
            LayoutParams layoutParams = getLayoutParams(remove);
            layoutParams.mSpan = null;
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                this.mDeletedSize -= StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedMeasurement(remove);
            }
            if (size == 1) {
                this.mCachedStart = Integer.MIN_VALUE;
            }
            this.mCachedEnd = Integer.MIN_VALUE;
        }

        void popStart() {
            View remove = this.mViews.remove(0);
            LayoutParams layoutParams = getLayoutParams(remove);
            layoutParams.mSpan = null;
            if (this.mViews.size() == 0) {
                this.mCachedEnd = Integer.MIN_VALUE;
            }
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                this.mDeletedSize -= StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedMeasurement(remove);
            }
            this.mCachedStart = Integer.MIN_VALUE;
        }

        public int getDeletedSize() {
            return this.mDeletedSize;
        }

        LayoutParams getLayoutParams(View view) {
            return (LayoutParams) view.getLayoutParams();
        }

        void onOffset(int dt) {
            if (this.mCachedStart != Integer.MIN_VALUE) {
                this.mCachedStart += dt;
            }
            if (this.mCachedEnd != Integer.MIN_VALUE) {
                this.mCachedEnd += dt;
            }
        }

        public int findFirstVisibleItemPosition() {
            return StaggeredGridLayoutManager.this.mReverseLayout ? findOneVisibleChild(this.mViews.size() - 1, -1, false) : findOneVisibleChild(0, this.mViews.size(), false);
        }

        public int findFirstCompletelyVisibleItemPosition() {
            return StaggeredGridLayoutManager.this.mReverseLayout ? findOneVisibleChild(this.mViews.size() - 1, -1, true) : findOneVisibleChild(0, this.mViews.size(), true);
        }

        public int findLastVisibleItemPosition() {
            return StaggeredGridLayoutManager.this.mReverseLayout ? findOneVisibleChild(0, this.mViews.size(), false) : findOneVisibleChild(this.mViews.size() - 1, -1, false);
        }

        public int findLastCompletelyVisibleItemPosition() {
            return StaggeredGridLayoutManager.this.mReverseLayout ? findOneVisibleChild(0, this.mViews.size(), true) : findOneVisibleChild(this.mViews.size() - 1, -1, true);
        }

        int findOneVisibleChild(int fromIndex, int toIndex, boolean completelyVisible) {
            int startAfterPadding = StaggeredGridLayoutManager.this.mPrimaryOrientation.getStartAfterPadding();
            int endAfterPadding = StaggeredGridLayoutManager.this.mPrimaryOrientation.getEndAfterPadding();
            int i = toIndex > fromIndex ? 1 : -1;
            while (fromIndex != toIndex) {
                View view = this.mViews.get(fromIndex);
                int decoratedStart = StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedStart(view);
                int decoratedEnd = StaggeredGridLayoutManager.this.mPrimaryOrientation.getDecoratedEnd(view);
                if (decoratedStart < endAfterPadding && decoratedEnd > startAfterPadding) {
                    if (completelyVisible) {
                        if (decoratedStart >= startAfterPadding && decoratedEnd <= endAfterPadding) {
                            return StaggeredGridLayoutManager.this.getPosition(view);
                        }
                    } else {
                        return StaggeredGridLayoutManager.this.getPosition(view);
                    }
                }
                fromIndex += i;
            }
            return -1;
        }

        public View getFocusableViewAfter(int referenceChildPosition, int layoutDir) {
            View view = null;
            if (layoutDir == -1) {
                int size = this.mViews.size();
                int i = 0;
                while (i < size) {
                    View view2 = this.mViews.get(i);
                    if (!view2.isFocusable()) {
                        break;
                    }
                    if ((StaggeredGridLayoutManager.this.getPosition(view2) > referenceChildPosition) != StaggeredGridLayoutManager.this.mReverseLayout) {
                        break;
                    }
                    i++;
                    view = view2;
                }
                return view;
            }
            int size2 = this.mViews.size() - 1;
            while (size2 >= 0) {
                View view3 = this.mViews.get(size2);
                if (!view3.isFocusable()) {
                    break;
                }
                if ((StaggeredGridLayoutManager.this.getPosition(view3) > referenceChildPosition) != (!StaggeredGridLayoutManager.this.mReverseLayout)) {
                    break;
                }
                size2--;
                view = view3;
            }
            return view;
        }
    }

    static class LazySpanLookup {
        private static final int MIN_SIZE = 10;
        int[] mData;
        List<FullSpanItem> mFullSpanItems;

        LazySpanLookup() {
        }

        int forceInvalidateAfter(int position) {
            if (this.mFullSpanItems != null) {
                for (int size = this.mFullSpanItems.size() - 1; size >= 0; size--) {
                    if (this.mFullSpanItems.get(size).mPosition >= position) {
                        this.mFullSpanItems.remove(size);
                    }
                }
            }
            return invalidateAfter(position);
        }

        int invalidateAfter(int position) {
            if (this.mData == null || position >= this.mData.length) {
                return -1;
            }
            int invalidateFullSpansAfter = invalidateFullSpansAfter(position);
            if (invalidateFullSpansAfter == -1) {
                Arrays.fill(this.mData, position, this.mData.length, -1);
                return this.mData.length;
            }
            Arrays.fill(this.mData, position, invalidateFullSpansAfter + 1, -1);
            return invalidateFullSpansAfter + 1;
        }

        int getSpan(int position) {
            if (this.mData == null || position >= this.mData.length) {
                return -1;
            }
            return this.mData[position];
        }

        void setSpan(int position, Span span) {
            ensureSize(position);
            this.mData[position] = span.mIndex;
        }

        int sizeForPosition(int position) {
            int length = this.mData.length;
            while (length <= position) {
                length *= 2;
            }
            return length;
        }

        void ensureSize(int position) {
            if (this.mData == null) {
                this.mData = new int[Math.max(position, 10) + 1];
                Arrays.fill(this.mData, -1);
            } else if (position >= this.mData.length) {
                int[] iArr = this.mData;
                this.mData = new int[sizeForPosition(position)];
                System.arraycopy(iArr, 0, this.mData, 0, iArr.length);
                Arrays.fill(this.mData, iArr.length, this.mData.length, -1);
            }
        }

        void clear() {
            if (this.mData != null) {
                Arrays.fill(this.mData, -1);
            }
            this.mFullSpanItems = null;
        }

        void offsetForRemoval(int positionStart, int itemCount) {
            if (this.mData != null && positionStart < this.mData.length) {
                ensureSize(positionStart + itemCount);
                System.arraycopy(this.mData, positionStart + itemCount, this.mData, positionStart, (this.mData.length - positionStart) - itemCount);
                Arrays.fill(this.mData, this.mData.length - itemCount, this.mData.length, -1);
                offsetFullSpansForRemoval(positionStart, itemCount);
            }
        }

        private void offsetFullSpansForRemoval(int positionStart, int itemCount) {
            if (this.mFullSpanItems != null) {
                int i = positionStart + itemCount;
                for (int size = this.mFullSpanItems.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.mFullSpanItems.get(size);
                    if (fullSpanItem.mPosition >= positionStart) {
                        if (fullSpanItem.mPosition < i) {
                            this.mFullSpanItems.remove(size);
                        } else {
                            fullSpanItem.mPosition -= itemCount;
                        }
                    }
                }
            }
        }

        void offsetForAddition(int positionStart, int itemCount) {
            if (this.mData != null && positionStart < this.mData.length) {
                ensureSize(positionStart + itemCount);
                System.arraycopy(this.mData, positionStart, this.mData, positionStart + itemCount, (this.mData.length - positionStart) - itemCount);
                Arrays.fill(this.mData, positionStart, positionStart + itemCount, -1);
                offsetFullSpansForAddition(positionStart, itemCount);
            }
        }

        private void offsetFullSpansForAddition(int positionStart, int itemCount) {
            if (this.mFullSpanItems != null) {
                for (int size = this.mFullSpanItems.size() - 1; size >= 0; size--) {
                    FullSpanItem fullSpanItem = this.mFullSpanItems.get(size);
                    if (fullSpanItem.mPosition >= positionStart) {
                        fullSpanItem.mPosition += itemCount;
                    }
                }
            }
        }

        private int invalidateFullSpansAfter(int position) {
            if (this.mFullSpanItems == null) {
                return -1;
            }
            FullSpanItem fullSpanItem = getFullSpanItem(position);
            if (fullSpanItem != null) {
                this.mFullSpanItems.remove(fullSpanItem);
            }
            int size = this.mFullSpanItems.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                }
                if (this.mFullSpanItems.get(i).mPosition >= position) {
                    break;
                }
                i++;
            }
            if (i == -1) {
                return -1;
            }
            FullSpanItem fullSpanItem2 = this.mFullSpanItems.get(i);
            this.mFullSpanItems.remove(i);
            return fullSpanItem2.mPosition;
        }

        public void addFullSpanItem(FullSpanItem fullSpanItem) {
            if (this.mFullSpanItems == null) {
                this.mFullSpanItems = new ArrayList();
            }
            int size = this.mFullSpanItems.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem2 = this.mFullSpanItems.get(i);
                if (fullSpanItem2.mPosition == fullSpanItem.mPosition) {
                    this.mFullSpanItems.remove(i);
                }
                if (fullSpanItem2.mPosition >= fullSpanItem.mPosition) {
                    this.mFullSpanItems.add(i, fullSpanItem);
                    return;
                }
            }
            this.mFullSpanItems.add(fullSpanItem);
        }

        public FullSpanItem getFullSpanItem(int position) {
            if (this.mFullSpanItems == null) {
                return null;
            }
            for (int size = this.mFullSpanItems.size() - 1; size >= 0; size--) {
                FullSpanItem fullSpanItem = this.mFullSpanItems.get(size);
                if (fullSpanItem.mPosition == position) {
                    return fullSpanItem;
                }
            }
            return null;
        }

        public FullSpanItem getFirstFullSpanItemInRange(int minPos, int maxPos, int gapDir, boolean hasUnwantedGapAfter) {
            if (this.mFullSpanItems == null) {
                return null;
            }
            int size = this.mFullSpanItems.size();
            for (int i = 0; i < size; i++) {
                FullSpanItem fullSpanItem = this.mFullSpanItems.get(i);
                if (fullSpanItem.mPosition >= maxPos) {
                    return null;
                }
                if (fullSpanItem.mPosition >= minPos) {
                    if (gapDir == 0 || fullSpanItem.mGapDir == gapDir) {
                        return fullSpanItem;
                    }
                    if (hasUnwantedGapAfter && fullSpanItem.mHasUnwantedGapAfter) {
                        return fullSpanItem;
                    }
                }
            }
            return null;
        }

        static class FullSpanItem implements Parcelable {
            public static final Parcelable.Creator<FullSpanItem> CREATOR = new Parcelable.Creator<FullSpanItem>() { // from class: android.support.v7.widget.StaggeredGridLayoutManager.LazySpanLookup.FullSpanItem.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public FullSpanItem createFromParcel(Parcel in) {
                    return new FullSpanItem(in);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public FullSpanItem[] newArray(int size) {
                    return new FullSpanItem[size];
                }
            };
            int mGapDir;
            int[] mGapPerSpan;
            boolean mHasUnwantedGapAfter;
            int mPosition;

            public FullSpanItem(Parcel in) {
                this.mPosition = in.readInt();
                this.mGapDir = in.readInt();
                this.mHasUnwantedGapAfter = in.readInt() == 1;
                int readInt = in.readInt();
                if (readInt > 0) {
                    this.mGapPerSpan = new int[readInt];
                    in.readIntArray(this.mGapPerSpan);
                }
            }

            public FullSpanItem() {
            }

            int getGapForSpan(int spanIndex) {
                if (this.mGapPerSpan == null) {
                    return 0;
                }
                return this.mGapPerSpan[spanIndex];
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel dest, int flags) {
                dest.writeInt(this.mPosition);
                dest.writeInt(this.mGapDir);
                dest.writeInt(this.mHasUnwantedGapAfter ? 1 : 0);
                if (this.mGapPerSpan != null && this.mGapPerSpan.length > 0) {
                    dest.writeInt(this.mGapPerSpan.length);
                    dest.writeIntArray(this.mGapPerSpan);
                } else {
                    dest.writeInt(0);
                }
            }

            public String toString() {
                return "FullSpanItem{mPosition=" + this.mPosition + ", mGapDir=" + this.mGapDir + ", mHasUnwantedGapAfter=" + this.mHasUnwantedGapAfter + ", mGapPerSpan=" + Arrays.toString(this.mGapPerSpan) + '}';
            }
        }
    }

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v7.widget.StaggeredGridLayoutManager.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel in) {
                return new SavedState(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        boolean mAnchorLayoutFromEnd;
        int mAnchorPosition;
        List<LazySpanLookup.FullSpanItem> mFullSpanItems;
        boolean mLastLayoutRTL;
        boolean mReverseLayout;
        int[] mSpanLookup;
        int mSpanLookupSize;
        int[] mSpanOffsets;
        int mSpanOffsetsSize;
        int mVisibleAnchorPosition;

        public SavedState() {
        }

        SavedState(Parcel in) {
            this.mAnchorPosition = in.readInt();
            this.mVisibleAnchorPosition = in.readInt();
            this.mSpanOffsetsSize = in.readInt();
            if (this.mSpanOffsetsSize > 0) {
                this.mSpanOffsets = new int[this.mSpanOffsetsSize];
                in.readIntArray(this.mSpanOffsets);
            }
            this.mSpanLookupSize = in.readInt();
            if (this.mSpanLookupSize > 0) {
                this.mSpanLookup = new int[this.mSpanLookupSize];
                in.readIntArray(this.mSpanLookup);
            }
            this.mReverseLayout = in.readInt() == 1;
            this.mAnchorLayoutFromEnd = in.readInt() == 1;
            this.mLastLayoutRTL = in.readInt() == 1;
            this.mFullSpanItems = in.readArrayList(LazySpanLookup.FullSpanItem.class.getClassLoader());
        }

        public SavedState(SavedState other) {
            this.mSpanOffsetsSize = other.mSpanOffsetsSize;
            this.mAnchorPosition = other.mAnchorPosition;
            this.mVisibleAnchorPosition = other.mVisibleAnchorPosition;
            this.mSpanOffsets = other.mSpanOffsets;
            this.mSpanLookupSize = other.mSpanLookupSize;
            this.mSpanLookup = other.mSpanLookup;
            this.mReverseLayout = other.mReverseLayout;
            this.mAnchorLayoutFromEnd = other.mAnchorLayoutFromEnd;
            this.mLastLayoutRTL = other.mLastLayoutRTL;
            this.mFullSpanItems = other.mFullSpanItems;
        }

        void invalidateSpanInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mSpanLookupSize = 0;
            this.mSpanLookup = null;
            this.mFullSpanItems = null;
        }

        void invalidateAnchorPositionInfo() {
            this.mSpanOffsets = null;
            this.mSpanOffsetsSize = 0;
            this.mAnchorPosition = -1;
            this.mVisibleAnchorPosition = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(this.mAnchorPosition);
            dest.writeInt(this.mVisibleAnchorPosition);
            dest.writeInt(this.mSpanOffsetsSize);
            if (this.mSpanOffsetsSize > 0) {
                dest.writeIntArray(this.mSpanOffsets);
            }
            dest.writeInt(this.mSpanLookupSize);
            if (this.mSpanLookupSize > 0) {
                dest.writeIntArray(this.mSpanLookup);
            }
            dest.writeInt(this.mReverseLayout ? 1 : 0);
            dest.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
            dest.writeInt(this.mLastLayoutRTL ? 1 : 0);
            dest.writeList(this.mFullSpanItems);
        }
    }

    private class AnchorInfo {
        boolean mInvalidateOffsets;
        boolean mLayoutFromEnd;
        int mOffset;
        int mPosition;

        private AnchorInfo() {
        }

        void reset() {
            this.mPosition = -1;
            this.mOffset = Integer.MIN_VALUE;
            this.mLayoutFromEnd = false;
            this.mInvalidateOffsets = false;
        }

        void assignCoordinateFromPadding() {
            this.mOffset = this.mLayoutFromEnd ? StaggeredGridLayoutManager.this.mPrimaryOrientation.getEndAfterPadding() : StaggeredGridLayoutManager.this.mPrimaryOrientation.getStartAfterPadding();
        }

        void assignCoordinateFromPadding(int addedDistance) {
            if (this.mLayoutFromEnd) {
                this.mOffset = StaggeredGridLayoutManager.this.mPrimaryOrientation.getEndAfterPadding() - addedDistance;
            } else {
                this.mOffset = StaggeredGridLayoutManager.this.mPrimaryOrientation.getStartAfterPadding() + addedDistance;
            }
        }
    }
}
