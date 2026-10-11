package android.support.v4.widget;

import android.content.Context;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import java.util.Arrays;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ViewDragHelper {
    private static final int BASE_SETTLE_DURATION = 256;
    public static final int DIRECTION_ALL = 3;
    public static final int DIRECTION_HORIZONTAL = 1;
    public static final int DIRECTION_VERTICAL = 2;
    public static final int EDGE_ALL = 15;
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    private static final int EDGE_SIZE = 20;
    public static final int EDGE_TOP = 4;
    public static final int INVALID_POINTER = -1;
    private static final int MAX_SETTLE_DURATION = 600;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "ViewDragHelper";
    private static final Interpolator sInterpolator = new Interpolator() { // from class: android.support.v4.widget.ViewDragHelper.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float t) {
            float t2 = t - 1.0f;
            return (t2 * t2 * t2 * t2 * t2) + 1.0f;
        }
    };
    private final Callback mCallback;
    private View mCapturedView;
    private int mDragState;
    private int[] mEdgeDragsInProgress;
    private int[] mEdgeDragsLocked;
    private int mEdgeSize;
    private int[] mInitialEdgesTouched;
    private float[] mInitialMotionX;
    private float[] mInitialMotionY;
    private float[] mLastMotionX;
    private float[] mLastMotionY;
    private float mMaxVelocity;
    private float mMinVelocity;
    private final ViewGroup mParentView;
    private int mPointersDown;
    private boolean mReleaseInProgress;
    private ScrollerCompat mScroller;
    private int mTouchSlop;
    private int mTrackingEdges;
    private VelocityTracker mVelocityTracker;
    private int mActivePointerId = -1;
    private final Runnable mSetIdleRunnable = new Runnable() { // from class: android.support.v4.widget.ViewDragHelper.2
        @Override // java.lang.Runnable
        public void run() {
            ViewDragHelper.this.setDragState(0);
        }
    };

    public static abstract class Callback {
        public abstract boolean tryCaptureView(View view, int i);

        public void onViewDragStateChanged(int state) {
        }

        public void onViewPositionChanged(View changedView, int left, int top, int dx, int dy) {
        }

        public void onViewCaptured(View capturedChild, int activePointerId) {
        }

        public void onViewReleased(View releasedChild, float xvel, float yvel) {
        }

        public void onEdgeTouched(int edgeFlags, int pointerId) {
        }

        public boolean onEdgeLock(int edgeFlags) {
            return false;
        }

        public void onEdgeDragStarted(int edgeFlags, int pointerId) {
        }

        public int getOrderedChildIndex(int index) {
            return index;
        }

        public int getViewHorizontalDragRange(View child) {
            return 0;
        }

        public int getViewVerticalDragRange(View child) {
            return 0;
        }

        public int clampViewPositionHorizontal(View child, int left, int dx) {
            return 0;
        }

        public int clampViewPositionVertical(View child, int top, int dy) {
            return 0;
        }
    }

    public static ViewDragHelper create(ViewGroup forParent, Callback cb) {
        return new ViewDragHelper(forParent.getContext(), forParent, cb);
    }

    public static ViewDragHelper create(ViewGroup forParent, float sensitivity, Callback cb) {
        ViewDragHelper create = create(forParent, cb);
        create.mTouchSlop = (int) (create.mTouchSlop * (1.0f / sensitivity));
        return create;
    }

    private ViewDragHelper(Context context, ViewGroup forParent, Callback cb) {
        if (forParent == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (cb == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.mParentView = forParent;
        this.mCallback = cb;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mEdgeSize = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mMaxVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mMinVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mScroller = ScrollerCompat.create(context, sInterpolator);
    }

    public void setMinVelocity(float minVel) {
        this.mMinVelocity = minVel;
    }

    public float getMinVelocity() {
        return this.mMinVelocity;
    }

    public int getViewDragState() {
        return this.mDragState;
    }

    public void setEdgeTrackingEnabled(int edgeFlags) {
        this.mTrackingEdges = edgeFlags;
    }

    public int getEdgeSize() {
        return this.mEdgeSize;
    }

    public void captureChildView(View childView, int activePointerId) {
        if (childView.getParent() != this.mParentView) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.mParentView + ")");
        }
        this.mCapturedView = childView;
        this.mActivePointerId = activePointerId;
        this.mCallback.onViewCaptured(childView, activePointerId);
        setDragState(1);
    }

    public View getCapturedView() {
        return this.mCapturedView;
    }

    public int getActivePointerId() {
        return this.mActivePointerId;
    }

    public int getTouchSlop() {
        return this.mTouchSlop;
    }

    public void cancel() {
        this.mActivePointerId = -1;
        clearMotionHistory();
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public void abort() {
        cancel();
        if (this.mDragState == 2) {
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            this.mScroller.abortAnimation();
            int currX2 = this.mScroller.getCurrX();
            int currY2 = this.mScroller.getCurrY();
            this.mCallback.onViewPositionChanged(this.mCapturedView, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        setDragState(0);
    }

    public boolean smoothSlideViewTo(View child, int finalLeft, int finalTop) {
        this.mCapturedView = child;
        this.mActivePointerId = -1;
        boolean forceSettleCapturedViewAt = forceSettleCapturedViewAt(finalLeft, finalTop, 0, 0);
        if (!forceSettleCapturedViewAt && this.mDragState == 0 && this.mCapturedView != null) {
            this.mCapturedView = null;
        }
        return forceSettleCapturedViewAt;
    }

    public boolean settleCapturedViewAt(int finalLeft, int finalTop) {
        if (!this.mReleaseInProgress) {
            throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
        }
        return forceSettleCapturedViewAt(finalLeft, finalTop, (int) VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), (int) VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId));
    }

    private boolean forceSettleCapturedViewAt(int finalLeft, int finalTop, int xvel, int yvel) {
        int left = this.mCapturedView.getLeft();
        int top = this.mCapturedView.getTop();
        int i = finalLeft - left;
        int i2 = finalTop - top;
        if (i == 0 && i2 == 0) {
            this.mScroller.abortAnimation();
            setDragState(0);
            return false;
        }
        this.mScroller.startScroll(left, top, i, i2, computeSettleDuration(this.mCapturedView, i, i2, xvel, yvel));
        setDragState(2);
        return true;
    }

    private int computeSettleDuration(View child, int dx, int dy, int xvel, int yvel) {
        int xvel2 = clampMag(xvel, (int) this.mMinVelocity, (int) this.mMaxVelocity);
        int yvel2 = clampMag(yvel, (int) this.mMinVelocity, (int) this.mMaxVelocity);
        int abs = Math.abs(dx);
        int abs2 = Math.abs(dy);
        int abs3 = Math.abs(xvel2);
        int abs4 = Math.abs(yvel2);
        int i = abs3 + abs4;
        int i2 = abs + abs2;
        return (int) (((yvel2 != 0 ? abs4 / i : abs2 / i2) * computeAxisDuration(dy, yvel2, this.mCallback.getViewVerticalDragRange(child))) + ((xvel2 != 0 ? abs3 / i : abs / i2) * computeAxisDuration(dx, xvel2, this.mCallback.getViewHorizontalDragRange(child))));
    }

    private int computeAxisDuration(int delta, int velocity, int motionRange) {
        int abs;
        if (delta == 0) {
            return 0;
        }
        int width = this.mParentView.getWidth();
        int i = width / 2;
        float distanceInfluenceForSnapDuration = (distanceInfluenceForSnapDuration(Math.min(1.0f, Math.abs(delta) / width)) * i) + i;
        int velocity2 = Math.abs(velocity);
        if (velocity2 > 0) {
            abs = Math.round(Math.abs(distanceInfluenceForSnapDuration / velocity2) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(delta) / motionRange) + 1.0f) * 256.0f);
        }
        return Math.min(abs, 600);
    }

    private int clampMag(int value, int absMin, int absMax) {
        int abs = Math.abs(value);
        if (abs < absMin) {
            return 0;
        }
        return abs > absMax ? value <= 0 ? -absMax : absMax : value;
    }

    private float clampMag(float value, float absMin, float absMax) {
        float abs = Math.abs(value);
        if (abs < absMin) {
            return 0.0f;
        }
        return abs > absMax ? value <= 0.0f ? -absMax : absMax : value;
    }

    private float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((float) ((f - 0.5f) * 0.4712389167638204d));
    }

    public void flingCapturedView(int minLeft, int minTop, int maxLeft, int maxTop) {
        if (!this.mReleaseInProgress) {
            throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
        }
        this.mScroller.fling(this.mCapturedView.getLeft(), this.mCapturedView.getTop(), (int) VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), (int) VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId), minLeft, maxLeft, minTop, maxTop);
        setDragState(2);
    }

    public boolean continueSettling(boolean deferCallbacks) {
        boolean z;
        if (this.mDragState == 2) {
            boolean computeScrollOffset = this.mScroller.computeScrollOffset();
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            int left = currX - this.mCapturedView.getLeft();
            int top = currY - this.mCapturedView.getTop();
            if (left != 0) {
                ViewCompat.offsetLeftAndRight(this.mCapturedView, left);
            }
            if (top != 0) {
                ViewCompat.offsetTopAndBottom(this.mCapturedView, top);
            }
            if (left != 0 || top != 0) {
                this.mCallback.onViewPositionChanged(this.mCapturedView, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.mScroller.getFinalX() && currY == this.mScroller.getFinalY()) {
                this.mScroller.abortAnimation();
                z = false;
            } else {
                z = computeScrollOffset;
            }
            if (!z) {
                if (deferCallbacks) {
                    this.mParentView.post(this.mSetIdleRunnable);
                } else {
                    setDragState(0);
                }
            }
        }
        return this.mDragState == 2;
    }

    private void dispatchViewReleased(float xvel, float yvel) {
        this.mReleaseInProgress = true;
        this.mCallback.onViewReleased(this.mCapturedView, xvel, yvel);
        this.mReleaseInProgress = false;
        if (this.mDragState == 1) {
            setDragState(0);
        }
    }

    private void clearMotionHistory() {
        if (this.mInitialMotionX != null) {
            Arrays.fill(this.mInitialMotionX, 0.0f);
            Arrays.fill(this.mInitialMotionY, 0.0f);
            Arrays.fill(this.mLastMotionX, 0.0f);
            Arrays.fill(this.mLastMotionY, 0.0f);
            Arrays.fill(this.mInitialEdgesTouched, 0);
            Arrays.fill(this.mEdgeDragsInProgress, 0);
            Arrays.fill(this.mEdgeDragsLocked, 0);
            this.mPointersDown = 0;
        }
    }

    private void clearMotionHistory(int pointerId) {
        if (this.mInitialMotionX != null) {
            this.mInitialMotionX[pointerId] = 0.0f;
            this.mInitialMotionY[pointerId] = 0.0f;
            this.mLastMotionX[pointerId] = 0.0f;
            this.mLastMotionY[pointerId] = 0.0f;
            this.mInitialEdgesTouched[pointerId] = 0;
            this.mEdgeDragsInProgress[pointerId] = 0;
            this.mEdgeDragsLocked[pointerId] = 0;
            this.mPointersDown &= (1 << pointerId) ^ (-1);
        }
    }

    private void ensureMotionHistorySizeForId(int pointerId) {
        if (this.mInitialMotionX == null || this.mInitialMotionX.length <= pointerId) {
            float[] fArr = new float[pointerId + 1];
            float[] fArr2 = new float[pointerId + 1];
            float[] fArr3 = new float[pointerId + 1];
            float[] fArr4 = new float[pointerId + 1];
            int[] iArr = new int[pointerId + 1];
            int[] iArr2 = new int[pointerId + 1];
            int[] iArr3 = new int[pointerId + 1];
            if (this.mInitialMotionX != null) {
                System.arraycopy(this.mInitialMotionX, 0, fArr, 0, this.mInitialMotionX.length);
                System.arraycopy(this.mInitialMotionY, 0, fArr2, 0, this.mInitialMotionY.length);
                System.arraycopy(this.mLastMotionX, 0, fArr3, 0, this.mLastMotionX.length);
                System.arraycopy(this.mLastMotionY, 0, fArr4, 0, this.mLastMotionY.length);
                System.arraycopy(this.mInitialEdgesTouched, 0, iArr, 0, this.mInitialEdgesTouched.length);
                System.arraycopy(this.mEdgeDragsInProgress, 0, iArr2, 0, this.mEdgeDragsInProgress.length);
                System.arraycopy(this.mEdgeDragsLocked, 0, iArr3, 0, this.mEdgeDragsLocked.length);
            }
            this.mInitialMotionX = fArr;
            this.mInitialMotionY = fArr2;
            this.mLastMotionX = fArr3;
            this.mLastMotionY = fArr4;
            this.mInitialEdgesTouched = iArr;
            this.mEdgeDragsInProgress = iArr2;
            this.mEdgeDragsLocked = iArr3;
        }
    }

    private void saveInitialMotion(float x, float y, int pointerId) {
        ensureMotionHistorySizeForId(pointerId);
        float[] fArr = this.mInitialMotionX;
        this.mLastMotionX[pointerId] = x;
        fArr[pointerId] = x;
        float[] fArr2 = this.mInitialMotionY;
        this.mLastMotionY[pointerId] = y;
        fArr2[pointerId] = y;
        this.mInitialEdgesTouched[pointerId] = getEdgesTouched((int) x, (int) y);
        this.mPointersDown |= 1 << pointerId;
    }

    private void saveLastMotion(MotionEvent ev) {
        int pointerCount = MotionEventCompat.getPointerCount(ev);
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = MotionEventCompat.getPointerId(ev, i);
            float x = MotionEventCompat.getX(ev, i);
            float y = MotionEventCompat.getY(ev, i);
            this.mLastMotionX[pointerId] = x;
            this.mLastMotionY[pointerId] = y;
        }
    }

    public boolean isPointerDown(int pointerId) {
        return (this.mPointersDown & (1 << pointerId)) != 0;
    }

    void setDragState(int state) {
        this.mParentView.removeCallbacks(this.mSetIdleRunnable);
        if (this.mDragState != state) {
            this.mDragState = state;
            this.mCallback.onViewDragStateChanged(state);
            if (this.mDragState == 0) {
                this.mCapturedView = null;
            }
        }
    }

    boolean tryCaptureViewForDrag(View toCapture, int pointerId) {
        if (toCapture == this.mCapturedView && this.mActivePointerId == pointerId) {
            return true;
        }
        if (toCapture != null && this.mCallback.tryCaptureView(toCapture, pointerId)) {
            this.mActivePointerId = pointerId;
            captureChildView(toCapture, pointerId);
            return true;
        }
        return false;
    }

    protected boolean canScroll(View v, boolean checkV, int dx, int dy, int x, int y) {
        if (v instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) v;
            int scrollX = v.getScrollX();
            int scrollY = v.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (x + scrollX >= childAt.getLeft() && x + scrollX < childAt.getRight() && y + scrollY >= childAt.getTop() && y + scrollY < childAt.getBottom() && canScroll(childAt, true, dx, dy, (x + scrollX) - childAt.getLeft(), (y + scrollY) - childAt.getTop())) {
                    return true;
                }
            }
        }
        return checkV && (ViewCompat.canScrollHorizontally(v, -dx) || ViewCompat.canScrollVertically(v, -dy));
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ff, code lost:
    
        if (r8 != r7) goto L56;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean shouldInterceptTouchEvent(android.view.MotionEvent r14) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.ViewDragHelper.shouldInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public void processTouchEvent(MotionEvent ev) {
        int i;
        int i2 = 0;
        int actionMasked = MotionEventCompat.getActionMasked(ev);
        int actionIndex = MotionEventCompat.getActionIndex(ev);
        if (actionMasked == 0) {
            cancel();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(ev);
        switch (actionMasked) {
            case 0:
                float x = ev.getX();
                float y = ev.getY();
                int pointerId = MotionEventCompat.getPointerId(ev, 0);
                View findTopChildUnder = findTopChildUnder((int) x, (int) y);
                saveInitialMotion(x, y, pointerId);
                tryCaptureViewForDrag(findTopChildUnder, pointerId);
                int i3 = this.mInitialEdgesTouched[pointerId];
                if ((this.mTrackingEdges & i3) != 0) {
                    this.mCallback.onEdgeTouched(i3 & this.mTrackingEdges, pointerId);
                    break;
                }
                break;
            case 1:
                if (this.mDragState == 1) {
                    releaseViewForPointerUp();
                }
                cancel();
                break;
            case 2:
                if (this.mDragState == 1) {
                    if (isValidPointerForActionMove(this.mActivePointerId)) {
                        int findPointerIndex = MotionEventCompat.findPointerIndex(ev, this.mActivePointerId);
                        float x2 = MotionEventCompat.getX(ev, findPointerIndex);
                        float y2 = MotionEventCompat.getY(ev, findPointerIndex);
                        int i4 = (int) (x2 - this.mLastMotionX[this.mActivePointerId]);
                        int i5 = (int) (y2 - this.mLastMotionY[this.mActivePointerId]);
                        dragTo(this.mCapturedView.getLeft() + i4, this.mCapturedView.getTop() + i5, i4, i5);
                        saveLastMotion(ev);
                        break;
                    }
                } else {
                    int pointerCount = MotionEventCompat.getPointerCount(ev);
                    while (i2 < pointerCount) {
                        int pointerId2 = MotionEventCompat.getPointerId(ev, i2);
                        if (isValidPointerForActionMove(pointerId2)) {
                            float x3 = MotionEventCompat.getX(ev, i2);
                            float y3 = MotionEventCompat.getY(ev, i2);
                            float f = x3 - this.mInitialMotionX[pointerId2];
                            float f2 = y3 - this.mInitialMotionY[pointerId2];
                            reportNewEdgeDrags(f, f2, pointerId2);
                            if (this.mDragState != 1) {
                                View findTopChildUnder2 = findTopChildUnder((int) x3, (int) y3);
                                if (checkTouchSlop(findTopChildUnder2, f, f2) && tryCaptureViewForDrag(findTopChildUnder2, pointerId2)) {
                                }
                            }
                            saveLastMotion(ev);
                            break;
                        }
                        i2++;
                    }
                    saveLastMotion(ev);
                }
                break;
            case 3:
                if (this.mDragState == 1) {
                    dispatchViewReleased(0.0f, 0.0f);
                }
                cancel();
                break;
            case 5:
                int pointerId3 = MotionEventCompat.getPointerId(ev, actionIndex);
                float x4 = MotionEventCompat.getX(ev, actionIndex);
                float y4 = MotionEventCompat.getY(ev, actionIndex);
                saveInitialMotion(x4, y4, pointerId3);
                if (this.mDragState == 0) {
                    tryCaptureViewForDrag(findTopChildUnder((int) x4, (int) y4), pointerId3);
                    int i6 = this.mInitialEdgesTouched[pointerId3];
                    if ((this.mTrackingEdges & i6) != 0) {
                        this.mCallback.onEdgeTouched(i6 & this.mTrackingEdges, pointerId3);
                        break;
                    }
                } else if (isCapturedViewUnder((int) x4, (int) y4)) {
                    tryCaptureViewForDrag(this.mCapturedView, pointerId3);
                    break;
                }
                break;
            case 6:
                int pointerId4 = MotionEventCompat.getPointerId(ev, actionIndex);
                if (this.mDragState == 1 && pointerId4 == this.mActivePointerId) {
                    int pointerCount2 = MotionEventCompat.getPointerCount(ev);
                    while (true) {
                        if (i2 >= pointerCount2) {
                            i = -1;
                        } else {
                            int pointerId5 = MotionEventCompat.getPointerId(ev, i2);
                            if (pointerId5 != this.mActivePointerId) {
                                if (findTopChildUnder((int) MotionEventCompat.getX(ev, i2), (int) MotionEventCompat.getY(ev, i2)) == this.mCapturedView && tryCaptureViewForDrag(this.mCapturedView, pointerId5)) {
                                    i = this.mActivePointerId;
                                }
                            }
                            i2++;
                        }
                    }
                    if (i == -1) {
                        releaseViewForPointerUp();
                    }
                }
                clearMotionHistory(pointerId4);
                break;
        }
    }

    private void reportNewEdgeDrags(float dx, float dy, int pointerId) {
        int i = checkNewEdgeDrag(dx, dy, pointerId, 1) ? 1 : 0;
        if (checkNewEdgeDrag(dy, dx, pointerId, 4)) {
            i |= 4;
        }
        if (checkNewEdgeDrag(dx, dy, pointerId, 2)) {
            i |= 2;
        }
        if (checkNewEdgeDrag(dy, dx, pointerId, 8)) {
            i |= 8;
        }
        if (i != 0) {
            int[] iArr = this.mEdgeDragsInProgress;
            iArr[pointerId] = iArr[pointerId] | i;
            this.mCallback.onEdgeDragStarted(i, pointerId);
        }
    }

    private boolean checkNewEdgeDrag(float delta, float odelta, int pointerId, int edge) {
        float abs = Math.abs(delta);
        float abs2 = Math.abs(odelta);
        if ((this.mInitialEdgesTouched[pointerId] & edge) != edge || (this.mTrackingEdges & edge) == 0 || (this.mEdgeDragsLocked[pointerId] & edge) == edge || (this.mEdgeDragsInProgress[pointerId] & edge) == edge) {
            return false;
        }
        if (abs <= this.mTouchSlop && abs2 <= this.mTouchSlop) {
            return false;
        }
        if (abs >= abs2 * 0.5f || !this.mCallback.onEdgeLock(edge)) {
            return (this.mEdgeDragsInProgress[pointerId] & edge) == 0 && abs > ((float) this.mTouchSlop);
        }
        int[] iArr = this.mEdgeDragsLocked;
        iArr[pointerId] = iArr[pointerId] | edge;
        return false;
    }

    private boolean checkTouchSlop(View child, float dx, float dy) {
        if (child == null) {
            return false;
        }
        boolean z = this.mCallback.getViewHorizontalDragRange(child) > 0;
        boolean z2 = this.mCallback.getViewVerticalDragRange(child) > 0;
        return (z && z2) ? (dx * dx) + (dy * dy) > ((float) (this.mTouchSlop * this.mTouchSlop)) : z ? Math.abs(dx) > ((float) this.mTouchSlop) : z2 && Math.abs(dy) > ((float) this.mTouchSlop);
    }

    public boolean checkTouchSlop(int directions) {
        int length = this.mInitialMotionX.length;
        for (int i = 0; i < length; i++) {
            if (checkTouchSlop(directions, i)) {
                return true;
            }
        }
        return false;
    }

    public boolean checkTouchSlop(int directions, int pointerId) {
        if (!isPointerDown(pointerId)) {
            return false;
        }
        boolean z = (directions & 1) == 1;
        boolean z2 = (directions & 2) == 2;
        float f = this.mLastMotionX[pointerId] - this.mInitialMotionX[pointerId];
        float f2 = this.mLastMotionY[pointerId] - this.mInitialMotionY[pointerId];
        return (z && z2) ? (f * f) + (f2 * f2) > ((float) (this.mTouchSlop * this.mTouchSlop)) : z ? Math.abs(f) > ((float) this.mTouchSlop) : z2 && Math.abs(f2) > ((float) this.mTouchSlop);
    }

    public boolean isEdgeTouched(int edges) {
        int length = this.mInitialEdgesTouched.length;
        for (int i = 0; i < length; i++) {
            if (isEdgeTouched(edges, i)) {
                return true;
            }
        }
        return false;
    }

    public boolean isEdgeTouched(int edges, int pointerId) {
        return isPointerDown(pointerId) && (this.mInitialEdgesTouched[pointerId] & edges) != 0;
    }

    private void releaseViewForPointerUp() {
        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxVelocity);
        dispatchViewReleased(clampMag(VelocityTrackerCompat.getXVelocity(this.mVelocityTracker, this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity), clampMag(VelocityTrackerCompat.getYVelocity(this.mVelocityTracker, this.mActivePointerId), this.mMinVelocity, this.mMaxVelocity));
    }

    private void dragTo(int left, int top, int dx, int dy) {
        int i;
        int i2;
        int left2 = this.mCapturedView.getLeft();
        int top2 = this.mCapturedView.getTop();
        if (dx != 0) {
            i = this.mCallback.clampViewPositionHorizontal(this.mCapturedView, left, dx);
            ViewCompat.offsetLeftAndRight(this.mCapturedView, i - left2);
        } else {
            i = left;
        }
        if (dy != 0) {
            i2 = this.mCallback.clampViewPositionVertical(this.mCapturedView, top, dy);
            ViewCompat.offsetTopAndBottom(this.mCapturedView, i2 - top2);
        } else {
            i2 = top;
        }
        if (dx != 0 || dy != 0) {
            this.mCallback.onViewPositionChanged(this.mCapturedView, i, i2, i - left2, i2 - top2);
        }
    }

    public boolean isCapturedViewUnder(int x, int y) {
        return isViewUnder(this.mCapturedView, x, y);
    }

    public boolean isViewUnder(View view, int x, int y) {
        return view != null && x >= view.getLeft() && x < view.getRight() && y >= view.getTop() && y < view.getBottom();
    }

    public View findTopChildUnder(int x, int y) {
        for (int childCount = this.mParentView.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.mParentView.getChildAt(this.mCallback.getOrderedChildIndex(childCount));
            if (x >= childAt.getLeft() && x < childAt.getRight() && y >= childAt.getTop() && y < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    private int getEdgesTouched(int x, int y) {
        int i = x < this.mParentView.getLeft() + this.mEdgeSize ? 1 : 0;
        if (y < this.mParentView.getTop() + this.mEdgeSize) {
            i |= 4;
        }
        if (x > this.mParentView.getRight() - this.mEdgeSize) {
            i |= 2;
        }
        return y > this.mParentView.getBottom() - this.mEdgeSize ? i | 8 : i;
    }

    private boolean isValidPointerForActionMove(int pointerId) {
        if (isPointerDown(pointerId)) {
            return true;
        }
        Log.e(TAG, "Ignoring pointerId=" + pointerId + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }
}
