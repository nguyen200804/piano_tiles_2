package android.support.v4.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.TransportMediator;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingChild;
import android.support.v4.view.NestedScrollingChildHelper;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.ScrollingView;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NestedScrollView extends FrameLayout implements NestedScrollingChild, NestedScrollingParent, ScrollingView {
    static final int ANIMATED_SCROLL_GAP = 250;
    private static final int INVALID_POINTER = -1;
    static final float MAX_SCROLL_FACTOR = 0.5f;
    private static final String TAG = "NestedScrollView";
    private int mActivePointerId;
    private final NestedScrollingChildHelper mChildHelper;
    private View mChildToScrollTo;
    private EdgeEffectCompat mEdgeGlowBottom;
    private EdgeEffectCompat mEdgeGlowTop;
    private boolean mFillViewport;
    private boolean mIsBeingDragged;
    private boolean mIsLaidOut;
    private boolean mIsLayoutDirty;
    private int mLastMotionY;
    private long mLastScroll;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private int mNestedYOffset;
    private OnScrollChangeListener mOnScrollChangeListener;
    private final NestedScrollingParentHelper mParentHelper;
    private SavedState mSavedState;
    private final int[] mScrollConsumed;
    private final int[] mScrollOffset;
    private ScrollerCompat mScroller;
    private boolean mSmoothScrollingEnabled;
    private final Rect mTempRect;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private float mVerticalScrollFactor;
    private static final AccessibilityDelegate ACCESSIBILITY_DELEGATE = new AccessibilityDelegate();
    private static final int[] SCROLLVIEW_STYLEABLE = {R.attr.fillViewport};

    public interface OnScrollChangeListener {
        void onScrollChange(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4);
    }

    public NestedScrollView(Context context) {
        this(context, null);
    }

    public NestedScrollView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public NestedScrollView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mTempRect = new Rect();
        this.mIsLayoutDirty = true;
        this.mIsLaidOut = false;
        this.mChildToScrollTo = null;
        this.mIsBeingDragged = false;
        this.mSmoothScrollingEnabled = true;
        this.mActivePointerId = -1;
        this.mScrollOffset = new int[2];
        this.mScrollConsumed = new int[2];
        initScrollView();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, SCROLLVIEW_STYLEABLE, defStyleAttr, 0);
        setFillViewport(obtainStyledAttributes.getBoolean(0, false));
        obtainStyledAttributes.recycle();
        this.mParentHelper = new NestedScrollingParentHelper(this);
        this.mChildHelper = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        ViewCompat.setAccessibilityDelegate(this, ACCESSIBILITY_DELEGATE);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean enabled) {
        this.mChildHelper.setNestedScrollingEnabled(enabled);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.mChildHelper.isNestedScrollingEnabled();
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean startNestedScroll(int axes) {
        return this.mChildHelper.startNestedScroll(axes);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.mChildHelper.stopNestedScroll();
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return this.mChildHelper.hasNestedScrollingParent();
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int[] offsetInWindow) {
        return this.mChildHelper.dispatchNestedScroll(dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, offsetInWindow);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int dx, int dy, int[] consumed, int[] offsetInWindow) {
        return this.mChildHelper.dispatchNestedPreScroll(dx, dy, consumed, offsetInWindow);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean dispatchNestedFling(float velocityX, float velocityY, boolean consumed) {
        return this.mChildHelper.dispatchNestedFling(velocityX, velocityY, consumed);
    }

    @Override // android.view.View, android.support.v4.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float velocityX, float velocityY) {
        return this.mChildHelper.dispatchNestedPreFling(velocityX, velocityY);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onStartNestedScroll(View child, View target, int nestedScrollAxes) {
        return (nestedScrollAxes & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScrollAccepted(View child, View target, int nestedScrollAxes) {
        this.mParentHelper.onNestedScrollAccepted(child, target, nestedScrollAxes);
        startNestedScroll(2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onStopNestedScroll(View target) {
        this.mParentHelper.onStopNestedScroll(target);
        stopNestedScroll();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedScroll(View target, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed) {
        int scrollY = getScrollY();
        scrollBy(0, dyUnconsumed);
        int scrollY2 = getScrollY() - scrollY;
        dispatchNestedScroll(0, scrollY2, 0, dyUnconsumed - scrollY2, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public void onNestedPreScroll(View target, int dx, int dy, int[] consumed) {
        dispatchNestedPreScroll(dx, dy, consumed, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedFling(View target, float velocityX, float velocityY, boolean consumed) {
        if (consumed) {
            return false;
        }
        flingWithNestedDispatch((int) velocityY);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, android.support.v4.view.NestedScrollingParent
    public boolean onNestedPreFling(View target, float velocityX, float velocityY) {
        return dispatchNestedPreFling(velocityX, velocityY);
    }

    @Override // android.view.ViewGroup, android.support.v4.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.mParentHelper.getNestedScrollAxes();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = (getChildAt(0).getBottom() - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (MAX_SCROLL_FACTOR * getHeight());
    }

    private void initScrollView() {
        this.mScroller = ScrollerCompat.create(getContext(), null);
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMinimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    @Override // android.view.ViewGroup
    public void addView(View child) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(child);
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(child, index);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View child, ViewGroup.LayoutParams params) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(child, params);
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(child, index, params);
    }

    public void setOnScrollChangeListener(OnScrollChangeListener l) {
        this.mOnScrollChangeListener = l;
    }

    private boolean canScroll() {
        View childAt = getChildAt(0);
        if (childAt != null) {
            return getHeight() < (childAt.getHeight() + getPaddingTop()) + getPaddingBottom();
        }
        return false;
    }

    public boolean isFillViewport() {
        return this.mFillViewport;
    }

    public void setFillViewport(boolean fillViewport) {
        if (fillViewport != this.mFillViewport) {
            this.mFillViewport = fillViewport;
            requestLayout();
        }
    }

    public boolean isSmoothScrollingEnabled() {
        return this.mSmoothScrollingEnabled;
    }

    public void setSmoothScrollingEnabled(boolean smoothScrollingEnabled) {
        this.mSmoothScrollingEnabled = smoothScrollingEnabled;
    }

    @Override // android.view.View
    protected void onScrollChanged(int l, int t, int oldl, int oldt) {
        super.onScrollChanged(l, t, oldl, oldt);
        if (this.mOnScrollChangeListener != null) {
            this.mOnScrollChangeListener.onScrollChange(this, l, t, oldl, oldt);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if (this.mFillViewport && View.MeasureSpec.getMode(heightMeasureSpec) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            int measuredHeight = getMeasuredHeight();
            if (childAt.getMeasuredHeight() < measuredHeight) {
                childAt.measure(getChildMeasureSpec(widthMeasureSpec, getPaddingLeft() + getPaddingRight(), ((FrameLayout.LayoutParams) childAt.getLayoutParams()).width), View.MeasureSpec.makeMeasureSpec((measuredHeight - getPaddingTop()) - getPaddingBottom(), 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent event) {
        return super.dispatchKeyEvent(event) || executeKeyEvent(event);
    }

    public boolean executeKeyEvent(KeyEvent event) {
        this.mTempRect.setEmpty();
        if (!canScroll()) {
            if (!isFocused() || event.getKeyCode() == 4) {
                return false;
            }
            View findFocus = findFocus();
            if (findFocus == this) {
                findFocus = null;
            }
            View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, TransportMediator.KEYCODE_MEDIA_RECORD);
            return (findNextFocus == null || findNextFocus == this || !findNextFocus.requestFocus(TransportMediator.KEYCODE_MEDIA_RECORD)) ? false : true;
        }
        if (event.getAction() != 0) {
            return false;
        }
        switch (event.getKeyCode()) {
            case 19:
                if (!event.isAltPressed()) {
                    return arrowScroll(33);
                }
                return fullScroll(33);
            case 20:
                if (!event.isAltPressed()) {
                    return arrowScroll(TransportMediator.KEYCODE_MEDIA_RECORD);
                }
                return fullScroll(TransportMediator.KEYCODE_MEDIA_RECORD);
            case 62:
                pageScroll(event.isShiftPressed() ? 33 : 130);
                return false;
            default:
                return false;
        }
    }

    private boolean inChild(int x, int y) {
        if (getChildCount() <= 0) {
            return false;
        }
        int scrollY = getScrollY();
        View childAt = getChildAt(0);
        return y >= childAt.getTop() - scrollY && y < childAt.getBottom() - scrollY && x >= childAt.getLeft() && x < childAt.getRight();
    }

    private void initOrResetVelocityTracker() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        } else {
            this.mVelocityTracker.clear();
        }
    }

    private void initVelocityTrackerIfNotExists() {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
    }

    private void recycleVelocityTracker() {
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        if (disallowIntercept) {
            recycleVelocityTracker();
        }
        super.requestDisallowInterceptTouchEvent(disallowIntercept);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        int action = ev.getAction();
        if (action == 2 && this.mIsBeingDragged) {
            return true;
        }
        switch (action & 255) {
            case 0:
                int y = (int) ev.getY();
                if (!inChild((int) ev.getX(), y)) {
                    this.mIsBeingDragged = false;
                    recycleVelocityTracker();
                    break;
                } else {
                    this.mLastMotionY = y;
                    this.mActivePointerId = MotionEventCompat.getPointerId(ev, 0);
                    initOrResetVelocityTracker();
                    this.mVelocityTracker.addMovement(ev);
                    this.mScroller.computeScrollOffset();
                    this.mIsBeingDragged = this.mScroller.isFinished() ? false : true;
                    startNestedScroll(2);
                    break;
                }
            case 1:
            case 3:
                this.mIsBeingDragged = false;
                this.mActivePointerId = -1;
                recycleVelocityTracker();
                if (this.mScroller.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
                stopNestedScroll();
                break;
            case 2:
                int i = this.mActivePointerId;
                if (i != -1) {
                    int findPointerIndex = MotionEventCompat.findPointerIndex(ev, i);
                    if (findPointerIndex == -1) {
                        Log.e(TAG, "Invalid pointerId=" + i + " in onInterceptTouchEvent");
                        break;
                    } else {
                        int y2 = (int) MotionEventCompat.getY(ev, findPointerIndex);
                        if (Math.abs(y2 - this.mLastMotionY) > this.mTouchSlop && (getNestedScrollAxes() & 2) == 0) {
                            this.mIsBeingDragged = true;
                            this.mLastMotionY = y2;
                            initVelocityTrackerIfNotExists();
                            this.mVelocityTracker.addMovement(ev);
                            this.mNestedYOffset = 0;
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                                break;
                            }
                        }
                    }
                }
                break;
            case 6:
                onSecondaryPointerUp(ev);
                break;
        }
        return this.mIsBeingDragged;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        int i;
        ViewParent parent;
        initVelocityTrackerIfNotExists();
        MotionEvent obtain = MotionEvent.obtain(ev);
        int actionMasked = MotionEventCompat.getActionMasked(ev);
        if (actionMasked == 0) {
            this.mNestedYOffset = 0;
        }
        obtain.offsetLocation(0.0f, this.mNestedYOffset);
        switch (actionMasked) {
            case 0:
                if (getChildCount() == 0) {
                    return false;
                }
                boolean z = !this.mScroller.isFinished();
                this.mIsBeingDragged = z;
                if (z && (parent = getParent()) != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                if (!this.mScroller.isFinished()) {
                    this.mScroller.abortAnimation();
                }
                this.mLastMotionY = (int) ev.getY();
                this.mActivePointerId = MotionEventCompat.getPointerId(ev, 0);
                startNestedScroll(2);
                break;
            case 1:
                if (this.mIsBeingDragged) {
                    VelocityTracker velocityTracker = this.mVelocityTracker;
                    velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                    int yVelocity = (int) VelocityTrackerCompat.getYVelocity(velocityTracker, this.mActivePointerId);
                    if (Math.abs(yVelocity) > this.mMinimumVelocity) {
                        flingWithNestedDispatch(-yVelocity);
                    } else if (this.mScroller.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                        ViewCompat.postInvalidateOnAnimation(this);
                    }
                }
                this.mActivePointerId = -1;
                endDrag();
                break;
            case 2:
                int findPointerIndex = MotionEventCompat.findPointerIndex(ev, this.mActivePointerId);
                if (findPointerIndex == -1) {
                    Log.e(TAG, "Invalid pointerId=" + this.mActivePointerId + " in onTouchEvent");
                    break;
                } else {
                    int y = (int) MotionEventCompat.getY(ev, findPointerIndex);
                    int i2 = this.mLastMotionY - y;
                    if (dispatchNestedPreScroll(0, i2, this.mScrollConsumed, this.mScrollOffset)) {
                        i2 -= this.mScrollConsumed[1];
                        obtain.offsetLocation(0.0f, this.mScrollOffset[1]);
                        this.mNestedYOffset += this.mScrollOffset[1];
                    }
                    if (this.mIsBeingDragged || Math.abs(i2) <= this.mTouchSlop) {
                        i = i2;
                    } else {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.mIsBeingDragged = true;
                        if (i2 > 0) {
                            i = i2 - this.mTouchSlop;
                        } else {
                            i = i2 + this.mTouchSlop;
                        }
                    }
                    if (this.mIsBeingDragged) {
                        this.mLastMotionY = y - this.mScrollOffset[1];
                        int scrollY = getScrollY();
                        int scrollRange = getScrollRange();
                        int overScrollMode = ViewCompat.getOverScrollMode(this);
                        boolean z2 = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                        if (overScrollByCompat(0, i, 0, getScrollY(), 0, scrollRange, 0, 0, true) && !hasNestedScrollingParent()) {
                            this.mVelocityTracker.clear();
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        if (dispatchNestedScroll(0, scrollY2, 0, i - scrollY2, this.mScrollOffset)) {
                            this.mLastMotionY -= this.mScrollOffset[1];
                            obtain.offsetLocation(0.0f, this.mScrollOffset[1]);
                            this.mNestedYOffset += this.mScrollOffset[1];
                            break;
                        } else if (z2) {
                            ensureGlows();
                            int i3 = scrollY + i;
                            if (i3 < 0) {
                                this.mEdgeGlowTop.onPull(i / getHeight(), MotionEventCompat.getX(ev, findPointerIndex) / getWidth());
                                if (!this.mEdgeGlowBottom.isFinished()) {
                                    this.mEdgeGlowBottom.onRelease();
                                }
                            } else if (i3 > scrollRange) {
                                this.mEdgeGlowBottom.onPull(i / getHeight(), 1.0f - (MotionEventCompat.getX(ev, findPointerIndex) / getWidth()));
                                if (!this.mEdgeGlowTop.isFinished()) {
                                    this.mEdgeGlowTop.onRelease();
                                }
                            }
                            if (this.mEdgeGlowTop != null && (!this.mEdgeGlowTop.isFinished() || !this.mEdgeGlowBottom.isFinished())) {
                                ViewCompat.postInvalidateOnAnimation(this);
                                break;
                            }
                        }
                    }
                }
                break;
            case 3:
                if (this.mIsBeingDragged && getChildCount() > 0 && this.mScroller.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
                this.mActivePointerId = -1;
                endDrag();
                break;
            case 5:
                int actionIndex = MotionEventCompat.getActionIndex(ev);
                this.mLastMotionY = (int) MotionEventCompat.getY(ev, actionIndex);
                this.mActivePointerId = MotionEventCompat.getPointerId(ev, actionIndex);
                break;
            case 6:
                onSecondaryPointerUp(ev);
                this.mLastMotionY = (int) MotionEventCompat.getY(ev, MotionEventCompat.findPointerIndex(ev, this.mActivePointerId));
                break;
        }
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    private void onSecondaryPointerUp(MotionEvent ev) {
        int action = (ev.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
        if (MotionEventCompat.getPointerId(ev, action) == this.mActivePointerId) {
            int i = action == 0 ? 1 : 0;
            this.mLastMotionY = (int) MotionEventCompat.getY(ev, i);
            this.mActivePointerId = MotionEventCompat.getPointerId(ev, i);
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.clear();
            }
        }
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent event) {
        if ((MotionEventCompat.getSource(event) & 2) == 0) {
            return false;
        }
        switch (event.getAction()) {
            case 8:
                if (!this.mIsBeingDragged) {
                    float axisValue = MotionEventCompat.getAxisValue(event, 9);
                    if (axisValue != 0.0f) {
                        int verticalScrollFactorCompat = (int) (axisValue * getVerticalScrollFactorCompat());
                        int scrollRange = getScrollRange();
                        int scrollY = getScrollY();
                        int i = scrollY - verticalScrollFactorCompat;
                        if (i < 0) {
                            scrollRange = 0;
                        } else if (i <= scrollRange) {
                            scrollRange = i;
                        }
                        if (scrollRange != scrollY) {
                            super.scrollTo(getScrollX(), scrollRange);
                            break;
                        }
                    }
                }
                break;
        }
        return false;
    }

    private float getVerticalScrollFactorCompat() {
        if (this.mVerticalScrollFactor == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.mVerticalScrollFactor = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.mVerticalScrollFactor;
    }

    @Override // android.view.View
    protected void onOverScrolled(int scrollX, int scrollY, boolean clampedX, boolean clampedY) {
        super.scrollTo(scrollX, scrollY);
    }

    boolean overScrollByCompat(int deltaX, int deltaY, int scrollX, int scrollY, int scrollRangeX, int scrollRangeY, int maxOverScrollX, int maxOverScrollY, boolean isTouchEvent) {
        boolean z;
        boolean z2;
        int overScrollMode = ViewCompat.getOverScrollMode(this);
        boolean z3 = computeHorizontalScrollRange() > computeHorizontalScrollExtent();
        boolean z4 = computeVerticalScrollRange() > computeVerticalScrollExtent();
        boolean z5 = overScrollMode == 0 || (overScrollMode == 1 && z3);
        boolean z6 = overScrollMode == 0 || (overScrollMode == 1 && z4);
        int i = scrollX + deltaX;
        if (!z5) {
            maxOverScrollX = 0;
        }
        int i2 = scrollY + deltaY;
        if (!z6) {
            maxOverScrollY = 0;
        }
        int i3 = -maxOverScrollX;
        int i4 = maxOverScrollX + scrollRangeX;
        int i5 = -maxOverScrollY;
        int i6 = maxOverScrollY + scrollRangeY;
        if (i > i4) {
            z = true;
        } else if (i >= i3) {
            z = false;
            i4 = i;
        } else {
            z = true;
            i4 = i3;
        }
        if (i2 > i6) {
            z2 = true;
        } else if (i2 >= i5) {
            z2 = false;
            i6 = i2;
        } else {
            z2 = true;
            i6 = i5;
        }
        if (z2) {
            this.mScroller.springBack(i4, i6, 0, 0, 0, getScrollRange());
        }
        onOverScrolled(i4, i6, z, z2);
        return z || z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getScrollRange() {
        if (getChildCount() > 0) {
            return Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
        }
        return 0;
    }

    private View findFocusableViewInBounds(boolean topFocus, int top, int bottom) {
        boolean z;
        View view;
        ArrayList focusables = getFocusables(2);
        View view2 = null;
        boolean z2 = false;
        int size = focusables.size();
        int i = 0;
        while (i < size) {
            View view3 = (View) focusables.get(i);
            int top2 = view3.getTop();
            int bottom2 = view3.getBottom();
            if (top < bottom2 && top2 < bottom) {
                boolean z3 = top < top2 && bottom2 < bottom;
                if (view2 == null) {
                    boolean z4 = z3;
                    view = view3;
                    z = z4;
                } else {
                    boolean z5 = (topFocus && top2 < view2.getTop()) || (!topFocus && bottom2 > view2.getBottom());
                    if (z2) {
                        if (z3 && z5) {
                            view = view3;
                            z = z2;
                        }
                    } else if (z3) {
                        view = view3;
                        z = true;
                    } else if (z5) {
                        view = view3;
                        z = z2;
                    }
                }
                i++;
                view2 = view;
                z2 = z;
            }
            z = z2;
            view = view2;
            i++;
            view2 = view;
            z2 = z;
        }
        return view2;
    }

    public boolean pageScroll(int direction) {
        boolean z = direction == 130;
        int height = getHeight();
        if (z) {
            this.mTempRect.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                if (this.mTempRect.top + height > childAt.getBottom()) {
                    this.mTempRect.top = childAt.getBottom() - height;
                }
            }
        } else {
            this.mTempRect.top = getScrollY() - height;
            if (this.mTempRect.top < 0) {
                this.mTempRect.top = 0;
            }
        }
        this.mTempRect.bottom = this.mTempRect.top + height;
        return scrollAndFocus(direction, this.mTempRect.top, this.mTempRect.bottom);
    }

    public boolean fullScroll(int direction) {
        int childCount;
        boolean z = direction == 130;
        int height = getHeight();
        this.mTempRect.top = 0;
        this.mTempRect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            this.mTempRect.bottom = getChildAt(childCount - 1).getBottom() + getPaddingBottom();
            this.mTempRect.top = this.mTempRect.bottom - height;
        }
        return scrollAndFocus(direction, this.mTempRect.top, this.mTempRect.bottom);
    }

    private boolean scrollAndFocus(int direction, int top, int bottom) {
        boolean z = false;
        int height = getHeight();
        int scrollY = getScrollY();
        int i = scrollY + height;
        boolean z2 = direction == 33;
        View findFocusableViewInBounds = findFocusableViewInBounds(z2, top, bottom);
        if (findFocusableViewInBounds == null) {
            findFocusableViewInBounds = this;
        }
        if (top < scrollY || bottom > i) {
            doScrollY(z2 ? top - scrollY : bottom - i);
            z = true;
        }
        if (findFocusableViewInBounds != findFocus()) {
            findFocusableViewInBounds.requestFocus(direction);
        }
        return z;
    }

    public boolean arrowScroll(int direction) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, direction);
        int maxScrollAmount = getMaxScrollAmount();
        if (findNextFocus != null && isWithinDeltaOfScreen(findNextFocus, maxScrollAmount, getHeight())) {
            findNextFocus.getDrawingRect(this.mTempRect);
            offsetDescendantRectToMyCoords(findNextFocus, this.mTempRect);
            doScrollY(computeScrollDeltaToGetChildRectOnScreen(this.mTempRect));
            findNextFocus.requestFocus(direction);
        } else {
            if (direction == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (direction == 130 && getChildCount() > 0) {
                int bottom = getChildAt(0).getBottom();
                int scrollY = (getScrollY() + getHeight()) - getPaddingBottom();
                if (bottom - scrollY < maxScrollAmount) {
                    maxScrollAmount = bottom - scrollY;
                }
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (direction != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            doScrollY(maxScrollAmount);
        }
        if (findFocus != null && findFocus.isFocused() && isOffScreen(findFocus)) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    private boolean isOffScreen(View descendant) {
        return !isWithinDeltaOfScreen(descendant, 0, getHeight());
    }

    private boolean isWithinDeltaOfScreen(View descendant, int delta, int height) {
        descendant.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(descendant, this.mTempRect);
        return this.mTempRect.bottom + delta >= getScrollY() && this.mTempRect.top - delta <= getScrollY() + height;
    }

    private void doScrollY(int delta) {
        if (delta != 0) {
            if (this.mSmoothScrollingEnabled) {
                smoothScrollBy(0, delta);
            } else {
                scrollBy(0, delta);
            }
        }
    }

    public final void smoothScrollBy(int dx, int dy) {
        if (getChildCount() != 0) {
            if (AnimationUtils.currentAnimationTimeMillis() - this.mLastScroll > 250) {
                int max = Math.max(0, getChildAt(0).getHeight() - ((getHeight() - getPaddingBottom()) - getPaddingTop()));
                int scrollY = getScrollY();
                this.mScroller.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(scrollY + dy, max)) - scrollY);
                ViewCompat.postInvalidateOnAnimation(this);
            } else {
                if (!this.mScroller.isFinished()) {
                    this.mScroller.abortAnimation();
                }
                scrollBy(dx, dy);
            }
            this.mLastScroll = AnimationUtils.currentAnimationTimeMillis();
        }
    }

    public final void smoothScrollTo(int x, int y) {
        smoothScrollBy(x - getScrollX(), y - getScrollY());
    }

    @Override // android.view.View, android.support.v4.view.ScrollingView
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        int bottom = getChildAt(0).getBottom();
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        if (scrollY < 0) {
            return bottom - scrollY;
        }
        if (scrollY > max) {
            return bottom + (scrollY - max);
        }
        return bottom;
    }

    @Override // android.view.View, android.support.v4.view.ScrollingView
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View, android.support.v4.view.ScrollingView
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View, android.support.v4.view.ScrollingView
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View, android.support.v4.view.ScrollingView
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View, android.support.v4.view.ScrollingView
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.ViewGroup
    protected void measureChild(View child, int parentWidthMeasureSpec, int parentHeightMeasureSpec) {
        child.measure(getChildMeasureSpec(parentWidthMeasureSpec, getPaddingLeft() + getPaddingRight(), child.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View child, int parentWidthMeasureSpec, int widthUsed, int parentHeightMeasureSpec, int heightUsed) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) child.getLayoutParams();
        child.measure(getChildMeasureSpec(parentWidthMeasureSpec, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + widthUsed, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.bottomMargin + marginLayoutParams.topMargin, 0));
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.mScroller.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                int scrollRange = getScrollRange();
                int overScrollMode = ViewCompat.getOverScrollMode(this);
                boolean z = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                overScrollByCompat(currX - scrollX, currY - scrollY, scrollX, scrollY, 0, scrollRange, 0, 0, false);
                if (z) {
                    ensureGlows();
                    if (currY <= 0 && scrollY > 0) {
                        this.mEdgeGlowTop.onAbsorb((int) this.mScroller.getCurrVelocity());
                    } else if (currY >= scrollRange && scrollY < scrollRange) {
                        this.mEdgeGlowBottom.onAbsorb((int) this.mScroller.getCurrVelocity());
                    }
                }
            }
        }
    }

    private void scrollToChild(View child) {
        child.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(child, this.mTempRect);
        int computeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(this.mTempRect);
        if (computeScrollDeltaToGetChildRectOnScreen != 0) {
            scrollBy(0, computeScrollDeltaToGetChildRectOnScreen);
        }
    }

    private boolean scrollToChildRect(Rect rect, boolean immediate) {
        int computeScrollDeltaToGetChildRectOnScreen = computeScrollDeltaToGetChildRectOnScreen(rect);
        boolean z = computeScrollDeltaToGetChildRectOnScreen != 0;
        if (z) {
            if (immediate) {
                scrollBy(0, computeScrollDeltaToGetChildRectOnScreen);
            } else {
                smoothScrollBy(0, computeScrollDeltaToGetChildRectOnScreen);
            }
        }
        return z;
    }

    protected int computeScrollDeltaToGetChildRectOnScreen(Rect rect) {
        int i;
        int i2;
        int i3;
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        if (rect.bottom < getChildAt(0).getHeight()) {
            i4 -= verticalFadingEdgeLength;
        }
        if (rect.bottom > i4 && rect.top > scrollY) {
            if (rect.height() > height) {
                i3 = (rect.top - scrollY) + 0;
            } else {
                i3 = (rect.bottom - i4) + 0;
            }
            i = Math.min(i3, getChildAt(0).getBottom() - i4);
        } else if (rect.top >= scrollY || rect.bottom >= i4) {
            i = 0;
        } else {
            if (rect.height() > height) {
                i2 = 0 - (i4 - rect.bottom);
            } else {
                i2 = 0 - (scrollY - rect.top);
            }
            i = Math.max(i2, -getScrollY());
        }
        return i;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View child, View focused) {
        if (!this.mIsLayoutDirty) {
            scrollToChild(focused);
        } else {
            this.mChildToScrollTo = focused;
        }
        super.requestChildFocus(child, focused);
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int direction, Rect previouslyFocusedRect) {
        if (direction == 2) {
            direction = TransportMediator.KEYCODE_MEDIA_RECORD;
        } else if (direction == 1) {
            direction = 33;
        }
        View findNextFocus = previouslyFocusedRect == null ? FocusFinder.getInstance().findNextFocus(this, null, direction) : FocusFinder.getInstance().findNextFocusFromRect(this, previouslyFocusedRect, direction);
        if (findNextFocus == null || isOffScreen(findNextFocus)) {
            return false;
        }
        return findNextFocus.requestFocus(direction, previouslyFocusedRect);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View child, Rect rectangle, boolean immediate) {
        rectangle.offset(child.getLeft() - child.getScrollX(), child.getTop() - child.getScrollY());
        return scrollToChildRect(rectangle, immediate);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.mIsLayoutDirty = true;
        super.requestLayout();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b2) {
        super.onLayout(changed, l, t, r, b2);
        this.mIsLayoutDirty = false;
        if (this.mChildToScrollTo != null && isViewDescendantOf(this.mChildToScrollTo, this)) {
            scrollToChild(this.mChildToScrollTo);
        }
        this.mChildToScrollTo = null;
        if (!this.mIsLaidOut) {
            if (this.mSavedState != null) {
                scrollTo(getScrollX(), this.mSavedState.scrollPosition);
                this.mSavedState = null;
            }
            int max = Math.max(0, (getChildCount() > 0 ? getChildAt(0).getMeasuredHeight() : 0) - (((b2 - t) - getPaddingBottom()) - getPaddingTop()));
            if (getScrollY() > max) {
                scrollTo(getScrollX(), max);
            } else if (getScrollY() < 0) {
                scrollTo(getScrollX(), 0);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.mIsLaidOut = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        this.mIsLaidOut = false;
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        View findFocus = findFocus();
        if (findFocus != null && this != findFocus && isWithinDeltaOfScreen(findFocus, 0, oldh)) {
            findFocus.getDrawingRect(this.mTempRect);
            offsetDescendantRectToMyCoords(findFocus, this.mTempRect);
            doScrollY(computeScrollDeltaToGetChildRectOnScreen(this.mTempRect));
        }
    }

    private static boolean isViewDescendantOf(View child, View parent) {
        if (child == parent) {
            return true;
        }
        Object parent2 = child.getParent();
        return (parent2 instanceof ViewGroup) && isViewDescendantOf((View) parent2, parent);
    }

    public void fling(int velocityY) {
        if (getChildCount() > 0) {
            int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
            this.mScroller.fling(getScrollX(), getScrollY(), 0, velocityY, 0, 0, 0, Math.max(0, getChildAt(0).getHeight() - height), 0, height / 2);
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    private void flingWithNestedDispatch(int velocityY) {
        int scrollY = getScrollY();
        boolean z = (scrollY > 0 || velocityY > 0) && (scrollY < getScrollRange() || velocityY < 0);
        if (!dispatchNestedPreFling(0.0f, velocityY)) {
            dispatchNestedFling(0.0f, velocityY, z);
            if (z) {
                fling(velocityY);
            }
        }
    }

    private void endDrag() {
        this.mIsBeingDragged = false;
        recycleVelocityTracker();
        stopNestedScroll();
        if (this.mEdgeGlowTop != null) {
            this.mEdgeGlowTop.onRelease();
            this.mEdgeGlowBottom.onRelease();
        }
    }

    @Override // android.view.View
    public void scrollTo(int x, int y) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            int x2 = clamp(x, (getWidth() - getPaddingRight()) - getPaddingLeft(), childAt.getWidth());
            int y2 = clamp(y, (getHeight() - getPaddingBottom()) - getPaddingTop(), childAt.getHeight());
            if (x2 != getScrollX() || y2 != getScrollY()) {
                super.scrollTo(x2, y2);
            }
        }
    }

    private void ensureGlows() {
        if (ViewCompat.getOverScrollMode(this) != 2) {
            if (this.mEdgeGlowTop == null) {
                Context context = getContext();
                this.mEdgeGlowTop = new EdgeEffectCompat(context);
                this.mEdgeGlowBottom = new EdgeEffectCompat(context);
                return;
            }
            return;
        }
        this.mEdgeGlowTop = null;
        this.mEdgeGlowBottom = null;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.mEdgeGlowTop != null) {
            int scrollY = getScrollY();
            if (!this.mEdgeGlowTop.isFinished()) {
                int save = canvas.save();
                int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
                canvas.translate(getPaddingLeft(), Math.min(0, scrollY));
                this.mEdgeGlowTop.setSize(width, getHeight());
                if (this.mEdgeGlowTop.draw(canvas)) {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
                canvas.restoreToCount(save);
            }
            if (!this.mEdgeGlowBottom.isFinished()) {
                int save2 = canvas.save();
                int width2 = (getWidth() - getPaddingLeft()) - getPaddingRight();
                int height = getHeight();
                canvas.translate((-width2) + getPaddingLeft(), Math.max(getScrollRange(), scrollY) + height);
                canvas.rotate(180.0f, width2, 0.0f);
                this.mEdgeGlowBottom.setSize(width2, height);
                if (this.mEdgeGlowBottom.draw(canvas)) {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
                canvas.restoreToCount(save2);
            }
        }
    }

    private static int clamp(int n, int my, int child) {
        if (my >= child || n < 0) {
            return 0;
        }
        if (my + n > child) {
            return child - my;
        }
        return n;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        if (!(state instanceof SavedState)) {
            super.onRestoreInstanceState(state);
            return;
        }
        SavedState savedState = (SavedState) state;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mSavedState = savedState;
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.scrollPosition = getScrollY();
        return savedState;
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v4.widget.NestedScrollView.SavedState.1
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
        public int scrollPosition;

        SavedState(Parcelable superState) {
            super(superState);
        }

        public SavedState(Parcel source) {
            super(source);
            this.scrollPosition = source.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            super.writeToParcel(dest, flags);
            dest.writeInt(this.scrollPosition);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.scrollPosition + "}";
        }
    }

    static class AccessibilityDelegate extends AccessibilityDelegateCompat {
        AccessibilityDelegate() {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View host, int action, Bundle arguments) {
            if (super.performAccessibilityAction(host, action, arguments)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) host;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            switch (action) {
                case 4096:
                    int min = Math.min(((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()) + nestedScrollView.getScrollY(), nestedScrollView.getScrollRange());
                    if (min == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.smoothScrollTo(0, min);
                    return true;
                case 8192:
                    int max = Math.max(nestedScrollView.getScrollY() - ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (max == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.smoothScrollTo(0, max);
                    return true;
                default:
                    return false;
            }
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View host, AccessibilityNodeInfoCompat info) {
            int scrollRange;
            super.onInitializeAccessibilityNodeInfo(host, info);
            NestedScrollView nestedScrollView = (NestedScrollView) host;
            info.setClassName(ScrollView.class.getName());
            if (nestedScrollView.isEnabled() && (scrollRange = nestedScrollView.getScrollRange()) > 0) {
                info.setScrollable(true);
                if (nestedScrollView.getScrollY() > 0) {
                    info.addAction(8192);
                }
                if (nestedScrollView.getScrollY() < scrollRange) {
                    info.addAction(4096);
                }
            }
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View host, AccessibilityEvent event) {
            super.onInitializeAccessibilityEvent(host, event);
            NestedScrollView nestedScrollView = (NestedScrollView) host;
            event.setClassName(ScrollView.class.getName());
            AccessibilityRecordCompat asRecord = AccessibilityEventCompat.asRecord(event);
            asRecord.setScrollable(nestedScrollView.getScrollRange() > 0);
            asRecord.setScrollX(nestedScrollView.getScrollX());
            asRecord.setScrollY(nestedScrollView.getScrollY());
            asRecord.setMaxScrollX(nestedScrollView.getScrollX());
            asRecord.setMaxScrollY(nestedScrollView.getScrollRange());
        }
    }
}
