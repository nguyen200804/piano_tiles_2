package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    private static final boolean DEBUG = false;
    public static final int DEFAULT_SPAN_COUNT = -1;
    private static final String TAG = "GridLayoutManager";
    int[] mCachedBorders;
    final Rect mDecorInsets;
    boolean mPendingSpanCountChange;
    final SparseIntArray mPreLayoutSpanIndexCache;
    final SparseIntArray mPreLayoutSpanSizeCache;
    View[] mSet;
    int mSpanCount;
    SpanSizeLookup mSpanSizeLookup;

    public GridLayoutManager(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new DefaultSpanSizeLookup();
        this.mDecorInsets = new Rect();
        setSpanCount(getProperties(context, attrs, defStyleAttr, defStyleRes).spanCount);
    }

    public GridLayoutManager(Context context, int spanCount) {
        super(context);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new DefaultSpanSizeLookup();
        this.mDecorInsets = new Rect();
        setSpanCount(spanCount);
    }

    public GridLayoutManager(Context context, int spanCount, int orientation, boolean reverseLayout) {
        super(context, orientation, reverseLayout);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new DefaultSpanSizeLookup();
        this.mDecorInsets = new Rect();
        setSpanCount(spanCount);
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    public void setStackFromEnd(boolean stackFromEnd) {
        if (stackFromEnd) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int getRowCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return this.mSpanCount;
        }
        if (state.getItemCount() < 1) {
            return 0;
        }
        return getSpanGroupIndex(recycler, state, state.getItemCount() - 1) + 1;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public int getColumnCountForAccessibility(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mOrientation == 1) {
            return this.mSpanCount;
        }
        if (state.getItemCount() < 1) {
            return 0;
        }
        return getSpanGroupIndex(recycler, state, state.getItemCount() - 1) + 1;
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfoForItem(RecyclerView.Recycler recycler, RecyclerView.State state, View host, AccessibilityNodeInfoCompat info) {
        ViewGroup.LayoutParams layoutParams = host.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.onInitializeAccessibilityNodeInfoForItem(host, info);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        int spanGroupIndex = getSpanGroupIndex(recycler, state, layoutParams2.getViewLayoutPosition());
        if (this.mOrientation != 0) {
            info.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(spanGroupIndex, 1, layoutParams2.getSpanIndex(), layoutParams2.getSpanSize(), this.mSpanCount > 1 && layoutParams2.getSpanSize() == this.mSpanCount, false));
        } else {
            info.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(layoutParams2.getSpanIndex(), layoutParams2.getSpanSize(), spanGroupIndex, 1, this.mSpanCount > 1 && layoutParams2.getSpanSize() == this.mSpanCount, false));
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.isPreLayout()) {
            cachePreLayoutSpanMapping();
        }
        super.onLayoutChildren(recycler, state);
        clearPreLayoutSpanMappingCache();
        if (!state.isPreLayout()) {
            this.mPendingSpanCountChange = false;
        }
    }

    private void clearPreLayoutSpanMappingCache() {
        this.mPreLayoutSpanSizeCache.clear();
        this.mPreLayoutSpanIndexCache.clear();
    }

    private void cachePreLayoutSpanMapping() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            int viewLayoutPosition = layoutParams.getViewLayoutPosition();
            this.mPreLayoutSpanSizeCache.put(viewLayoutPosition, layoutParams.getSpanSize());
            this.mPreLayoutSpanIndexCache.put(viewLayoutPosition, layoutParams.getSpanIndex());
        }
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int positionStart, int itemCount) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int positionStart, int itemCount) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int positionStart, int itemCount, Object payload) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int from, int to, int itemCount) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
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

    public void setSpanSizeLookup(SpanSizeLookup spanSizeLookup) {
        this.mSpanSizeLookup = spanSizeLookup;
    }

    public SpanSizeLookup getSpanSizeLookup() {
        return this.mSpanSizeLookup;
    }

    private void updateMeasurements() {
        int height;
        if (getOrientation() == 1) {
            height = (getWidth() - getPaddingRight()) - getPaddingLeft();
        } else {
            height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        }
        calculateItemBorders(height);
    }

    @Override // android.support.v7.widget.RecyclerView.LayoutManager
    public void setMeasuredDimension(Rect childrenBounds, int wSpec, int hSpec) {
        int chooseSize;
        int chooseSize2;
        if (this.mCachedBorders == null) {
            super.setMeasuredDimension(childrenBounds, wSpec, hSpec);
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        if (this.mOrientation == 1) {
            chooseSize2 = chooseSize(hSpec, paddingTop + childrenBounds.height(), getMinimumHeight());
            chooseSize = chooseSize(wSpec, paddingRight + this.mCachedBorders[this.mCachedBorders.length - 1], getMinimumWidth());
        } else {
            chooseSize = chooseSize(wSpec, paddingRight + childrenBounds.width(), getMinimumWidth());
            chooseSize2 = chooseSize(hSpec, paddingTop + this.mCachedBorders[this.mCachedBorders.length - 1], getMinimumHeight());
        }
        setMeasuredDimension(chooseSize, chooseSize2);
    }

    private void calculateItemBorders(int totalSpace) {
        this.mCachedBorders = calculateItemBorders(this.mCachedBorders, this.mSpanCount, totalSpace);
    }

    static int[] calculateItemBorders(int[] cachedBorders, int spanCount, int totalSpace) {
        int i;
        int i2 = 0;
        if (cachedBorders == null || cachedBorders.length != spanCount + 1 || cachedBorders[cachedBorders.length - 1] != totalSpace) {
            cachedBorders = new int[spanCount + 1];
        }
        cachedBorders[0] = 0;
        int i3 = totalSpace / spanCount;
        int i4 = totalSpace % spanCount;
        int i5 = 0;
        for (int i6 = 1; i6 <= spanCount; i6++) {
            i2 += i4;
            if (i2 <= 0 || spanCount - i2 >= i4) {
                i = i3;
            } else {
                i = i3 + 1;
                i2 -= spanCount;
            }
            i5 += i;
            cachedBorders[i6] = i5;
        }
        return cachedBorders;
    }

    @Override // android.support.v7.widget.LinearLayoutManager
    void onAnchorReady(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.AnchorInfo anchorInfo, int itemDirection) {
        super.onAnchorReady(recycler, state, anchorInfo, itemDirection);
        updateMeasurements();
        if (state.getItemCount() > 0 && !state.isPreLayout()) {
            ensureAnchorIsInCorrectSpan(recycler, state, anchorInfo, itemDirection);
        }
        ensureViewSet();
    }

    private void ensureViewSet() {
        if (this.mSet == null || this.mSet.length != this.mSpanCount) {
            this.mSet = new View[this.mSpanCount];
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int dx, RecyclerView.Recycler recycler, RecyclerView.State state) {
        updateMeasurements();
        ensureViewSet();
        return super.scrollHorizontallyBy(dx, recycler, state);
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int dy, RecyclerView.Recycler recycler, RecyclerView.State state) {
        updateMeasurements();
        ensureViewSet();
        return super.scrollVerticallyBy(dy, recycler, state);
    }

    private void ensureAnchorIsInCorrectSpan(RecyclerView.Recycler recycler, RecyclerView.State state, LinearLayoutManager.AnchorInfo anchorInfo, int itemDirection) {
        boolean z = itemDirection == 1;
        int spanIndex = getSpanIndex(recycler, state, anchorInfo.mPosition);
        if (z) {
            while (spanIndex > 0 && anchorInfo.mPosition > 0) {
                anchorInfo.mPosition--;
                spanIndex = getSpanIndex(recycler, state, anchorInfo.mPosition);
            }
            return;
        }
        int itemCount = state.getItemCount() - 1;
        int i = anchorInfo.mPosition;
        int i2 = spanIndex;
        while (i < itemCount) {
            int spanIndex2 = getSpanIndex(recycler, state, i + 1);
            if (spanIndex2 <= i2) {
                break;
            }
            i++;
            i2 = spanIndex2;
        }
        anchorInfo.mPosition = i;
    }

    @Override // android.support.v7.widget.LinearLayoutManager
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
                if (getSpanIndex(recycler, state, position) != 0) {
                    view = view2;
                    childAt = view3;
                } else if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
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

    private int getSpanGroupIndex(RecyclerView.Recycler recycler, RecyclerView.State state, int viewPosition) {
        if (!state.isPreLayout()) {
            return this.mSpanSizeLookup.getSpanGroupIndex(viewPosition, this.mSpanCount);
        }
        int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(viewPosition);
        if (convertPreLayoutPositionToPostLayout == -1) {
            Log.w(TAG, "Cannot find span size for pre layout position. " + viewPosition);
            return 0;
        }
        return this.mSpanSizeLookup.getSpanGroupIndex(convertPreLayoutPositionToPostLayout, this.mSpanCount);
    }

    private int getSpanIndex(RecyclerView.Recycler recycler, RecyclerView.State state, int pos) {
        if (!state.isPreLayout()) {
            return this.mSpanSizeLookup.getCachedSpanIndex(pos, this.mSpanCount);
        }
        int i = this.mPreLayoutSpanIndexCache.get(pos, -1);
        if (i == -1) {
            int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(pos);
            if (convertPreLayoutPositionToPostLayout == -1) {
                Log.w(TAG, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + pos);
                return 0;
            }
            return this.mSpanSizeLookup.getCachedSpanIndex(convertPreLayoutPositionToPostLayout, this.mSpanCount);
        }
        return i;
    }

    private int getSpanSize(RecyclerView.Recycler recycler, RecyclerView.State state, int pos) {
        if (!state.isPreLayout()) {
            return this.mSpanSizeLookup.getSpanSize(pos);
        }
        int i = this.mPreLayoutSpanSizeCache.get(pos, -1);
        if (i == -1) {
            int convertPreLayoutPositionToPostLayout = recycler.convertPreLayoutPositionToPostLayout(pos);
            if (convertPreLayoutPositionToPostLayout == -1) {
                Log.w(TAG, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + pos);
                return 1;
            }
            return this.mSpanSizeLookup.getSpanSize(convertPreLayoutPositionToPostLayout);
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c4, code lost:
    
        r28.mFinished = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c9, code lost:
    
        return;
     */
    @Override // android.support.v7.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void layoutChunk(android.support.v7.widget.RecyclerView.Recycler r25, android.support.v7.widget.RecyclerView.State r26, android.support.v7.widget.LinearLayoutManager.LayoutState r27, android.support.v7.widget.LinearLayoutManager.LayoutChunkResult r28) {
        /*
            Method dump skipped, instructions count: 978
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.widget.GridLayoutManager.layoutChunk(android.support.v7.widget.RecyclerView$Recycler, android.support.v7.widget.RecyclerView$State, android.support.v7.widget.LinearLayoutManager$LayoutState, android.support.v7.widget.LinearLayoutManager$LayoutChunkResult):void");
    }

    private void guessMeasurement(float maxSizeInOther, int currentOtherDirSize) {
        calculateItemBorders(Math.max(Math.round(this.mSpanCount * maxSizeInOther), currentOtherDirSize));
    }

    private void measureChildWithDecorationsAndMargin(View child, int widthSpec, int heightSpec, boolean capBothSpecs, boolean alreadyMeasured) {
        boolean shouldMeasureChild;
        calculateItemDecorationsForChild(child, this.mDecorInsets);
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) child.getLayoutParams();
        if (capBothSpecs || this.mOrientation == 1) {
            widthSpec = updateSpecWithExtra(widthSpec, layoutParams.leftMargin + this.mDecorInsets.left, layoutParams.rightMargin + this.mDecorInsets.right);
        }
        if (capBothSpecs || this.mOrientation == 0) {
            heightSpec = updateSpecWithExtra(heightSpec, layoutParams.topMargin + this.mDecorInsets.top, layoutParams.bottomMargin + this.mDecorInsets.bottom);
        }
        if (alreadyMeasured) {
            shouldMeasureChild = shouldReMeasureChild(child, widthSpec, heightSpec, layoutParams);
        } else {
            shouldMeasureChild = shouldMeasureChild(child, widthSpec, heightSpec, layoutParams);
        }
        if (shouldMeasureChild) {
            child.measure(widthSpec, heightSpec);
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

    private void assignSpans(RecyclerView.Recycler recycler, RecyclerView.State state, int count, int consumedSpanCount, boolean layingOutInPrimaryDirection) {
        int i;
        int i2;
        int i3;
        int i4;
        if (layingOutInPrimaryDirection) {
            i2 = 1;
            i = 0;
        } else {
            i = count - 1;
            i2 = -1;
            count = -1;
        }
        if (this.mOrientation == 1 && isLayoutRTL()) {
            i3 = this.mSpanCount - 1;
            i4 = -1;
        } else {
            i3 = 0;
            i4 = 1;
        }
        int i5 = i3;
        for (int i6 = i; i6 != count; i6 += i2) {
            View view = this.mSet[i6];
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.mSpanSize = getSpanSize(recycler, state, getPosition(view));
            if (i4 != -1 || layoutParams.mSpanSize <= 1) {
                layoutParams.mSpanIndex = i5;
            } else {
                layoutParams.mSpanIndex = i5 - (layoutParams.mSpanSize - 1);
            }
            i5 += layoutParams.mSpanSize * i4;
        }
    }

    public int getSpanCount() {
        return this.mSpanCount;
    }

    public void setSpanCount(int spanCount) {
        if (spanCount != this.mSpanCount) {
            this.mPendingSpanCountChange = true;
            if (spanCount < 1) {
                throw new IllegalArgumentException("Span count should be at least 1. Provided " + spanCount);
            }
            this.mSpanCount = spanCount;
            this.mSpanSizeLookup.invalidateSpanIndexCache();
        }
    }

    public static abstract class SpanSizeLookup {
        final SparseIntArray mSpanIndexCache = new SparseIntArray();
        private boolean mCacheSpanIndices = false;

        public abstract int getSpanSize(int i);

        public void setSpanIndexCacheEnabled(boolean cacheSpanIndices) {
            this.mCacheSpanIndices = cacheSpanIndices;
        }

        public void invalidateSpanIndexCache() {
            this.mSpanIndexCache.clear();
        }

        public boolean isSpanIndexCacheEnabled() {
            return this.mCacheSpanIndices;
        }

        int getCachedSpanIndex(int position, int spanCount) {
            if (!this.mCacheSpanIndices) {
                return getSpanIndex(position, spanCount);
            }
            int i = this.mSpanIndexCache.get(position, -1);
            if (i == -1) {
                int spanIndex = getSpanIndex(position, spanCount);
                this.mSpanIndexCache.put(position, spanIndex);
                return spanIndex;
            }
            return i;
        }

        public int getSpanIndex(int position, int spanCount) {
            int i;
            int i2;
            int findReferenceIndexFromCache;
            int spanSize = getSpanSize(position);
            if (spanSize == spanCount) {
                return 0;
            }
            if (!this.mCacheSpanIndices || this.mSpanIndexCache.size() <= 0 || (findReferenceIndexFromCache = findReferenceIndexFromCache(position)) < 0) {
                i = 0;
                i2 = 0;
            } else {
                i2 = this.mSpanIndexCache.get(findReferenceIndexFromCache) + getSpanSize(findReferenceIndexFromCache);
                i = findReferenceIndexFromCache + 1;
            }
            int i3 = i;
            while (i3 < position) {
                int spanSize2 = getSpanSize(i3);
                int i4 = i2 + spanSize2;
                if (i4 == spanCount) {
                    spanSize2 = 0;
                } else if (i4 <= spanCount) {
                    spanSize2 = i4;
                }
                i3++;
                i2 = spanSize2;
            }
            if (i2 + spanSize <= spanCount) {
                return i2;
            }
            return 0;
        }

        int findReferenceIndexFromCache(int position) {
            int i = 0;
            int size = this.mSpanIndexCache.size() - 1;
            while (i <= size) {
                int i2 = (i + size) >>> 1;
                if (this.mSpanIndexCache.keyAt(i2) < position) {
                    i = i2 + 1;
                } else {
                    size = i2 - 1;
                }
            }
            int i3 = i - 1;
            if (i3 < 0 || i3 >= this.mSpanIndexCache.size()) {
                return -1;
            }
            return this.mSpanIndexCache.keyAt(i3);
        }

        public int getSpanGroupIndex(int adapterPosition, int spanCount) {
            int spanSize = getSpanSize(adapterPosition);
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (i < adapterPosition) {
                int spanSize2 = getSpanSize(i);
                int i4 = i3 + spanSize2;
                if (i4 == spanCount) {
                    i2++;
                    spanSize2 = 0;
                } else if (i4 > spanCount) {
                    i2++;
                } else {
                    spanSize2 = i4;
                }
                i++;
                i3 = spanSize2;
            }
            if (i3 + spanSize > spanCount) {
                return i2 + 1;
            }
            return i2;
        }
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public View onFocusSearchFailed(View focused, int focusDirection, RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i;
        int i2;
        int childCount;
        int i3;
        int i4;
        View view;
        View findContainingItemView = findContainingItemView(focused);
        if (findContainingItemView == null) {
            return null;
        }
        LayoutParams layoutParams = (LayoutParams) findContainingItemView.getLayoutParams();
        int i5 = layoutParams.mSpanIndex;
        int i6 = layoutParams.mSpanIndex + layoutParams.mSpanSize;
        if (super.onFocusSearchFailed(focused, focusDirection, recycler, state) == null) {
            return null;
        }
        if ((convertFocusDirectionToLayoutDirection(focusDirection) == 1) != this.mShouldReverseLayout) {
            i = getChildCount() - 1;
            i2 = -1;
            childCount = -1;
        } else {
            i = 0;
            i2 = 1;
            childCount = getChildCount();
        }
        boolean z = this.mOrientation == 1 && isLayoutRTL();
        View view2 = null;
        int i7 = -1;
        int i8 = 0;
        int i9 = i;
        while (i9 != childCount) {
            View childAt = getChildAt(i9);
            if (childAt == findContainingItemView) {
                break;
            }
            if (childAt.isFocusable()) {
                LayoutParams layoutParams2 = (LayoutParams) childAt.getLayoutParams();
                int i10 = layoutParams2.mSpanIndex;
                int i11 = layoutParams2.mSpanIndex + layoutParams2.mSpanSize;
                if (i10 != i5 || i11 != i6) {
                    boolean z2 = false;
                    if (view2 == null) {
                        z2 = true;
                    } else {
                        int min = Math.min(i11, i6) - Math.max(i10, i5);
                        if (min > i8) {
                            z2 = true;
                        } else if (min == i8) {
                            if (z == (i10 > i7)) {
                                z2 = true;
                            }
                        }
                    }
                    if (z2) {
                        i4 = layoutParams2.mSpanIndex;
                        i3 = Math.min(i11, i6) - Math.max(i10, i5);
                        view = childAt;
                    } else {
                        i3 = i8;
                        i4 = i7;
                        view = view2;
                    }
                } else {
                    return childAt;
                }
            } else {
                i3 = i8;
                i4 = i7;
                view = view2;
            }
            i9 += i2;
            view2 = view;
            i7 = i4;
            i8 = i3;
        }
        return view2;
    }

    @Override // android.support.v7.widget.LinearLayoutManager, android.support.v7.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.mPendingSpanCountChange;
    }

    public static final class DefaultSpanSizeLookup extends SpanSizeLookup {
        @Override // android.support.v7.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int position) {
            return 1;
        }

        @Override // android.support.v7.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanIndex(int position, int spanCount) {
            return position % spanCount;
        }
    }

    public static class LayoutParams extends RecyclerView.LayoutParams {
        public static final int INVALID_SPAN_ID = -1;
        private int mSpanIndex;
        private int mSpanSize;

        public LayoutParams(Context c, AttributeSet attrs) {
            super(c, attrs);
            this.mSpanIndex = -1;
            this.mSpanSize = 0;
        }

        public LayoutParams(int width, int height) {
            super(width, height);
            this.mSpanIndex = -1;
            this.mSpanSize = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super(source);
            this.mSpanIndex = -1;
            this.mSpanSize = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
            this.mSpanIndex = -1;
            this.mSpanSize = 0;
        }

        public LayoutParams(RecyclerView.LayoutParams source) {
            super(source);
            this.mSpanIndex = -1;
            this.mSpanSize = 0;
        }

        public int getSpanIndex() {
            return this.mSpanIndex;
        }

        public int getSpanSize() {
            return this.mSpanSize;
        }
    }
}
