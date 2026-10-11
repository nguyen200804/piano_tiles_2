package android.support.v7.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.TransportMediator;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class LinearLayoutManager extends RecyclerView.LayoutManager implements ItemTouchHelper.ViewDropHandler {
    private static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    final AnchorInfo mAnchorInfo;
    private boolean mLastStackFromEnd;
    private LayoutState mLayoutState;
    int mOrientation;
    OrientationHelper mOrientationHelper;
    SavedState mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    public LinearLayoutManager(Context context) {
        this(context, 1, false);
    }

    public LinearLayoutManager(Context context, int orientation, boolean reverseLayout) {
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new AnchorInfo();
        setOrientation(orientation);
        setReverseLayout(reverseLayout);
        setAutoMeasureEnabled(true);
    }

    public LinearLayoutManager(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new AnchorInfo();
        RecyclerView.LayoutManager.Properties properties = getProperties(context, attrs, defStyleAttr, defStyleRes);
        setOrientation(properties.orientation);
        setReverseLayout(properties.reverseLayout);
        setStackFromEnd(properties.stackFromEnd);
        setAutoMeasureEnabled(true);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public void setRecycleChildrenOnDetach(boolean recycleChildrenOnDetach) {
        this.mRecycleChildrenOnDetach = recycleChildrenOnDetach;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView view, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(view, recycler);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
        super.onInitializeAccessibilityEvent(event);
        if (getChildCount() > 0) {
            AccessibilityRecordCompat asRecord = AccessibilityEventCompat.asRecord(event);
            asRecord.setFromIndex(findFirstVisibleItemPosition());
            asRecord.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            savedState.mAnchorLayoutFromEnd = z;
            if (z) {
                View childClosestToEnd = getChildClosestToEnd();
                savedState.mAnchorOffset = this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
                savedState.mAnchorPosition = getPosition(childClosestToEnd);
                return savedState;
            }
            View childClosestToStart = getChildClosestToStart();
            savedState.mAnchorPosition = getPosition(childClosestToStart);
            savedState.mAnchorOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart) - this.mOrientationHelper.getStartAfterPadding();
            return savedState;
        }
        savedState.invalidateAnchor();
        return savedState;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable state) {
        if (state instanceof SavedState) {
            this.mPendingSavedState = (SavedState) state;
            requestLayout();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    public void setStackFromEnd(boolean stackFromEnd) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd != stackFromEnd) {
            this.mStackFromEnd = stackFromEnd;
            requestLayout();
        }
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setOrientation(int orientation) {
        if (orientation != 0 && orientation != 1) {
            throw new IllegalArgumentException("invalid orientation:" + orientation);
        }
        assertNotInLayoutOrScroll(null);
        if (orientation != this.mOrientation) {
            this.mOrientation = orientation;
            this.mOrientationHelper = null;
            requestLayout();
        }
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = this.mReverseLayout ? false : true;
        }
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public void setReverseLayout(boolean reverseLayout) {
        assertNotInLayoutOrScroll(null);
        if (reverseLayout != this.mReverseLayout) {
            this.mReverseLayout = reverseLayout;
            requestLayout();
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public View findViewByPosition(int position) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position2 = position - getPosition(getChildAt(0));
        if (position2 >= 0 && position2 < childCount) {
            View childAt = getChildAt(position2);
            if (getPosition(childAt) == position) {
                return childAt;
            }
        }
        return super.findViewByPosition(position);
    }

    protected int getExtraLayoutSpace(RecyclerView.State state) {
        if (state.hasTargetScrollPosition()) {
            return this.mOrientationHelper.getTotalSpace();
        }
        return 0;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int position) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: android.support.v7.widget.LinearLayoutManager.1
            @Override // android.support.v7.widget.LinearSmoothScroller
            public PointF computeScrollVectorForPosition(int targetPosition) {
                return LinearLayoutManager.this.computeScrollVectorForPosition(targetPosition);
            }
        };
        linearSmoothScroller.setTargetPosition(position);
        startSmoothScroll(linearSmoothScroller);
    }

    public PointF computeScrollVectorForPosition(int targetPosition) {
        if (getChildCount() == 0) {
            return null;
        }
        int i = (targetPosition < getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        if (this.mOrientation == 0) {
            return new PointF(i, 0.0f);
        }
        return new PointF(0.0f, i);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        View findViewByPosition;
        int decoratedStart;
        if ((this.mPendingSavedState != null || this.mPendingScrollPosition != -1) && state.getItemCount() == 0) {
            removeAndRecycleAllViews(recycler);
            return;
        }
        if (this.mPendingSavedState != null && this.mPendingSavedState.hasValidAnchor()) {
            this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
        }
        ensureLayoutState();
        this.mLayoutState.mRecycle = false;
        resolveShouldLayoutReverse();
        this.mAnchorInfo.reset();
        this.mAnchorInfo.mLayoutFromEnd = this.mShouldReverseLayout ^ this.mStackFromEnd;
        updateAnchorInfoForLayout(recycler, state, this.mAnchorInfo);
        int extraLayoutSpace = getExtraLayoutSpace(state);
        if (this.mLayoutState.mLastScrollDelta >= 0) {
            i = 0;
        } else {
            i = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        int startAfterPadding = i + this.mOrientationHelper.getStartAfterPadding();
        int endPadding = extraLayoutSpace + this.mOrientationHelper.getEndPadding();
        if (state.isPreLayout() && this.mPendingScrollPosition != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (findViewByPosition = findViewByPosition(this.mPendingScrollPosition)) != null) {
            if (this.mShouldReverseLayout) {
                decoratedStart = (this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(findViewByPosition)) - this.mPendingScrollPositionOffset;
            } else {
                decoratedStart = this.mPendingScrollPositionOffset - (this.mOrientationHelper.getDecoratedStart(findViewByPosition) - this.mOrientationHelper.getStartAfterPadding());
            }
            if (decoratedStart > 0) {
                startAfterPadding += decoratedStart;
            } else {
                endPadding -= decoratedStart;
            }
        }
        if (this.mAnchorInfo.mLayoutFromEnd) {
            i2 = this.mShouldReverseLayout ? 1 : -1;
        } else {
            i2 = this.mShouldReverseLayout ? -1 : 1;
        }
        onAnchorReady(recycler, state, this.mAnchorInfo, i2);
        detachAndScrapAttachedViews(recycler);
        this.mLayoutState.mInfinite = resolveIsInfinite();
        this.mLayoutState.mIsPreLayout = state.isPreLayout();
        if (this.mAnchorInfo.mLayoutFromEnd) {
            updateLayoutStateToFillStart(this.mAnchorInfo);
            this.mLayoutState.mExtra = startAfterPadding;
            fill(recycler, this.mLayoutState, state, false);
            int i6 = this.mLayoutState.mOffset;
            int i7 = this.mLayoutState.mCurrentPosition;
            if (this.mLayoutState.mAvailable > 0) {
                endPadding += this.mLayoutState.mAvailable;
            }
            updateLayoutStateToFillEnd(this.mAnchorInfo);
            this.mLayoutState.mExtra = endPadding;
            this.mLayoutState.mCurrentPosition += this.mLayoutState.mItemDirection;
            fill(recycler, this.mLayoutState, state, false);
            int i8 = this.mLayoutState.mOffset;
            if (this.mLayoutState.mAvailable > 0) {
                int i9 = this.mLayoutState.mAvailable;
                updateLayoutStateToFillStart(i7, i6);
                this.mLayoutState.mExtra = i9;
                fill(recycler, this.mLayoutState, state, false);
                i5 = this.mLayoutState.mOffset;
            } else {
                i5 = i6;
            }
            i4 = i5;
            i3 = i8;
        } else {
            updateLayoutStateToFillEnd(this.mAnchorInfo);
            this.mLayoutState.mExtra = endPadding;
            fill(recycler, this.mLayoutState, state, false);
            i3 = this.mLayoutState.mOffset;
            int i10 = this.mLayoutState.mCurrentPosition;
            if (this.mLayoutState.mAvailable > 0) {
                startAfterPadding += this.mLayoutState.mAvailable;
            }
            updateLayoutStateToFillStart(this.mAnchorInfo);
            this.mLayoutState.mExtra = startAfterPadding;
            this.mLayoutState.mCurrentPosition += this.mLayoutState.mItemDirection;
            fill(recycler, this.mLayoutState, state, false);
            i4 = this.mLayoutState.mOffset;
            if (this.mLayoutState.mAvailable > 0) {
                int i11 = this.mLayoutState.mAvailable;
                updateLayoutStateToFillEnd(i10, i3);
                this.mLayoutState.mExtra = i11;
                fill(recycler, this.mLayoutState, state, false);
                i3 = this.mLayoutState.mOffset;
            }
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int fixLayoutEndGap = fixLayoutEndGap(i3, recycler, state, true);
                int i12 = i4 + fixLayoutEndGap;
                int fixLayoutStartGap = fixLayoutStartGap(i12, recycler, state, false);
                i4 = i12 + fixLayoutStartGap;
                i3 = i3 + fixLayoutEndGap + fixLayoutStartGap;
            } else {
                int fixLayoutStartGap2 = fixLayoutStartGap(i4, recycler, state, true);
                int i13 = i3 + fixLayoutStartGap2;
                int fixLayoutEndGap2 = fixLayoutEndGap(i13, recycler, state, false);
                i4 = i4 + fixLayoutStartGap2 + fixLayoutEndGap2;
                i3 = i13 + fixLayoutEndGap2;
            }
        }
        layoutForPredictiveAnimations(recycler, state, i4, i3);
        if (!state.isPreLayout()) {
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
            this.mOrientationHelper.onLayoutComplete();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
        this.mPendingSavedState = null;
    }

    void onAnchorReady(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo, int firstLayoutItemDirection) {
    }

    private void layoutForPredictiveAnimations(RecyclerView.Recycler recycler, RecyclerView.State state, int startOffset, int endOffset) {
        int decoratedMeasurement;
        int i;
        if (state.willRunPredictiveAnimations() && getChildCount() != 0 && !state.isPreLayout() && supportsPredictiveItemAnimations()) {
            int i2 = 0;
            int i3 = 0;
            List<RecyclerView.ViewHolder> scrapList = recycler.getScrapList();
            int size = scrapList.size();
            int position = getPosition(getChildAt(0));
            int i4 = 0;
            while (i4 < size) {
                RecyclerView.ViewHolder viewHolder = scrapList.get(i4);
                if (viewHolder.isRemoved()) {
                    decoratedMeasurement = i3;
                    i = i2;
                } else {
                    if (((viewHolder.getLayoutPosition() < position) != this.mShouldReverseLayout ? (char) 65535 : (char) 1) == 65535) {
                        i = this.mOrientationHelper.getDecoratedMeasurement(viewHolder.itemView) + i2;
                        decoratedMeasurement = i3;
                    } else {
                        decoratedMeasurement = this.mOrientationHelper.getDecoratedMeasurement(viewHolder.itemView) + i3;
                        i = i2;
                    }
                }
                i4++;
                i2 = i;
                i3 = decoratedMeasurement;
            }
            this.mLayoutState.mScrapList = scrapList;
            if (i2 > 0) {
                updateLayoutStateToFillStart(getPosition(getChildClosestToStart()), startOffset);
                this.mLayoutState.mExtra = i2;
                this.mLayoutState.mAvailable = 0;
                this.mLayoutState.assignPositionFromScrapList();
                fill(recycler, this.mLayoutState, state, false);
            }
            if (i3 > 0) {
                updateLayoutStateToFillEnd(getPosition(getChildClosestToEnd()), endOffset);
                this.mLayoutState.mExtra = i3;
                this.mLayoutState.mAvailable = 0;
                this.mLayoutState.assignPositionFromScrapList();
                fill(recycler, this.mLayoutState, state, false);
            }
            this.mLayoutState.mScrapList = null;
        }
    }

    private void updateAnchorInfoForLayout(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo) {
        if (!updateAnchorFromPendingData(state, anchorInfo) && !updateAnchorFromChildren(recycler, state, anchorInfo)) {
            anchorInfo.assignCoordinateFromPadding();
            anchorInfo.mPosition = this.mStackFromEnd ? state.getItemCount() - 1 : 0;
        }
    }

    private boolean updateAnchorFromChildren(RecyclerView.Recycler recycler, RecyclerView.State state, AnchorInfo anchorInfo) {
        if (getChildCount() == 0) {
            return false;
        }
        View focusedChild = getFocusedChild();
        if (focusedChild != null && anchorInfo.isViewValidAsAnchor(focusedChild, state)) {
            anchorInfo.assignFromViewAndKeepVisibleRect(focusedChild);
            return true;
        }
        if (this.mLastStackFromEnd != this.mStackFromEnd) {
            return false;
        }
        View findReferenceChildClosestToEnd = anchorInfo.mLayoutFromEnd ? findReferenceChildClosestToEnd(recycler, state) : findReferenceChildClosestToStart(recycler, state);
        if (findReferenceChildClosestToEnd == null) {
            return false;
        }
        anchorInfo.assignFromView(findReferenceChildClosestToEnd);
        if (!state.isPreLayout() && supportsPredictiveItemAnimations()) {
            if (this.mOrientationHelper.getDecoratedStart(findReferenceChildClosestToEnd) >= this.mOrientationHelper.getEndAfterPadding() || this.mOrientationHelper.getDecoratedEnd(findReferenceChildClosestToEnd) < this.mOrientationHelper.getStartAfterPadding()) {
                anchorInfo.mCoordinate = anchorInfo.mLayoutFromEnd ? this.mOrientationHelper.getEndAfterPadding() : this.mOrientationHelper.getStartAfterPadding();
            }
        }
        return true;
    }

    private boolean updateAnchorFromPendingData(RecyclerView.State state, AnchorInfo anchorInfo) {
        if (state.isPreLayout() || this.mPendingScrollPosition == -1) {
            return false;
        }
        if (this.mPendingScrollPosition < 0 || this.mPendingScrollPosition >= state.getItemCount()) {
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
            return false;
        }
        anchorInfo.mPosition = this.mPendingScrollPosition;
        if (this.mPendingSavedState != null && this.mPendingSavedState.hasValidAnchor()) {
            anchorInfo.mLayoutFromEnd = this.mPendingSavedState.mAnchorLayoutFromEnd;
            if (anchorInfo.mLayoutFromEnd) {
                anchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - this.mPendingSavedState.mAnchorOffset;
                return true;
            }
            anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding() + this.mPendingSavedState.mAnchorOffset;
            return true;
        }
        if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
            View findViewByPosition = findViewByPosition(this.mPendingScrollPosition);
            if (findViewByPosition != null) {
                if (this.mOrientationHelper.getDecoratedMeasurement(findViewByPosition) > this.mOrientationHelper.getTotalSpace()) {
                    anchorInfo.assignCoordinateFromPadding();
                    return true;
                }
                if (this.mOrientationHelper.getDecoratedStart(findViewByPosition) - this.mOrientationHelper.getStartAfterPadding() < 0) {
                    anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding();
                    anchorInfo.mLayoutFromEnd = false;
                    return true;
                }
                if (this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(findViewByPosition) < 0) {
                    anchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding();
                    anchorInfo.mLayoutFromEnd = true;
                    return true;
                }
                anchorInfo.mCoordinate = anchorInfo.mLayoutFromEnd ? this.mOrientationHelper.getDecoratedEnd(findViewByPosition) + this.mOrientationHelper.getTotalSpaceChange() : this.mOrientationHelper.getDecoratedStart(findViewByPosition);
                return true;
            }
            if (getChildCount() > 0) {
                anchorInfo.mLayoutFromEnd = (this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout;
            }
            anchorInfo.assignCoordinateFromPadding();
            return true;
        }
        anchorInfo.mLayoutFromEnd = this.mShouldReverseLayout;
        if (this.mShouldReverseLayout) {
            anchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding() - this.mPendingScrollPositionOffset;
            return true;
        }
        anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding() + this.mPendingScrollPositionOffset;
        return true;
    }

    private int fixLayoutEndGap(int endOffset, RecyclerView.Recycler recycler, RecyclerView.State state, boolean canOffsetChildren) {
        int endAfterPadding;
        int endAfterPadding2 = this.mOrientationHelper.getEndAfterPadding() - endOffset;
        if (endAfterPadding2 > 0) {
            int i = -scrollBy(-endAfterPadding2, recycler, state);
            int endOffset2 = endOffset + i;
            if (canOffsetChildren && (endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - endOffset2) > 0) {
                this.mOrientationHelper.offsetChildren(endAfterPadding);
                return i + endAfterPadding;
            }
            return i;
        }
        return 0;
    }

    private int fixLayoutStartGap(int startOffset, RecyclerView.Recycler recycler, RecyclerView.State state, boolean canOffsetChildren) {
        int startAfterPadding;
        int startAfterPadding2 = startOffset - this.mOrientationHelper.getStartAfterPadding();
        if (startAfterPadding2 > 0) {
            int i = -scrollBy(startAfterPadding2, recycler, state);
            int startOffset2 = startOffset + i;
            if (canOffsetChildren && (startAfterPadding = startOffset2 - this.mOrientationHelper.getStartAfterPadding()) > 0) {
                this.mOrientationHelper.offsetChildren(-startAfterPadding);
                return i - startAfterPadding;
            }
            return i;
        }
        return 0;
    }

    private void updateLayoutStateToFillEnd(AnchorInfo anchorInfo) {
        updateLayoutStateToFillEnd(anchorInfo.mPosition, anchorInfo.mCoordinate);
    }

    private void updateLayoutStateToFillEnd(int itemPosition, int offset) {
        this.mLayoutState.mAvailable = this.mOrientationHelper.getEndAfterPadding() - offset;
        this.mLayoutState.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
        this.mLayoutState.mCurrentPosition = itemPosition;
        this.mLayoutState.mLayoutDirection = 1;
        this.mLayoutState.mOffset = offset;
        this.mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
    }

    private void updateLayoutStateToFillStart(AnchorInfo anchorInfo) {
        updateLayoutStateToFillStart(anchorInfo.mPosition, anchorInfo.mCoordinate);
    }

    private void updateLayoutStateToFillStart(int itemPosition, int offset) {
        this.mLayoutState.mAvailable = offset - this.mOrientationHelper.getStartAfterPadding();
        this.mLayoutState.mCurrentPosition = itemPosition;
        this.mLayoutState.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
        this.mLayoutState.mLayoutDirection = -1;
        this.mLayoutState.mOffset = offset;
        this.mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
    }

    protected boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
        if (this.mOrientationHelper == null) {
            this.mOrientationHelper = OrientationHelper.createOrientationHelper(this, this.mOrientation);
        }
    }

    LayoutState createLayoutState() {
        return new LayoutState();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int position) {
        this.mPendingScrollPosition = position;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.invalidateAnchor();
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int position, int offset) {
        this.mPendingScrollPosition = position;
        this.mPendingScrollPositionOffset = offset;
        if (this.mPendingSavedState != null) {
            this.mPendingSavedState.invalidateAnchor();
        }
        requestLayout();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int dx, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(dx, recycler, state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int dy, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(dy, recycler, state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        return computeScrollRange(state);
    }

    private int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.computeScrollOffset(state, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(this.mSmoothScrollbarEnabled ? false : true, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    private int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.computeScrollExtent(state, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(this.mSmoothScrollbarEnabled ? false : true, true), this, this.mSmoothScrollbarEnabled);
    }

    private int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return ScrollbarHelper.computeScrollRange(state, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(this.mSmoothScrollbarEnabled ? false : true, true), this, this.mSmoothScrollbarEnabled);
    }

    public void setSmoothScrollbarEnabled(boolean enabled) {
        this.mSmoothScrollbarEnabled = enabled;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    private void updateLayoutState(int layoutDirection, int requiredSpace, boolean canUseExistingSpace, RecyclerView.State state) {
        int startAfterPadding;
        this.mLayoutState.mInfinite = resolveIsInfinite();
        this.mLayoutState.mExtra = getExtraLayoutSpace(state);
        this.mLayoutState.mLayoutDirection = layoutDirection;
        if (layoutDirection == 1) {
            this.mLayoutState.mExtra += this.mOrientationHelper.getEndPadding();
            View childClosestToEnd = getChildClosestToEnd();
            this.mLayoutState.mItemDirection = this.mShouldReverseLayout ? -1 : 1;
            this.mLayoutState.mCurrentPosition = getPosition(childClosestToEnd) + this.mLayoutState.mItemDirection;
            this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd);
            startAfterPadding = this.mOrientationHelper.getDecoratedEnd(childClosestToEnd) - this.mOrientationHelper.getEndAfterPadding();
        } else {
            View childClosestToStart = getChildClosestToStart();
            this.mLayoutState.mExtra += this.mOrientationHelper.getStartAfterPadding();
            this.mLayoutState.mItemDirection = this.mShouldReverseLayout ? 1 : -1;
            this.mLayoutState.mCurrentPosition = getPosition(childClosestToStart) + this.mLayoutState.mItemDirection;
            this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart);
            startAfterPadding = (-this.mOrientationHelper.getDecoratedStart(childClosestToStart)) + this.mOrientationHelper.getStartAfterPadding();
        }
        this.mLayoutState.mAvailable = requiredSpace;
        if (canUseExistingSpace) {
            this.mLayoutState.mAvailable -= startAfterPadding;
        }
        this.mLayoutState.mScrollingOffset = startAfterPadding;
    }

    boolean resolveIsInfinite() {
        return this.mOrientationHelper.getMode() == 0 && this.mOrientationHelper.getEnd() == 0;
    }

    int scrollBy(int dy, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (getChildCount() == 0 || dy == 0) {
            return 0;
        }
        this.mLayoutState.mRecycle = true;
        ensureLayoutState();
        int i = dy > 0 ? 1 : -1;
        int abs = Math.abs(dy);
        updateLayoutState(i, abs, true, state);
        int fill = this.mLayoutState.mScrollingOffset + fill(recycler, this.mLayoutState, state, false);
        if (fill < 0) {
            return 0;
        }
        if (abs > fill) {
            dy = i * fill;
        }
        this.mOrientationHelper.offsetChildren(-dy);
        this.mLayoutState.mLastScrollDelta = dy;
        return dy;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void assertNotInLayoutOrScroll(String message) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(message);
        }
    }

    private void recycleChildren(RecyclerView.Recycler recycler, int startIndex, int endIndex) {
        if (startIndex != endIndex) {
            if (endIndex > startIndex) {
                for (int i = endIndex - 1; i >= startIndex; i--) {
                    removeAndRecycleViewAt(i, recycler);
                }
                return;
            }
            while (startIndex > endIndex) {
                removeAndRecycleViewAt(startIndex, recycler);
                startIndex--;
            }
        }
    }

    private void recycleViewsFromStart(RecyclerView.Recycler recycler, int dt) {
        if (dt >= 0) {
            int childCount = getChildCount();
            if (this.mShouldReverseLayout) {
                for (int i = childCount - 1; i >= 0; i--) {
                    if (this.mOrientationHelper.getDecoratedEnd(getChildAt(i)) > dt) {
                        recycleChildren(recycler, childCount - 1, i);
                        return;
                    }
                }
                return;
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                if (this.mOrientationHelper.getDecoratedEnd(getChildAt(i2)) > dt) {
                    recycleChildren(recycler, 0, i2);
                    return;
                }
            }
        }
    }

    private void recycleViewsFromEnd(RecyclerView.Recycler recycler, int dt) {
        int childCount = getChildCount();
        if (dt >= 0) {
            int end = this.mOrientationHelper.getEnd() - dt;
            if (this.mShouldReverseLayout) {
                for (int i = 0; i < childCount; i++) {
                    if (this.mOrientationHelper.getDecoratedStart(getChildAt(i)) < end) {
                        recycleChildren(recycler, 0, i);
                        return;
                    }
                }
                return;
            }
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                if (this.mOrientationHelper.getDecoratedStart(getChildAt(i2)) < end) {
                    recycleChildren(recycler, childCount - 1, i2);
                    return;
                }
            }
        }
    }

    private void recycleByLayoutState(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (layoutState.mRecycle && !layoutState.mInfinite) {
            if (layoutState.mLayoutDirection == -1) {
                recycleViewsFromEnd(recycler, layoutState.mScrollingOffset);
            } else {
                recycleViewsFromStart(recycler, layoutState.mScrollingOffset);
            }
        }
    }

    int fill(RecyclerView.Recycler recycler, LayoutState layoutState, RecyclerView.State state, boolean stopOnFocusable) {
        int i = layoutState.mAvailable;
        if (layoutState.mScrollingOffset != Integer.MIN_VALUE) {
            if (layoutState.mAvailable < 0) {
                layoutState.mScrollingOffset += layoutState.mAvailable;
            }
            recycleByLayoutState(recycler, layoutState);
        }
        int i2 = layoutState.mAvailable + layoutState.mExtra;
        LayoutChunkResult layoutChunkResult = new LayoutChunkResult();
        while (true) {
            if ((!layoutState.mInfinite && i2 <= 0) || !layoutState.hasMore(state)) {
                break;
            }
            layoutChunkResult.resetInternal();
            layoutChunk(recycler, state, layoutState, layoutChunkResult);
            if (!layoutChunkResult.mFinished) {
                layoutState.mOffset += layoutChunkResult.mConsumed * layoutState.mLayoutDirection;
                if (!layoutChunkResult.mIgnoreConsumed || this.mLayoutState.mScrapList != null || !state.isPreLayout()) {
                    layoutState.mAvailable -= layoutChunkResult.mConsumed;
                    i2 -= layoutChunkResult.mConsumed;
                }
                if (layoutState.mScrollingOffset != Integer.MIN_VALUE) {
                    layoutState.mScrollingOffset += layoutChunkResult.mConsumed;
                    if (layoutState.mAvailable < 0) {
                        layoutState.mScrollingOffset += layoutState.mAvailable;
                    }
                    recycleByLayoutState(recycler, layoutState);
                }
                if (stopOnFocusable && layoutChunkResult.mFocusable) {
                    break;
                }
            } else {
                break;
            }
        }
        return i - layoutState.mAvailable;
    }

    void layoutChunk(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutState layoutState, LayoutChunkResult result) {
        int paddingTop;
        int decoratedMeasurementInOther;
        int i;
        int i2;
        int decoratedMeasurementInOther2;
        View next = layoutState.next(recycler);
        if (next == null) {
            result.mFinished = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) next.getLayoutParams();
        if (layoutState.mScrapList == null) {
            if (this.mShouldReverseLayout == (layoutState.mLayoutDirection == -1)) {
                addView(next);
            } else {
                addView(next, 0);
            }
        } else {
            if (this.mShouldReverseLayout == (layoutState.mLayoutDirection == -1)) {
                addDisappearingView(next);
            } else {
                addDisappearingView(next, 0);
            }
        }
        measureChildWithMargins(next, 0, 0);
        result.mConsumed = this.mOrientationHelper.getDecoratedMeasurement(next);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                decoratedMeasurementInOther2 = getWidth() - getPaddingRight();
                i = decoratedMeasurementInOther2 - this.mOrientationHelper.getDecoratedMeasurementInOther(next);
            } else {
                i = getPaddingLeft();
                decoratedMeasurementInOther2 = this.mOrientationHelper.getDecoratedMeasurementInOther(next) + i;
            }
            if (layoutState.mLayoutDirection == -1) {
                int i3 = layoutState.mOffset;
                paddingTop = layoutState.mOffset - result.mConsumed;
                i2 = decoratedMeasurementInOther2;
                decoratedMeasurementInOther = i3;
            } else {
                paddingTop = layoutState.mOffset;
                i2 = decoratedMeasurementInOther2;
                decoratedMeasurementInOther = layoutState.mOffset + result.mConsumed;
            }
        } else {
            paddingTop = getPaddingTop();
            decoratedMeasurementInOther = this.mOrientationHelper.getDecoratedMeasurementInOther(next) + paddingTop;
            if (layoutState.mLayoutDirection == -1) {
                int i4 = layoutState.mOffset;
                i = layoutState.mOffset - result.mConsumed;
                i2 = i4;
            } else {
                i = layoutState.mOffset;
                i2 = layoutState.mOffset + result.mConsumed;
            }
        }
        layoutDecorated(next, i + layoutParams.leftMargin, paddingTop + layoutParams.topMargin, i2 - layoutParams.rightMargin, decoratedMeasurementInOther - layoutParams.bottomMargin);
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            result.mIgnoreConsumed = true;
        }
        result.mFocusable = next.isFocusable();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    int convertFocusDirectionToLayoutDirection(int focusDirection) {
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

    private View getChildClosestToStart() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    private View getChildClosestToEnd() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    private View findFirstVisibleChildClosestToStart(boolean completelyVisible, boolean acceptPartiallyVisible) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, completelyVisible, acceptPartiallyVisible) : findOneVisibleChild(0, getChildCount(), completelyVisible, acceptPartiallyVisible);
    }

    private View findFirstVisibleChildClosestToEnd(boolean completelyVisible, boolean acceptPartiallyVisible) {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), completelyVisible, acceptPartiallyVisible) : findOneVisibleChild(getChildCount() - 1, -1, completelyVisible, acceptPartiallyVisible);
    }

    private View findReferenceChildClosestToEnd(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.mShouldReverseLayout ? findFirstReferenceChild(recycler, state) : findLastReferenceChild(recycler, state);
    }

    private View findReferenceChildClosestToStart(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return this.mShouldReverseLayout ? findLastReferenceChild(recycler, state) : findFirstReferenceChild(recycler, state);
    }

    private View findFirstReferenceChild(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return findReferenceChild(recycler, state, 0, getChildCount(), state.getItemCount());
    }

    private View findLastReferenceChild(RecyclerView.Recycler recycler, RecyclerView.State state) {
        return findReferenceChild(recycler, state, getChildCount() - 1, -1, state.getItemCount());
    }

    View findReferenceChild(RecyclerView.Recycler recycler, RecyclerView.State state, int start, int end, int itemCount) {
        View view;
        View view2 = null;
        ensureLayoutState();
        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
        int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
        int i = end > start ? 1 : -1;
        View view3 = null;
        while (start != end) {
            View childAt = getChildAt(start);
            int position = getPosition(childAt);
            if (position >= 0 && position < itemCount) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view3 == null) {
                        view = view2;
                    }
                } else {
                    if (this.mOrientationHelper.getDecoratedStart(childAt) < endAfterPadding && this.mOrientationHelper.getDecoratedEnd(childAt) >= startAfterPadding) {
                        return childAt;
                    }
                    if (view2 == null) {
                        view = childAt;
                        childAt = view3;
                    }
                }
                start += i;
                view2 = view;
                view3 = childAt;
            }
            view = view2;
            childAt = view3;
            start += i;
            view2 = view;
            view3 = childAt;
        }
        if (view2 == null) {
            view2 = view3;
        }
        return view2;
    }

    public int findFirstVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, false);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public int findLastVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, false);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    View findOneVisibleChild(int fromIndex, int toIndex, boolean completelyVisible, boolean acceptPartiallyVisible) {
        ensureLayoutState();
        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
        int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
        int i = toIndex > fromIndex ? 1 : -1;
        View view = null;
        while (fromIndex != toIndex) {
            View childAt = getChildAt(fromIndex);
            int decoratedStart = this.mOrientationHelper.getDecoratedStart(childAt);
            int decoratedEnd = this.mOrientationHelper.getDecoratedEnd(childAt);
            if (decoratedStart < endAfterPadding && decoratedEnd > startAfterPadding) {
                if (completelyVisible) {
                    if (decoratedStart < startAfterPadding || decoratedEnd > endAfterPadding) {
                        if (acceptPartiallyVisible && view == null) {
                            fromIndex += i;
                            view = childAt;
                        }
                    } else {
                        return childAt;
                    }
                } else {
                    return childAt;
                }
            }
            childAt = view;
            fromIndex += i;
            view = childAt;
        }
        return view;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public View onFocusSearchFailed(View focused, int focusDirection, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int convertFocusDirectionToLayoutDirection;
        View findReferenceChildClosestToEnd;
        View childClosestToEnd;
        resolveShouldLayoutReverse();
        if (getChildCount() == 0 || (convertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(focusDirection)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        if (convertFocusDirectionToLayoutDirection == -1) {
            findReferenceChildClosestToEnd = findReferenceChildClosestToStart(recycler, state);
        } else {
            findReferenceChildClosestToEnd = findReferenceChildClosestToEnd(recycler, state);
        }
        if (findReferenceChildClosestToEnd == null) {
            return null;
        }
        ensureLayoutState();
        updateLayoutState(convertFocusDirectionToLayoutDirection, (int) (MAX_SCROLL_FACTOR * this.mOrientationHelper.getTotalSpace()), false, state);
        this.mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
        this.mLayoutState.mRecycle = false;
        fill(recycler, this.mLayoutState, state, true);
        if (convertFocusDirectionToLayoutDirection == -1) {
            childClosestToEnd = getChildClosestToStart();
        } else {
            childClosestToEnd = getChildClosestToEnd();
        }
        if (childClosestToEnd == findReferenceChildClosestToEnd || !childClosestToEnd.isFocusable()) {
            return null;
        }
        return childClosestToEnd;
    }

    private void logChildren() {
        Log.d(TAG, "internal representation of views on the screen");
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            Log.d(TAG, "item " + getPosition(childAt) + ", coord:" + this.mOrientationHelper.getDecoratedStart(childAt));
        }
        Log.d(TAG, "==============");
    }

    void validateChildOrder() {
        Log.d(TAG, "validating child count " + getChildCount());
        if (getChildCount() >= 1) {
            int position = getPosition(getChildAt(0));
            int decoratedStart = this.mOrientationHelper.getDecoratedStart(getChildAt(0));
            if (this.mShouldReverseLayout) {
                for (int i = 1; i < getChildCount(); i++) {
                    View childAt = getChildAt(i);
                    int position2 = getPosition(childAt);
                    int decoratedStart2 = this.mOrientationHelper.getDecoratedStart(childAt);
                    if (position2 < position) {
                        logChildren();
                        throw new RuntimeException("detected invalid position. loc invalid? " + (decoratedStart2 < decoratedStart));
                    }
                    if (decoratedStart2 > decoratedStart) {
                        logChildren();
                        throw new RuntimeException("detected invalid location");
                    }
                }
                return;
            }
            for (int i2 = 1; i2 < getChildCount(); i2++) {
                View childAt2 = getChildAt(i2);
                int position3 = getPosition(childAt2);
                int decoratedStart3 = this.mOrientationHelper.getDecoratedStart(childAt2);
                if (position3 < position) {
                    logChildren();
                    throw new RuntimeException("detected invalid position. loc invalid? " + (decoratedStart3 < decoratedStart));
                }
                if (decoratedStart3 < decoratedStart) {
                    logChildren();
                    throw new RuntimeException("detected invalid location");
                }
            }
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    @Override // android.support.v7.widget.helper.ItemTouchHelper.ViewDropHandler
    public void prepareForDrop(View view, View target, int x, int y) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        resolveShouldLayoutReverse();
        int position = getPosition(view);
        int position2 = getPosition(target);
        char c = position < position2 ? (char) 1 : (char) 65535;
        if (this.mShouldReverseLayout) {
            if (c == 1) {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.getEndAfterPadding() - (this.mOrientationHelper.getDecoratedStart(target) + this.mOrientationHelper.getDecoratedMeasurement(view)));
                return;
            } else {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(target));
                return;
            }
        }
        if (c == 65535) {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.getDecoratedStart(target));
        } else {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.getDecoratedEnd(target) - this.mOrientationHelper.getDecoratedMeasurement(view));
        }
    }

    static class LayoutState {
        static final int INVALID_LAYOUT = Integer.MIN_VALUE;
        static final int ITEM_DIRECTION_HEAD = -1;
        static final int ITEM_DIRECTION_TAIL = 1;
        static final int LAYOUT_END = 1;
        static final int LAYOUT_START = -1;
        static final int SCOLLING_OFFSET_NaN = Integer.MIN_VALUE;
        static final String TAG = "LinearLayoutManager#LayoutState";
        int mAvailable;
        int mCurrentPosition;
        boolean mInfinite;
        int mItemDirection;
        int mLastScrollDelta;
        int mLayoutDirection;
        int mOffset;
        int mScrollingOffset;
        boolean mRecycle = true;
        int mExtra = 0;
        boolean mIsPreLayout = false;
        List<RecyclerView.ViewHolder> mScrapList = null;

        LayoutState() {
        }

        boolean hasMore(RecyclerView.State state) {
            return this.mCurrentPosition >= 0 && this.mCurrentPosition < state.getItemCount();
        }

        View next(RecyclerView.Recycler recycler) {
            if (this.mScrapList != null) {
                return nextViewFromScrapList();
            }
            View viewForPosition = recycler.getViewForPosition(this.mCurrentPosition);
            this.mCurrentPosition += this.mItemDirection;
            return viewForPosition;
        }

        private View nextViewFromScrapList() {
            int size = this.mScrapList.size();
            for (int i = 0; i < size; i++) {
                View view = this.mScrapList.get(i).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (!layoutParams.isItemRemoved() && this.mCurrentPosition == layoutParams.getViewLayoutPosition()) {
                    assignPositionFromScrapList(view);
                    return view;
                }
            }
            return null;
        }

        public void assignPositionFromScrapList() {
            assignPositionFromScrapList(null);
        }

        public void assignPositionFromScrapList(View ignore) {
            View nextViewInLimitedList = nextViewInLimitedList(ignore);
            if (nextViewInLimitedList == null) {
                this.mCurrentPosition = -1;
            } else {
                this.mCurrentPosition = ((RecyclerView.LayoutParams) nextViewInLimitedList.getLayoutParams()).getViewLayoutPosition();
            }
        }

        public View nextViewInLimitedList(View ignore) {
            int i;
            View view;
            int size = this.mScrapList.size();
            View view2 = null;
            int i2 = Integer.MAX_VALUE;
            int i3 = 0;
            while (i3 < size) {
                View view3 = this.mScrapList.get(i3).itemView;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view3.getLayoutParams();
                if (view3 != ignore) {
                    if (layoutParams.isItemRemoved()) {
                        i = i2;
                        view = view2;
                    } else {
                        i = (layoutParams.getViewLayoutPosition() - this.mCurrentPosition) * this.mItemDirection;
                        if (i < 0) {
                            i = i2;
                            view = view2;
                        } else if (i < i2) {
                            if (i == 0) {
                                return view3;
                            }
                            view = view3;
                        }
                    }
                    i3++;
                    view2 = view;
                    i2 = i;
                }
                i = i2;
                view = view2;
                i3++;
                view2 = view;
                i2 = i;
            }
            return view2;
        }

        void log() {
            Log.d(TAG, "avail:" + this.mAvailable + ", ind:" + this.mCurrentPosition + ", dir:" + this.mItemDirection + ", offset:" + this.mOffset + ", layoutDir:" + this.mLayoutDirection);
        }
    }

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v7.widget.LinearLayoutManager.SavedState.1
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
        int mAnchorOffset;
        int mAnchorPosition;

        public SavedState() {
        }

        SavedState(Parcel in) {
            this.mAnchorPosition = in.readInt();
            this.mAnchorOffset = in.readInt();
            this.mAnchorLayoutFromEnd = in.readInt() == 1;
        }

        public SavedState(SavedState other) {
            this.mAnchorPosition = other.mAnchorPosition;
            this.mAnchorOffset = other.mAnchorOffset;
            this.mAnchorLayoutFromEnd = other.mAnchorLayoutFromEnd;
        }

        boolean hasValidAnchor() {
            return this.mAnchorPosition >= 0;
        }

        void invalidateAnchor() {
            this.mAnchorPosition = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeInt(this.mAnchorPosition);
            dest.writeInt(this.mAnchorOffset);
            dest.writeInt(this.mAnchorLayoutFromEnd ? 1 : 0);
        }
    }

    class AnchorInfo {
        int mCoordinate;
        boolean mLayoutFromEnd;
        int mPosition;

        AnchorInfo() {
        }

        void reset() {
            this.mPosition = -1;
            this.mCoordinate = Integer.MIN_VALUE;
            this.mLayoutFromEnd = false;
        }

        void assignCoordinateFromPadding() {
            this.mCoordinate = this.mLayoutFromEnd ? LinearLayoutManager.this.mOrientationHelper.getEndAfterPadding() : LinearLayoutManager.this.mOrientationHelper.getStartAfterPadding();
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.mPosition + ", mCoordinate=" + this.mCoordinate + ", mLayoutFromEnd=" + this.mLayoutFromEnd + '}';
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isViewValidAsAnchor(View child, RecyclerView.State state) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) child.getLayoutParams();
            return !layoutParams.isItemRemoved() && layoutParams.getViewLayoutPosition() >= 0 && layoutParams.getViewLayoutPosition() < state.getItemCount();
        }

        public void assignFromViewAndKeepVisibleRect(View child) {
            int totalSpaceChange = LinearLayoutManager.this.mOrientationHelper.getTotalSpaceChange();
            if (totalSpaceChange >= 0) {
                assignFromView(child);
                return;
            }
            this.mPosition = LinearLayoutManager.this.getPosition(child);
            if (this.mLayoutFromEnd) {
                int endAfterPadding = (LinearLayoutManager.this.mOrientationHelper.getEndAfterPadding() - totalSpaceChange) - LinearLayoutManager.this.mOrientationHelper.getDecoratedEnd(child);
                this.mCoordinate = LinearLayoutManager.this.mOrientationHelper.getEndAfterPadding() - endAfterPadding;
                if (endAfterPadding > 0) {
                    int decoratedMeasurement = this.mCoordinate - LinearLayoutManager.this.mOrientationHelper.getDecoratedMeasurement(child);
                    int startAfterPadding = LinearLayoutManager.this.mOrientationHelper.getStartAfterPadding();
                    int min = decoratedMeasurement - (startAfterPadding + Math.min(LinearLayoutManager.this.mOrientationHelper.getDecoratedStart(child) - startAfterPadding, 0));
                    if (min < 0) {
                        this.mCoordinate = Math.min(endAfterPadding, -min) + this.mCoordinate;
                        return;
                    }
                    return;
                }
                return;
            }
            int decoratedStart = LinearLayoutManager.this.mOrientationHelper.getDecoratedStart(child);
            int startAfterPadding2 = decoratedStart - LinearLayoutManager.this.mOrientationHelper.getStartAfterPadding();
            this.mCoordinate = decoratedStart;
            if (startAfterPadding2 > 0) {
                int endAfterPadding2 = (LinearLayoutManager.this.mOrientationHelper.getEndAfterPadding() - Math.min(0, (LinearLayoutManager.this.mOrientationHelper.getEndAfterPadding() - totalSpaceChange) - LinearLayoutManager.this.mOrientationHelper.getDecoratedEnd(child))) - (decoratedStart + LinearLayoutManager.this.mOrientationHelper.getDecoratedMeasurement(child));
                if (endAfterPadding2 < 0) {
                    this.mCoordinate -= Math.min(startAfterPadding2, -endAfterPadding2);
                }
            }
        }

        public void assignFromView(View child) {
            if (this.mLayoutFromEnd) {
                this.mCoordinate = LinearLayoutManager.this.mOrientationHelper.getDecoratedEnd(child) + LinearLayoutManager.this.mOrientationHelper.getTotalSpaceChange();
            } else {
                this.mCoordinate = LinearLayoutManager.this.mOrientationHelper.getDecoratedStart(child);
            }
            this.mPosition = LinearLayoutManager.this.getPosition(child);
        }
    }

    protected static class LayoutChunkResult {
        public int mConsumed;
        public boolean mFinished;
        public boolean mFocusable;
        public boolean mIgnoreConsumed;

        protected LayoutChunkResult() {
        }

        void resetInternal() {
            this.mConsumed = 0;
            this.mFinished = false;
            this.mIgnoreConsumed = false;
            this.mFocusable = false;
        }
    }
}
