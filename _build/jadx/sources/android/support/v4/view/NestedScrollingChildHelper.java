package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NestedScrollingChildHelper {
    private boolean mIsNestedScrollingEnabled;
    private ViewParent mNestedScrollingParent;
    private int[] mTempNestedScrollConsumed;
    private final View mView;

    public NestedScrollingChildHelper(View view) {
        this.mView = view;
    }

    public void setNestedScrollingEnabled(boolean enabled) {
        if (this.mIsNestedScrollingEnabled) {
            ViewCompat.stopNestedScroll(this.mView);
        }
        this.mIsNestedScrollingEnabled = enabled;
    }

    public boolean isNestedScrollingEnabled() {
        return this.mIsNestedScrollingEnabled;
    }

    public boolean hasNestedScrollingParent() {
        return this.mNestedScrollingParent != null;
    }

    public boolean startNestedScroll(int axes) {
        if (hasNestedScrollingParent()) {
            return true;
        }
        if (isNestedScrollingEnabled()) {
            View view = this.mView;
            for (ViewParent parent = this.mView.getParent(); parent != null; parent = parent.getParent()) {
                if (ViewParentCompat.onStartNestedScroll(parent, view, this.mView, axes)) {
                    this.mNestedScrollingParent = parent;
                    ViewParentCompat.onNestedScrollAccepted(parent, view, this.mView, axes);
                    return true;
                }
                if (parent instanceof View) {
                    view = (View) parent;
                }
            }
        }
        return false;
    }

    public void stopNestedScroll() {
        if (this.mNestedScrollingParent != null) {
            ViewParentCompat.onStopNestedScroll(this.mNestedScrollingParent, this.mView);
            this.mNestedScrollingParent = null;
        }
    }

    public boolean dispatchNestedScroll(int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int[] offsetInWindow) {
        int i;
        int i2;
        if (!isNestedScrollingEnabled() || this.mNestedScrollingParent == null) {
            return false;
        }
        if (dxConsumed != 0 || dyConsumed != 0 || dxUnconsumed != 0 || dyUnconsumed != 0) {
            if (offsetInWindow != null) {
                this.mView.getLocationInWindow(offsetInWindow);
                int i3 = offsetInWindow[0];
                i = offsetInWindow[1];
                i2 = i3;
            } else {
                i = 0;
                i2 = 0;
            }
            ViewParentCompat.onNestedScroll(this.mNestedScrollingParent, this.mView, dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed);
            if (offsetInWindow != null) {
                this.mView.getLocationInWindow(offsetInWindow);
                offsetInWindow[0] = offsetInWindow[0] - i2;
                offsetInWindow[1] = offsetInWindow[1] - i;
            }
            return true;
        }
        if (offsetInWindow == null) {
            return false;
        }
        offsetInWindow[0] = 0;
        offsetInWindow[1] = 0;
        return false;
    }

    public boolean dispatchNestedPreScroll(int dx, int dy, int[] consumed, int[] offsetInWindow) {
        int i;
        int i2;
        if (!isNestedScrollingEnabled() || this.mNestedScrollingParent == null) {
            return false;
        }
        if (dx != 0 || dy != 0) {
            if (offsetInWindow != null) {
                this.mView.getLocationInWindow(offsetInWindow);
                i2 = offsetInWindow[0];
                i = offsetInWindow[1];
            } else {
                i = 0;
                i2 = 0;
            }
            if (consumed == null) {
                if (this.mTempNestedScrollConsumed == null) {
                    this.mTempNestedScrollConsumed = new int[2];
                }
                consumed = this.mTempNestedScrollConsumed;
            }
            consumed[0] = 0;
            consumed[1] = 0;
            ViewParentCompat.onNestedPreScroll(this.mNestedScrollingParent, this.mView, dx, dy, consumed);
            if (offsetInWindow != null) {
                this.mView.getLocationInWindow(offsetInWindow);
                offsetInWindow[0] = offsetInWindow[0] - i2;
                offsetInWindow[1] = offsetInWindow[1] - i;
            }
            return (consumed[0] == 0 && consumed[1] == 0) ? false : true;
        }
        if (offsetInWindow == null) {
            return false;
        }
        offsetInWindow[0] = 0;
        offsetInWindow[1] = 0;
        return false;
    }

    public boolean dispatchNestedFling(float velocityX, float velocityY, boolean consumed) {
        if (!isNestedScrollingEnabled() || this.mNestedScrollingParent == null) {
            return false;
        }
        return ViewParentCompat.onNestedFling(this.mNestedScrollingParent, this.mView, velocityX, velocityY, consumed);
    }

    public boolean dispatchNestedPreFling(float velocityX, float velocityY) {
        if (!isNestedScrollingEnabled() || this.mNestedScrollingParent == null) {
            return false;
        }
        return ViewParentCompat.onNestedPreFling(this.mNestedScrollingParent, this.mView, velocityX, velocityY);
    }

    public void onDetachedFromWindow() {
        ViewCompat.stopNestedScroll(this.mView);
    }

    public void onStopNestedScroll(View child) {
        ViewCompat.stopNestedScroll(this.mView);
    }
}
