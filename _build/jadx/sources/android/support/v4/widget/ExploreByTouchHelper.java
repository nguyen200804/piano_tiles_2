package android.support.v4.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewParentCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityManagerCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class ExploreByTouchHelper extends AccessibilityDelegateCompat {
    public static final int HOST_ID = -1;
    public static final int INVALID_ID = Integer.MIN_VALUE;
    private final AccessibilityManager mManager;
    private ExploreByTouchNodeProvider mNodeProvider;
    private final View mView;
    private static final String DEFAULT_CLASS_NAME = View.class.getName();
    private static final Rect INVALID_PARENT_BOUNDS = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    private final Rect mTempScreenRect = new Rect();
    private final Rect mTempParentRect = new Rect();
    private final Rect mTempVisibleRect = new Rect();
    private final int[] mTempGlobalRect = new int[2];
    private int mFocusedVirtualViewId = Integer.MIN_VALUE;
    private int mHoveredVirtualViewId = Integer.MIN_VALUE;

    protected abstract int getVirtualViewAt(float f, float f2);

    protected abstract void getVisibleVirtualViews(List<Integer> list);

    protected abstract boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle);

    protected abstract void onPopulateEventForVirtualView(int i, AccessibilityEvent accessibilityEvent);

    protected abstract void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    public ExploreByTouchHelper(View forView) {
        if (forView == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.mView = forView;
        this.mManager = (AccessibilityManager) forView.getContext().getSystemService("accessibility");
    }

    @Override // android.support.v4.view.AccessibilityDelegateCompat
    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View host) {
        if (this.mNodeProvider == null) {
            this.mNodeProvider = new ExploreByTouchNodeProvider();
        }
        return this.mNodeProvider;
    }

    public boolean dispatchHoverEvent(MotionEvent event) {
        if (!this.mManager.isEnabled() || !AccessibilityManagerCompat.isTouchExplorationEnabled(this.mManager)) {
            return false;
        }
        switch (event.getAction()) {
            case 7:
            case 9:
                int virtualViewAt = getVirtualViewAt(event.getX(), event.getY());
                updateHoveredVirtualView(virtualViewAt);
                break;
            case 10:
                if (this.mFocusedVirtualViewId != Integer.MIN_VALUE) {
                    updateHoveredVirtualView(Integer.MIN_VALUE);
                    break;
                }
                break;
        }
        return false;
    }

    public boolean sendEventForVirtualView(int virtualViewId, int eventType) {
        ViewParent parent;
        if (virtualViewId == Integer.MIN_VALUE || !this.mManager.isEnabled() || (parent = this.mView.getParent()) == null) {
            return false;
        }
        return ViewParentCompat.requestSendAccessibilityEvent(parent, this.mView, createEvent(virtualViewId, eventType));
    }

    public void invalidateRoot() {
        invalidateVirtualView(-1);
    }

    public void invalidateVirtualView(int virtualViewId) {
        sendEventForVirtualView(virtualViewId, 2048);
    }

    public int getFocusedVirtualView() {
        return this.mFocusedVirtualViewId;
    }

    private void updateHoveredVirtualView(int virtualViewId) {
        if (this.mHoveredVirtualViewId != virtualViewId) {
            int i = this.mHoveredVirtualViewId;
            this.mHoveredVirtualViewId = virtualViewId;
            sendEventForVirtualView(virtualViewId, 128);
            sendEventForVirtualView(i, 256);
        }
    }

    private AccessibilityEvent createEvent(int virtualViewId, int eventType) {
        switch (virtualViewId) {
            case -1:
                return createEventForHost(eventType);
            default:
                return createEventForChild(virtualViewId, eventType);
        }
    }

    private AccessibilityEvent createEventForHost(int eventType) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(eventType);
        ViewCompat.onInitializeAccessibilityEvent(this.mView, obtain);
        return obtain;
    }

    private AccessibilityEvent createEventForChild(int virtualViewId, int eventType) {
        AccessibilityEvent obtain = AccessibilityEvent.obtain(eventType);
        obtain.setEnabled(true);
        obtain.setClassName(DEFAULT_CLASS_NAME);
        onPopulateEventForVirtualView(virtualViewId, obtain);
        if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        obtain.setPackageName(this.mView.getContext().getPackageName());
        AccessibilityEventCompat.asRecord(obtain).setSource(this.mView, virtualViewId);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AccessibilityNodeInfoCompat createNode(int virtualViewId) {
        switch (virtualViewId) {
            case -1:
                return createNodeForHost();
            default:
                return createNodeForChild(virtualViewId);
        }
    }

    private AccessibilityNodeInfoCompat createNodeForHost() {
        AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(this.mView);
        ViewCompat.onInitializeAccessibilityNodeInfo(this.mView, obtain);
        onPopulateNodeForHost(obtain);
        LinkedList linkedList = new LinkedList();
        getVisibleVirtualViews(linkedList);
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            obtain.addChild(this.mView, ((Integer) it.next()).intValue());
        }
        return obtain;
    }

    private AccessibilityNodeInfoCompat createNodeForChild(int virtualViewId) {
        AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain();
        obtain.setEnabled(true);
        obtain.setClassName(DEFAULT_CLASS_NAME);
        obtain.setBoundsInParent(INVALID_PARENT_BOUNDS);
        onPopulateNodeForVirtualView(virtualViewId, obtain);
        if (obtain.getText() == null && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        obtain.getBoundsInParent(this.mTempParentRect);
        if (this.mTempParentRect.equals(INVALID_PARENT_BOUNDS)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = obtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        obtain.setPackageName(this.mView.getContext().getPackageName());
        obtain.setSource(this.mView, virtualViewId);
        obtain.setParent(this.mView);
        if (this.mFocusedVirtualViewId == virtualViewId) {
            obtain.setAccessibilityFocused(true);
            obtain.addAction(128);
        } else {
            obtain.setAccessibilityFocused(false);
            obtain.addAction(64);
        }
        if (intersectVisibleToUser(this.mTempParentRect)) {
            obtain.setVisibleToUser(true);
            obtain.setBoundsInParent(this.mTempParentRect);
        }
        this.mView.getLocationOnScreen(this.mTempGlobalRect);
        int i = this.mTempGlobalRect[0];
        int i2 = this.mTempGlobalRect[1];
        this.mTempScreenRect.set(this.mTempParentRect);
        this.mTempScreenRect.offset(i, i2);
        obtain.setBoundsInScreen(this.mTempScreenRect);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean performAction(int virtualViewId, int action, Bundle arguments) {
        switch (virtualViewId) {
            case -1:
                return performActionForHost(action, arguments);
            default:
                return performActionForChild(virtualViewId, action, arguments);
        }
    }

    private boolean performActionForHost(int action, Bundle arguments) {
        return ViewCompat.performAccessibilityAction(this.mView, action, arguments);
    }

    private boolean performActionForChild(int virtualViewId, int action, Bundle arguments) {
        switch (action) {
            case 64:
            case 128:
                return manageFocusForChild(virtualViewId, action, arguments);
            default:
                return onPerformActionForVirtualView(virtualViewId, action, arguments);
        }
    }

    private boolean manageFocusForChild(int virtualViewId, int action, Bundle arguments) {
        switch (action) {
            case 64:
                return requestAccessibilityFocus(virtualViewId);
            case 128:
                return clearAccessibilityFocus(virtualViewId);
            default:
                return false;
        }
    }

    private boolean intersectVisibleToUser(Rect localRect) {
        if (localRect == null || localRect.isEmpty()) {
            return false;
        }
        if (this.mView.getWindowVisibility() != 0) {
            return false;
        }
        Object parent = this.mView.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (ViewCompat.getAlpha(view) <= 0.0f || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        if (parent != null && this.mView.getLocalVisibleRect(this.mTempVisibleRect)) {
            return localRect.intersect(this.mTempVisibleRect);
        }
        return false;
    }

    private boolean isAccessibilityFocused(int virtualViewId) {
        return this.mFocusedVirtualViewId == virtualViewId;
    }

    private boolean requestAccessibilityFocus(int virtualViewId) {
        if (!this.mManager.isEnabled() || !AccessibilityManagerCompat.isTouchExplorationEnabled(this.mManager) || isAccessibilityFocused(virtualViewId)) {
            return false;
        }
        if (this.mFocusedVirtualViewId != Integer.MIN_VALUE) {
            sendEventForVirtualView(this.mFocusedVirtualViewId, 65536);
        }
        this.mFocusedVirtualViewId = virtualViewId;
        this.mView.invalidate();
        sendEventForVirtualView(virtualViewId, 32768);
        return true;
    }

    private boolean clearAccessibilityFocus(int virtualViewId) {
        if (!isAccessibilityFocused(virtualViewId)) {
            return false;
        }
        this.mFocusedVirtualViewId = Integer.MIN_VALUE;
        this.mView.invalidate();
        sendEventForVirtualView(virtualViewId, 65536);
        return true;
    }

    public void onPopulateNodeForHost(AccessibilityNodeInfoCompat node) {
    }

    private class ExploreByTouchNodeProvider extends AccessibilityNodeProviderCompat {
        private ExploreByTouchNodeProvider() {
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeProviderCompat
        public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(int virtualViewId) {
            return ExploreByTouchHelper.this.createNode(virtualViewId);
        }

        @Override // android.support.v4.view.accessibility.AccessibilityNodeProviderCompat
        public boolean performAction(int virtualViewId, int action, Bundle arguments) {
            return ExploreByTouchHelper.this.performAction(virtualViewId, action, arguments);
        }
    }
}
