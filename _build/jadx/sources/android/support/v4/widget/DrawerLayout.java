package android.support.v4.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewGroupCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.ViewDragHelper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DrawerLayout extends ViewGroup implements DrawerLayoutImpl {
    private static final boolean ALLOW_EDGE_LOCK = false;
    private static final boolean CAN_HIDE_DESCENDANTS;
    private static final boolean CHILDREN_DISALLOW_INTERCEPT = true;
    private static final int DEFAULT_SCRIM_COLOR = -1728053248;
    private static final int DRAWER_ELEVATION = 10;
    static final DrawerLayoutCompatImpl IMPL;
    private static final int[] LAYOUT_ATTRS = {R.attr.layout_gravity};
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNDEFINED = 3;
    public static final int LOCK_MODE_UNLOCKED = 0;
    private static final int MIN_DRAWER_MARGIN = 64;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final int PEEK_DELAY = 160;
    private static final boolean SET_DRAWER_SHADOW_FROM_ELEVATION;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    private static final String TAG = "DrawerLayout";
    private static final float TOUCH_SLOP_SENSITIVITY = 1.0f;
    private final ChildAccessibilityDelegate mChildAccessibilityDelegate;
    private boolean mChildrenCanceledTouch;
    private boolean mDisallowInterceptRequested;
    private boolean mDrawStatusBarBackground;
    private float mDrawerElevation;
    private int mDrawerState;
    private boolean mFirstLayout;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private Object mLastInsets;
    private final ViewDragCallback mLeftCallback;
    private final ViewDragHelper mLeftDragger;

    @Nullable
    @Deprecated
    private DrawerListener mListener;
    private List<DrawerListener> mListeners;
    private int mLockModeEnd;
    private int mLockModeLeft;
    private int mLockModeRight;
    private int mLockModeStart;
    private int mMinDrawerMargin;
    private final ArrayList<View> mNonDrawerViews;
    private final ViewDragCallback mRightCallback;
    private final ViewDragHelper mRightDragger;
    private int mScrimColor;
    private float mScrimOpacity;
    private Paint mScrimPaint;
    private Drawable mShadowEnd;
    private Drawable mShadowLeft;
    private Drawable mShadowLeftResolved;
    private Drawable mShadowRight;
    private Drawable mShadowRightResolved;
    private Drawable mShadowStart;
    private Drawable mStatusBarBackground;
    private CharSequence mTitleLeft;
    private CharSequence mTitleRight;

    interface DrawerLayoutCompatImpl {
        void applyMarginInsets(ViewGroup.MarginLayoutParams marginLayoutParams, Object obj, int i);

        void configureApplyInsets(View view);

        void dispatchChildInsets(View view, Object obj, int i);

        Drawable getDefaultStatusBarBackground(Context context);

        int getTopInset(Object obj);
    }

    public interface DrawerListener {
        void onDrawerClosed(View view);

        void onDrawerOpened(View view);

        void onDrawerSlide(View view, float f);

        void onDrawerStateChanged(int i);
    }

    static {
        CAN_HIDE_DESCENDANTS = Build.VERSION.SDK_INT >= 19;
        SET_DRAWER_SHADOW_FROM_ELEVATION = Build.VERSION.SDK_INT >= 21;
        if (Build.VERSION.SDK_INT >= 21) {
            IMPL = new DrawerLayoutCompatImplApi21();
        } else {
            IMPL = new DrawerLayoutCompatImplBase();
        }
    }

    public static abstract class SimpleDrawerListener implements DrawerListener {
        @Override // android.support.v4.widget.DrawerLayout.DrawerListener
        public void onDrawerSlide(View drawerView, float slideOffset) {
        }

        @Override // android.support.v4.widget.DrawerLayout.DrawerListener
        public void onDrawerOpened(View drawerView) {
        }

        @Override // android.support.v4.widget.DrawerLayout.DrawerListener
        public void onDrawerClosed(View drawerView) {
        }

        @Override // android.support.v4.widget.DrawerLayout.DrawerListener
        public void onDrawerStateChanged(int newState) {
        }
    }

    static class DrawerLayoutCompatImplBase implements DrawerLayoutCompatImpl {
        DrawerLayoutCompatImplBase() {
        }

        @Override // android.support.v4.widget.DrawerLayout.DrawerLayoutCompatImpl
        public void configureApplyInsets(View drawerLayout) {
        }

        @Override // android.support.v4.widget.DrawerLayout.DrawerLayoutCompatImpl
        public void dispatchChildInsets(View child, Object insets, int drawerGravity) {
        }

        @Override // android.support.v4.widget.DrawerLayout.DrawerLayoutCompatImpl
        public void applyMarginInsets(ViewGroup.MarginLayoutParams lp, Object insets, int drawerGravity) {
        }

        @Override // android.support.v4.widget.DrawerLayout.DrawerLayoutCompatImpl
        public int getTopInset(Object insets) {
            return 0;
        }

        @Override // android.support.v4.widget.DrawerLayout.DrawerLayoutCompatImpl
        public Drawable getDefaultStatusBarBackground(Context context) {
            return null;
        }
    }

    static class DrawerLayoutCompatImplApi21 implements DrawerLayoutCompatImpl {
        DrawerLayoutCompatImplApi21() {
        }

        @Override // android.support.v4.widget.DrawerLayout.DrawerLayoutCompatImpl
        public void configureApplyInsets(View drawerLayout) {
            DrawerLayoutCompatApi21.configureApplyInsets(drawerLayout);
        }

        @Override // android.support.v4.widget.DrawerLayout.DrawerLayoutCompatImpl
        public void dispatchChildInsets(View child, Object insets, int drawerGravity) {
            DrawerLayoutCompatApi21.dispatchChildInsets(child, insets, drawerGravity);
        }

        @Override // android.support.v4.widget.DrawerLayout.DrawerLayoutCompatImpl
        public void applyMarginInsets(ViewGroup.MarginLayoutParams lp, Object insets, int drawerGravity) {
            DrawerLayoutCompatApi21.applyMarginInsets(lp, insets, drawerGravity);
        }

        @Override // android.support.v4.widget.DrawerLayout.DrawerLayoutCompatImpl
        public int getTopInset(Object insets) {
            return DrawerLayoutCompatApi21.getTopInset(insets);
        }

        @Override // android.support.v4.widget.DrawerLayout.DrawerLayoutCompatImpl
        public Drawable getDefaultStatusBarBackground(Context context) {
            return DrawerLayoutCompatApi21.getDefaultStatusBarBackground(context);
        }
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public DrawerLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mChildAccessibilityDelegate = new ChildAccessibilityDelegate();
        this.mScrimColor = DEFAULT_SCRIM_COLOR;
        this.mScrimPaint = new Paint();
        this.mFirstLayout = true;
        this.mLockModeLeft = 3;
        this.mLockModeRight = 3;
        this.mLockModeStart = 3;
        this.mLockModeEnd = 3;
        this.mShadowStart = null;
        this.mShadowEnd = null;
        this.mShadowLeft = null;
        this.mShadowRight = null;
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.mMinDrawerMargin = (int) ((64.0f * f) + 0.5f);
        float f2 = 400.0f * f;
        this.mLeftCallback = new ViewDragCallback(3);
        this.mRightCallback = new ViewDragCallback(5);
        this.mLeftDragger = ViewDragHelper.create(this, 1.0f, this.mLeftCallback);
        this.mLeftDragger.setEdgeTrackingEnabled(1);
        this.mLeftDragger.setMinVelocity(f2);
        this.mLeftCallback.setDragger(this.mLeftDragger);
        this.mRightDragger = ViewDragHelper.create(this, 1.0f, this.mRightCallback);
        this.mRightDragger.setEdgeTrackingEnabled(2);
        this.mRightDragger.setMinVelocity(f2);
        this.mRightCallback.setDragger(this.mRightDragger);
        setFocusableInTouchMode(true);
        ViewCompat.setImportantForAccessibility(this, 1);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegate());
        ViewGroupCompat.setMotionEventSplittingEnabled(this, false);
        if (ViewCompat.getFitsSystemWindows(this)) {
            IMPL.configureApplyInsets(this);
            this.mStatusBarBackground = IMPL.getDefaultStatusBarBackground(context);
        }
        this.mDrawerElevation = f * 10.0f;
        this.mNonDrawerViews = new ArrayList<>();
    }

    public void setDrawerElevation(float elevation) {
        this.mDrawerElevation = elevation;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (isDrawerView(childAt)) {
                ViewCompat.setElevation(childAt, this.mDrawerElevation);
            }
        }
    }

    public float getDrawerElevation() {
        if (SET_DRAWER_SHADOW_FROM_ELEVATION) {
            return this.mDrawerElevation;
        }
        return 0.0f;
    }

    @Override // android.support.v4.widget.DrawerLayoutImpl
    public void setChildInsets(Object insets, boolean draw) {
        this.mLastInsets = insets;
        this.mDrawStatusBarBackground = draw;
        setWillNotDraw(!draw && getBackground() == null);
        requestLayout();
    }

    public void setDrawerShadow(Drawable shadowDrawable, int gravity) {
        if (!SET_DRAWER_SHADOW_FROM_ELEVATION) {
            if ((gravity & GravityCompat.START) == 8388611) {
                this.mShadowStart = shadowDrawable;
            } else if ((gravity & GravityCompat.END) == 8388613) {
                this.mShadowEnd = shadowDrawable;
            } else if ((gravity & 3) == 3) {
                this.mShadowLeft = shadowDrawable;
            } else if ((gravity & 5) == 5) {
                this.mShadowRight = shadowDrawable;
            } else {
                return;
            }
            resolveShadowDrawables();
            invalidate();
        }
    }

    public void setDrawerShadow(@DrawableRes int resId, int gravity) {
        setDrawerShadow(getResources().getDrawable(resId), gravity);
    }

    public void setScrimColor(@ColorInt int color) {
        this.mScrimColor = color;
        invalidate();
    }

    @Deprecated
    public void setDrawerListener(DrawerListener listener) {
        if (this.mListener != null) {
            removeDrawerListener(this.mListener);
        }
        if (listener != null) {
            addDrawerListener(listener);
        }
        this.mListener = listener;
    }

    public void addDrawerListener(@NonNull DrawerListener listener) {
        if (listener != null) {
            if (this.mListeners == null) {
                this.mListeners = new ArrayList();
            }
            this.mListeners.add(listener);
        }
    }

    public void removeDrawerListener(@NonNull DrawerListener listener) {
        if (listener != null && this.mListeners != null) {
            this.mListeners.remove(listener);
        }
    }

    public void setDrawerLockMode(int lockMode) {
        setDrawerLockMode(lockMode, 3);
        setDrawerLockMode(lockMode, 5);
    }

    public void setDrawerLockMode(int lockMode, int edgeGravity) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(edgeGravity, ViewCompat.getLayoutDirection(this));
        switch (edgeGravity) {
            case 3:
                this.mLockModeLeft = lockMode;
                break;
            case 5:
                this.mLockModeRight = lockMode;
                break;
            case GravityCompat.START /* 8388611 */:
                this.mLockModeStart = lockMode;
                break;
            case GravityCompat.END /* 8388613 */:
                this.mLockModeEnd = lockMode;
                break;
        }
        if (lockMode != 0) {
            (absoluteGravity == 3 ? this.mLeftDragger : this.mRightDragger).cancel();
        }
        switch (lockMode) {
            case 1:
                View findDrawerWithGravity = findDrawerWithGravity(absoluteGravity);
                if (findDrawerWithGravity != null) {
                    closeDrawer(findDrawerWithGravity);
                    break;
                }
                break;
            case 2:
                View findDrawerWithGravity2 = findDrawerWithGravity(absoluteGravity);
                if (findDrawerWithGravity2 != null) {
                    openDrawer(findDrawerWithGravity2);
                    break;
                }
                break;
        }
    }

    public void setDrawerLockMode(int lockMode, View drawerView) {
        if (!isDrawerView(drawerView)) {
            throw new IllegalArgumentException("View " + drawerView + " is not a drawer with appropriate layout_gravity");
        }
        setDrawerLockMode(lockMode, ((LayoutParams) drawerView.getLayoutParams()).gravity);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:3:0x0008 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getDrawerLockMode(int r4) {
        /*
            r3 = this;
            r2 = 3
            int r0 = android.support.v4.view.ViewCompat.getLayoutDirection(r3)
            switch(r4) {
                case 3: goto La;
                case 5: goto L1b;
                case 8388611: goto L2c;
                case 8388613: goto L3d;
                default: goto L8;
            }
        L8:
            r0 = 0
        L9:
            return r0
        La:
            int r1 = r3.mLockModeLeft
            if (r1 == r2) goto L11
            int r0 = r3.mLockModeLeft
            goto L9
        L11:
            if (r0 != 0) goto L18
            int r0 = r3.mLockModeStart
        L15:
            if (r0 == r2) goto L8
            goto L9
        L18:
            int r0 = r3.mLockModeEnd
            goto L15
        L1b:
            int r1 = r3.mLockModeRight
            if (r1 == r2) goto L22
            int r0 = r3.mLockModeRight
            goto L9
        L22:
            if (r0 != 0) goto L29
            int r0 = r3.mLockModeEnd
        L26:
            if (r0 == r2) goto L8
            goto L9
        L29:
            int r0 = r3.mLockModeStart
            goto L26
        L2c:
            int r1 = r3.mLockModeStart
            if (r1 == r2) goto L33
            int r0 = r3.mLockModeStart
            goto L9
        L33:
            if (r0 != 0) goto L3a
            int r0 = r3.mLockModeLeft
        L37:
            if (r0 == r2) goto L8
            goto L9
        L3a:
            int r0 = r3.mLockModeRight
            goto L37
        L3d:
            int r1 = r3.mLockModeEnd
            if (r1 == r2) goto L44
            int r0 = r3.mLockModeEnd
            goto L9
        L44:
            if (r0 != 0) goto L4b
            int r0 = r3.mLockModeRight
        L48:
            if (r0 == r2) goto L8
            goto L9
        L4b:
            int r0 = r3.mLockModeLeft
            goto L48
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.getDrawerLockMode(int):int");
    }

    public int getDrawerLockMode(View drawerView) {
        if (!isDrawerView(drawerView)) {
            throw new IllegalArgumentException("View " + drawerView + " is not a drawer");
        }
        return getDrawerLockMode(((LayoutParams) drawerView.getLayoutParams()).gravity);
    }

    public void setDrawerTitle(int edgeGravity, CharSequence title) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(edgeGravity, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            this.mTitleLeft = title;
        } else if (absoluteGravity == 5) {
            this.mTitleRight = title;
        }
    }

    @Nullable
    public CharSequence getDrawerTitle(int edgeGravity) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(edgeGravity, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            return this.mTitleLeft;
        }
        if (absoluteGravity == 5) {
            return this.mTitleRight;
        }
        return null;
    }

    void updateDrawerState(int forGravity, int activeState, View activeDrawer) {
        int i;
        int viewDragState = this.mLeftDragger.getViewDragState();
        int viewDragState2 = this.mRightDragger.getViewDragState();
        if (viewDragState == 1 || viewDragState2 == 1) {
            i = 1;
        } else {
            i = (viewDragState == 2 || viewDragState2 == 2) ? 2 : 0;
        }
        if (activeDrawer != null && activeState == 0) {
            LayoutParams layoutParams = (LayoutParams) activeDrawer.getLayoutParams();
            if (layoutParams.onScreen == 0.0f) {
                dispatchOnDrawerClosed(activeDrawer);
            } else if (layoutParams.onScreen == 1.0f) {
                dispatchOnDrawerOpened(activeDrawer);
            }
        }
        if (i != this.mDrawerState) {
            this.mDrawerState = i;
            if (this.mListeners != null) {
                for (int size = this.mListeners.size() - 1; size >= 0; size--) {
                    this.mListeners.get(size).onDrawerStateChanged(i);
                }
            }
        }
    }

    void dispatchOnDrawerClosed(View drawerView) {
        View rootView;
        LayoutParams layoutParams = (LayoutParams) drawerView.getLayoutParams();
        if ((layoutParams.openState & 1) != 1) {
            return;
        }
        layoutParams.openState = 0;
        if (this.mListeners != null) {
            for (int size = this.mListeners.size() - 1; size >= 0; size--) {
                this.mListeners.get(size).onDrawerClosed(drawerView);
            }
        }
        updateChildrenImportantForAccessibility(drawerView, false);
        if (hasWindowFocus() && (rootView = getRootView()) != null) {
            rootView.sendAccessibilityEvent(32);
        }
    }

    void dispatchOnDrawerOpened(View drawerView) {
        LayoutParams layoutParams = (LayoutParams) drawerView.getLayoutParams();
        if ((layoutParams.openState & 1) != 0) {
            return;
        }
        layoutParams.openState = 1;
        if (this.mListeners != null) {
            for (int size = this.mListeners.size() - 1; size >= 0; size--) {
                this.mListeners.get(size).onDrawerOpened(drawerView);
            }
        }
        updateChildrenImportantForAccessibility(drawerView, true);
        if (hasWindowFocus()) {
            sendAccessibilityEvent(32);
        }
        drawerView.requestFocus();
    }

    private void updateChildrenImportantForAccessibility(View drawerView, boolean isDrawerOpen) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((!isDrawerOpen && !isDrawerView(childAt)) || (isDrawerOpen && childAt == drawerView)) {
                ViewCompat.setImportantForAccessibility(childAt, 1);
            } else {
                ViewCompat.setImportantForAccessibility(childAt, 4);
            }
        }
    }

    void dispatchOnDrawerSlide(View drawerView, float slideOffset) {
        if (this.mListeners != null) {
            for (int size = this.mListeners.size() - 1; size >= 0; size--) {
                this.mListeners.get(size).onDrawerSlide(drawerView, slideOffset);
            }
        }
    }

    void setDrawerViewOffset(View drawerView, float slideOffset) {
        LayoutParams layoutParams = (LayoutParams) drawerView.getLayoutParams();
        if (slideOffset == layoutParams.onScreen) {
            return;
        }
        layoutParams.onScreen = slideOffset;
        dispatchOnDrawerSlide(drawerView, slideOffset);
    }

    float getDrawerViewOffset(View drawerView) {
        return ((LayoutParams) drawerView.getLayoutParams()).onScreen;
    }

    int getDrawerViewAbsoluteGravity(View drawerView) {
        return GravityCompat.getAbsoluteGravity(((LayoutParams) drawerView.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this));
    }

    boolean checkDrawerViewAbsoluteGravity(View drawerView, int checkFor) {
        return (getDrawerViewAbsoluteGravity(drawerView) & checkFor) == checkFor;
    }

    View findOpenDrawer() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((LayoutParams) childAt.getLayoutParams()).openState & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    void moveDrawerToOffset(View drawerView, float slideOffset) {
        float drawerViewOffset = getDrawerViewOffset(drawerView);
        int width = drawerView.getWidth();
        int i = ((int) (width * slideOffset)) - ((int) (drawerViewOffset * width));
        if (!checkDrawerViewAbsoluteGravity(drawerView, 3)) {
            i = -i;
        }
        drawerView.offsetLeftAndRight(i);
        setDrawerViewOffset(drawerView, slideOffset);
    }

    View findDrawerWithGravity(int gravity) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(gravity, ViewCompat.getLayoutDirection(this)) & 7;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((getDrawerViewAbsoluteGravity(childAt) & 7) == absoluteGravity) {
                return childAt;
            }
        }
        return null;
    }

    static String gravityToString(int gravity) {
        if ((gravity & 3) == 3) {
            return "LEFT";
        }
        if ((gravity & 5) == 5) {
            return "RIGHT";
        }
        return Integer.toHexString(gravity);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0045  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 365
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.onMeasure(int, int):void");
    }

    private void resolveShadowDrawables() {
        if (!SET_DRAWER_SHADOW_FROM_ELEVATION) {
            this.mShadowLeftResolved = resolveLeftShadow();
            this.mShadowRightResolved = resolveRightShadow();
        }
    }

    private Drawable resolveLeftShadow() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (layoutDirection == 0) {
            if (this.mShadowStart != null) {
                mirror(this.mShadowStart, layoutDirection);
                return this.mShadowStart;
            }
        } else if (this.mShadowEnd != null) {
            mirror(this.mShadowEnd, layoutDirection);
            return this.mShadowEnd;
        }
        return this.mShadowLeft;
    }

    private Drawable resolveRightShadow() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (layoutDirection == 0) {
            if (this.mShadowEnd != null) {
                mirror(this.mShadowEnd, layoutDirection);
                return this.mShadowEnd;
            }
        } else if (this.mShadowStart != null) {
            mirror(this.mShadowStart, layoutDirection);
            return this.mShadowStart;
        }
        return this.mShadowRight;
    }

    private boolean mirror(Drawable drawable, int layoutDirection) {
        if (drawable == null || !DrawableCompat.isAutoMirrored(drawable)) {
            return false;
        }
        DrawableCompat.setLayoutDirection(drawable, layoutDirection);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b2) {
        int i;
        float f;
        this.mInLayout = true;
        int i2 = r - l;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (isContentView(childAt)) {
                    childAt.layout(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.leftMargin + childAt.getMeasuredWidth(), layoutParams.topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (checkDrawerViewAbsoluteGravity(childAt, 3)) {
                        i = ((int) (measuredWidth * layoutParams.onScreen)) + (-measuredWidth);
                        f = (measuredWidth + i) / measuredWidth;
                    } else {
                        i = i2 - ((int) (measuredWidth * layoutParams.onScreen));
                        f = (i2 - i) / measuredWidth;
                    }
                    boolean z = f != layoutParams.onScreen;
                    switch (layoutParams.gravity & 112) {
                        case 16:
                            int i4 = b2 - t;
                            int i5 = (i4 - measuredHeight) / 2;
                            if (i5 < layoutParams.topMargin) {
                                i5 = layoutParams.topMargin;
                            } else if (i5 + measuredHeight > i4 - layoutParams.bottomMargin) {
                                i5 = (i4 - layoutParams.bottomMargin) - measuredHeight;
                            }
                            childAt.layout(i, i5, measuredWidth + i, measuredHeight + i5);
                            break;
                        case 80:
                            int i6 = b2 - t;
                            childAt.layout(i, (i6 - layoutParams.bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i, i6 - layoutParams.bottomMargin);
                            break;
                        default:
                            childAt.layout(i, layoutParams.topMargin, measuredWidth + i, measuredHeight + layoutParams.topMargin);
                            break;
                    }
                    if (z) {
                        setDrawerViewOffset(childAt, f);
                    }
                    int i7 = layoutParams.onScreen > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i7) {
                        childAt.setVisibility(i7);
                    }
                }
            }
        }
        this.mInLayout = false;
        this.mFirstLayout = false;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.mInLayout) {
            super.requestLayout();
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            f = Math.max(f, ((LayoutParams) getChildAt(i).getLayoutParams()).onScreen);
        }
        this.mScrimOpacity = f;
        if (this.mLeftDragger.continueSettling(true) | this.mRightDragger.continueSettling(true)) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    private static boolean hasOpaqueBackground(View v) {
        Drawable background = v.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    public void setStatusBarBackground(Drawable bg) {
        this.mStatusBarBackground = bg;
        invalidate();
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.mStatusBarBackground;
    }

    public void setStatusBarBackground(int resId) {
        this.mStatusBarBackground = resId != 0 ? ContextCompat.getDrawable(getContext(), resId) : null;
        invalidate();
    }

    public void setStatusBarBackgroundColor(@ColorInt int color) {
        this.mStatusBarBackground = new ColorDrawable(color);
        invalidate();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int layoutDirection) {
        resolveShadowDrawables();
    }

    @Override // android.view.View
    public void onDraw(Canvas c) {
        int topInset;
        super.onDraw(c);
        if (this.mDrawStatusBarBackground && this.mStatusBarBackground != null && (topInset = IMPL.getTopInset(this.mLastInsets)) > 0) {
            this.mStatusBarBackground.setBounds(0, 0, getWidth(), topInset);
            this.mStatusBarBackground.draw(c);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View child, long drawingTime) {
        int i;
        int height = getHeight();
        boolean isContentView = isContentView(child);
        int i2 = 0;
        int width = getWidth();
        int save = canvas.save();
        if (isContentView) {
            int childCount = getChildCount();
            int i3 = 0;
            while (i3 < childCount) {
                View childAt = getChildAt(i3);
                if (childAt != child && childAt.getVisibility() == 0 && hasOpaqueBackground(childAt) && isDrawerView(childAt)) {
                    if (childAt.getHeight() < height) {
                        i = width;
                    } else if (checkDrawerViewAbsoluteGravity(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right <= i2) {
                            right = i2;
                        }
                        i2 = right;
                        i = width;
                    } else {
                        i = childAt.getLeft();
                        if (i < width) {
                        }
                    }
                    i3++;
                    width = i;
                }
                i = width;
                i3++;
                width = i;
            }
            canvas.clipRect(i2, 0, width, getHeight());
        }
        int i4 = width;
        boolean drawChild = super.drawChild(canvas, child, drawingTime);
        canvas.restoreToCount(save);
        if (this.mScrimOpacity > 0.0f && isContentView) {
            this.mScrimPaint.setColor((((int) (((this.mScrimColor & (-16777216)) >>> 24) * this.mScrimOpacity)) << 24) | (this.mScrimColor & ViewCompat.MEASURED_SIZE_MASK));
            canvas.drawRect(i2, 0.0f, i4, getHeight(), this.mScrimPaint);
        } else if (this.mShadowLeftResolved != null && checkDrawerViewAbsoluteGravity(child, 3)) {
            int intrinsicWidth = this.mShadowLeftResolved.getIntrinsicWidth();
            int right2 = child.getRight();
            float max = Math.max(0.0f, Math.min(right2 / this.mLeftDragger.getEdgeSize(), 1.0f));
            this.mShadowLeftResolved.setBounds(right2, child.getTop(), intrinsicWidth + right2, child.getBottom());
            this.mShadowLeftResolved.setAlpha((int) (255.0f * max));
            this.mShadowLeftResolved.draw(canvas);
        } else if (this.mShadowRightResolved != null && checkDrawerViewAbsoluteGravity(child, 5)) {
            int intrinsicWidth2 = this.mShadowRightResolved.getIntrinsicWidth();
            int left = child.getLeft();
            float max2 = Math.max(0.0f, Math.min((getWidth() - left) / this.mRightDragger.getEdgeSize(), 1.0f));
            this.mShadowRightResolved.setBounds(left - intrinsicWidth2, child.getTop(), left, child.getBottom());
            this.mShadowRightResolved.setAlpha((int) (255.0f * max2));
            this.mShadowRightResolved.draw(canvas);
        }
        return drawChild;
    }

    boolean isContentView(View child) {
        return ((LayoutParams) child.getLayoutParams()).gravity == 0;
    }

    boolean isDrawerView(View child) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(((LayoutParams) child.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(child));
        return ((absoluteGravity & 3) == 0 && (absoluteGravity & 5) == 0) ? false : true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev) {
        boolean z;
        View findTopChildUnder;
        int actionMasked = MotionEventCompat.getActionMasked(ev);
        boolean shouldInterceptTouchEvent = this.mLeftDragger.shouldInterceptTouchEvent(ev) | this.mRightDragger.shouldInterceptTouchEvent(ev);
        switch (actionMasked) {
            case 0:
                float x = ev.getX();
                float y = ev.getY();
                this.mInitialMotionX = x;
                this.mInitialMotionY = y;
                z = this.mScrimOpacity > 0.0f && (findTopChildUnder = this.mLeftDragger.findTopChildUnder((int) x, (int) y)) != null && isContentView(findTopChildUnder);
                this.mDisallowInterceptRequested = false;
                this.mChildrenCanceledTouch = false;
                break;
            case 1:
            case 3:
                closeDrawers(true);
                this.mDisallowInterceptRequested = false;
                this.mChildrenCanceledTouch = false;
                z = false;
                break;
            case 2:
                if (this.mLeftDragger.checkTouchSlop(3)) {
                    this.mLeftCallback.removeCallbacks();
                    this.mRightCallback.removeCallbacks();
                    z = false;
                    break;
                }
                z = false;
                break;
            default:
                z = false;
                break;
        }
        return shouldInterceptTouchEvent || z || hasPeekingDrawer() || this.mChildrenCanceledTouch;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0015, code lost:
    
        return true;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            r1 = 1
            r2 = 0
            android.support.v4.widget.ViewDragHelper r0 = r7.mLeftDragger
            r0.processTouchEvent(r8)
            android.support.v4.widget.ViewDragHelper r0 = r7.mRightDragger
            r0.processTouchEvent(r8)
            int r0 = r8.getAction()
            r0 = r0 & 255(0xff, float:3.57E-43)
            switch(r0) {
                case 0: goto L16;
                case 1: goto L27;
                case 2: goto L15;
                case 3: goto L6b;
                default: goto L15;
            }
        L15:
            return r1
        L16:
            float r0 = r8.getX()
            float r3 = r8.getY()
            r7.mInitialMotionX = r0
            r7.mInitialMotionY = r3
            r7.mDisallowInterceptRequested = r2
            r7.mChildrenCanceledTouch = r2
            goto L15
        L27:
            float r0 = r8.getX()
            float r3 = r8.getY()
            android.support.v4.widget.ViewDragHelper r4 = r7.mLeftDragger
            int r5 = (int) r0
            int r6 = (int) r3
            android.view.View r4 = r4.findTopChildUnder(r5, r6)
            if (r4 == 0) goto L73
            boolean r4 = r7.isContentView(r4)
            if (r4 == 0) goto L73
            float r4 = r7.mInitialMotionX
            float r0 = r0 - r4
            float r4 = r7.mInitialMotionY
            float r3 = r3 - r4
            android.support.v4.widget.ViewDragHelper r4 = r7.mLeftDragger
            int r4 = r4.getTouchSlop()
            float r0 = r0 * r0
            float r3 = r3 * r3
            float r0 = r0 + r3
            int r3 = r4 * r4
            float r3 = (float) r3
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 >= 0) goto L73
            android.view.View r0 = r7.findOpenDrawer()
            if (r0 == 0) goto L73
            int r0 = r7.getDrawerLockMode(r0)
            r3 = 2
            if (r0 != r3) goto L69
            r0 = r1
        L63:
            r7.closeDrawers(r0)
            r7.mDisallowInterceptRequested = r2
            goto L15
        L69:
            r0 = r2
            goto L63
        L6b:
            r7.closeDrawers(r1)
            r7.mDisallowInterceptRequested = r2
            r7.mChildrenCanceledTouch = r2
            goto L15
        L73:
            r0 = r1
            goto L63
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.widget.DrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        super.requestDisallowInterceptTouchEvent(disallowIntercept);
        this.mDisallowInterceptRequested = disallowIntercept;
        if (disallowIntercept) {
            closeDrawers(true);
        }
    }

    public void closeDrawers() {
        closeDrawers(false);
    }

    void closeDrawers(boolean peekingOnly) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (isDrawerView(childAt) && (!peekingOnly || layoutParams.isPeeking)) {
                int width = childAt.getWidth();
                if (checkDrawerViewAbsoluteGravity(childAt, 3)) {
                    z |= this.mLeftDragger.smoothSlideViewTo(childAt, -width, childAt.getTop());
                } else {
                    z |= this.mRightDragger.smoothSlideViewTo(childAt, getWidth(), childAt.getTop());
                }
                layoutParams.isPeeking = false;
            }
        }
        this.mLeftCallback.removeCallbacks();
        this.mRightCallback.removeCallbacks();
        if (z) {
            invalidate();
        }
    }

    public void openDrawer(View drawerView) {
        if (!isDrawerView(drawerView)) {
            throw new IllegalArgumentException("View " + drawerView + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) drawerView.getLayoutParams();
        if (!this.mFirstLayout) {
            LayoutParams.access$176(layoutParams, 2);
            if (checkDrawerViewAbsoluteGravity(drawerView, 3)) {
                this.mLeftDragger.smoothSlideViewTo(drawerView, 0, drawerView.getTop());
            } else {
                this.mRightDragger.smoothSlideViewTo(drawerView, getWidth() - drawerView.getWidth(), drawerView.getTop());
            }
        } else {
            layoutParams.onScreen = 1.0f;
            layoutParams.openState = 1;
            updateChildrenImportantForAccessibility(drawerView, true);
        }
        invalidate();
    }

    public void openDrawer(int gravity) {
        View findDrawerWithGravity = findDrawerWithGravity(gravity);
        if (findDrawerWithGravity == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + gravityToString(gravity));
        }
        openDrawer(findDrawerWithGravity);
    }

    public void closeDrawer(View drawerView) {
        if (!isDrawerView(drawerView)) {
            throw new IllegalArgumentException("View " + drawerView + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) drawerView.getLayoutParams();
        if (!this.mFirstLayout) {
            LayoutParams.access$176(layoutParams, 4);
            if (checkDrawerViewAbsoluteGravity(drawerView, 3)) {
                this.mLeftDragger.smoothSlideViewTo(drawerView, -drawerView.getWidth(), drawerView.getTop());
            } else {
                this.mRightDragger.smoothSlideViewTo(drawerView, getWidth(), drawerView.getTop());
            }
        } else {
            layoutParams.onScreen = 0.0f;
            layoutParams.openState = 0;
        }
        invalidate();
    }

    public void closeDrawer(int gravity) {
        View findDrawerWithGravity = findDrawerWithGravity(gravity);
        if (findDrawerWithGravity == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + gravityToString(gravity));
        }
        closeDrawer(findDrawerWithGravity);
    }

    public boolean isDrawerOpen(View drawer) {
        if (isDrawerView(drawer)) {
            return (((LayoutParams) drawer.getLayoutParams()).openState & 1) == 1;
        }
        throw new IllegalArgumentException("View " + drawer + " is not a drawer");
    }

    public boolean isDrawerOpen(int drawerGravity) {
        View findDrawerWithGravity = findDrawerWithGravity(drawerGravity);
        if (findDrawerWithGravity != null) {
            return isDrawerOpen(findDrawerWithGravity);
        }
        return false;
    }

    public boolean isDrawerVisible(View drawer) {
        if (isDrawerView(drawer)) {
            return ((LayoutParams) drawer.getLayoutParams()).onScreen > 0.0f;
        }
        throw new IllegalArgumentException("View " + drawer + " is not a drawer");
    }

    public boolean isDrawerVisible(int drawerGravity) {
        View findDrawerWithGravity = findDrawerWithGravity(drawerGravity);
        if (findDrawerWithGravity != null) {
            return isDrawerVisible(findDrawerWithGravity);
        }
        return false;
    }

    private boolean hasPeekingDrawer() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((LayoutParams) getChildAt(i).getLayoutParams()).isPeeking) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams p) {
        return p instanceof LayoutParams ? new LayoutParams((LayoutParams) p) : p instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) p) : new LayoutParams(p);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams p) {
        return (p instanceof LayoutParams) && super.checkLayoutParams(p);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> views, int direction, int focusableMode) {
        if (getDescendantFocusability() != 393216) {
            int childCount = getChildCount();
            boolean z = false;
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (isDrawerView(childAt)) {
                    if (isDrawerOpen(childAt)) {
                        z = true;
                        childAt.addFocusables(views, direction, focusableMode);
                    }
                } else {
                    this.mNonDrawerViews.add(childAt);
                }
            }
            if (!z) {
                int size = this.mNonDrawerViews.size();
                for (int i2 = 0; i2 < size; i2++) {
                    View view = this.mNonDrawerViews.get(i2);
                    if (view.getVisibility() == 0) {
                        view.addFocusables(views, direction, focusableMode);
                    }
                }
            }
            this.mNonDrawerViews.clear();
        }
    }

    private boolean hasVisibleDrawer() {
        return findVisibleDrawer() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View findVisibleDrawer() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (isDrawerView(childAt) && isDrawerVisible(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    void cancelChildViewTouch() {
        if (!this.mChildrenCanceledTouch) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).dispatchTouchEvent(obtain);
            }
            obtain.recycle();
            this.mChildrenCanceledTouch = true;
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4 || !hasVisibleDrawer()) {
            return super.onKeyDown(keyCode, event);
        }
        KeyEventCompat.startTracking(event);
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            View findVisibleDrawer = findVisibleDrawer();
            if (findVisibleDrawer != null && getDrawerLockMode(findVisibleDrawer) == 0) {
                closeDrawers();
            }
            return findVisibleDrawer != null;
        }
        return super.onKeyUp(keyCode, event);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        View findDrawerWithGravity;
        if (!(state instanceof SavedState)) {
            super.onRestoreInstanceState(state);
            return;
        }
        SavedState savedState = (SavedState) state;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.openDrawerGravity != 0 && (findDrawerWithGravity = findDrawerWithGravity(savedState.openDrawerGravity)) != null) {
            openDrawer(findDrawerWithGravity);
        }
        if (savedState.lockModeLeft != 3) {
            setDrawerLockMode(savedState.lockModeLeft, 3);
        }
        if (savedState.lockModeRight != 3) {
            setDrawerLockMode(savedState.lockModeRight, 5);
        }
        if (savedState.lockModeStart != 3) {
            setDrawerLockMode(savedState.lockModeStart, GravityCompat.START);
        }
        if (savedState.lockModeEnd != 3) {
            setDrawerLockMode(savedState.lockModeEnd, GravityCompat.END);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            boolean z = layoutParams.openState == 1;
            boolean z2 = layoutParams.openState == 2;
            if (z || z2) {
                savedState.openDrawerGravity = layoutParams.gravity;
                break;
            }
        }
        savedState.lockModeLeft = this.mLockModeLeft;
        savedState.lockModeRight = this.mLockModeRight;
        savedState.lockModeStart = this.mLockModeStart;
        savedState.lockModeEnd = this.mLockModeEnd;
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        super.addView(child, index, params);
        if (findOpenDrawer() != null || isDrawerView(child)) {
            ViewCompat.setImportantForAccessibility(child, 4);
        } else {
            ViewCompat.setImportantForAccessibility(child, 1);
        }
        if (!CAN_HIDE_DESCENDANTS) {
            ViewCompat.setAccessibilityDelegate(child, this.mChildAccessibilityDelegate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean includeChildForAccessibility(View child) {
        return (ViewCompat.getImportantForAccessibility(child) == 4 || ViewCompat.getImportantForAccessibility(child) == 2) ? false : true;
    }

    protected static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: android.support.v4.widget.DrawerLayout.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel source) {
                return new SavedState(source);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        int lockModeEnd;
        int lockModeLeft;
        int lockModeRight;
        int lockModeStart;
        int openDrawerGravity;

        public SavedState(Parcel in) {
            super(in);
            this.openDrawerGravity = 0;
            this.openDrawerGravity = in.readInt();
            this.lockModeLeft = in.readInt();
            this.lockModeRight = in.readInt();
            this.lockModeStart = in.readInt();
            this.lockModeEnd = in.readInt();
        }

        public SavedState(Parcelable superState) {
            super(superState);
            this.openDrawerGravity = 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            super.writeToParcel(dest, flags);
            dest.writeInt(this.openDrawerGravity);
            dest.writeInt(this.lockModeLeft);
            dest.writeInt(this.lockModeRight);
            dest.writeInt(this.lockModeStart);
            dest.writeInt(this.lockModeEnd);
        }
    }

    private class ViewDragCallback extends ViewDragHelper.Callback {
        private final int mAbsGravity;
        private ViewDragHelper mDragger;
        private final Runnable mPeekRunnable = new Runnable() { // from class: android.support.v4.widget.DrawerLayout.ViewDragCallback.1
            @Override // java.lang.Runnable
            public void run() {
                ViewDragCallback.this.peekDrawer();
            }
        };

        public ViewDragCallback(int gravity) {
            this.mAbsGravity = gravity;
        }

        public void setDragger(ViewDragHelper dragger) {
            this.mDragger = dragger;
        }

        public void removeCallbacks() {
            DrawerLayout.this.removeCallbacks(this.mPeekRunnable);
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View child, int pointerId) {
            return DrawerLayout.this.isDrawerView(child) && DrawerLayout.this.checkDrawerViewAbsoluteGravity(child, this.mAbsGravity) && DrawerLayout.this.getDrawerLockMode(child) == 0;
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int state) {
            DrawerLayout.this.updateDrawerState(this.mAbsGravity, state, this.mDragger.getCapturedView());
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View changedView, int left, int top, int dx, int dy) {
            float width;
            int width2 = changedView.getWidth();
            if (DrawerLayout.this.checkDrawerViewAbsoluteGravity(changedView, 3)) {
                width = (width2 + left) / width2;
            } else {
                width = (DrawerLayout.this.getWidth() - left) / width2;
            }
            DrawerLayout.this.setDrawerViewOffset(changedView, width);
            changedView.setVisibility(width == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewCaptured(View capturedChild, int activePointerId) {
            ((LayoutParams) capturedChild.getLayoutParams()).isPeeking = false;
            closeOtherDrawer();
        }

        private void closeOtherDrawer() {
            View findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(this.mAbsGravity == 3 ? 5 : 3);
            if (findDrawerWithGravity != null) {
                DrawerLayout.this.closeDrawer(findDrawerWithGravity);
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onViewReleased(View releasedChild, float xvel, float yvel) {
            int width;
            float drawerViewOffset = DrawerLayout.this.getDrawerViewOffset(releasedChild);
            int width2 = releasedChild.getWidth();
            if (DrawerLayout.this.checkDrawerViewAbsoluteGravity(releasedChild, 3)) {
                width = (xvel > 0.0f || (xvel == 0.0f && drawerViewOffset > 0.5f)) ? 0 : -width2;
            } else {
                width = DrawerLayout.this.getWidth();
                if (xvel < 0.0f || (xvel == 0.0f && drawerViewOffset > 0.5f)) {
                    width -= width2;
                }
            }
            this.mDragger.settleCapturedViewAt(width, releasedChild.getTop());
            DrawerLayout.this.invalidate();
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onEdgeTouched(int edgeFlags, int pointerId) {
            DrawerLayout.this.postDelayed(this.mPeekRunnable, 160L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void peekDrawer() {
            View view;
            int i;
            int edgeSize = this.mDragger.getEdgeSize();
            boolean z = this.mAbsGravity == 3;
            if (z) {
                View findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(3);
                int i2 = (findDrawerWithGravity != null ? -findDrawerWithGravity.getWidth() : 0) + edgeSize;
                view = findDrawerWithGravity;
                i = i2;
            } else {
                View findDrawerWithGravity2 = DrawerLayout.this.findDrawerWithGravity(5);
                int width = DrawerLayout.this.getWidth() - edgeSize;
                view = findDrawerWithGravity2;
                i = width;
            }
            if (view != null) {
                if (((z && view.getLeft() < i) || (!z && view.getLeft() > i)) && DrawerLayout.this.getDrawerLockMode(view) == 0) {
                    LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                    this.mDragger.smoothSlideViewTo(view, i, view.getTop());
                    layoutParams.isPeeking = true;
                    DrawerLayout.this.invalidate();
                    closeOtherDrawer();
                    DrawerLayout.this.cancelChildViewTouch();
                }
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public boolean onEdgeLock(int edgeFlags) {
            return false;
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public void onEdgeDragStarted(int edgeFlags, int pointerId) {
            View findDrawerWithGravity;
            if ((edgeFlags & 1) == 1) {
                findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(3);
            } else {
                findDrawerWithGravity = DrawerLayout.this.findDrawerWithGravity(5);
            }
            if (findDrawerWithGravity != null && DrawerLayout.this.getDrawerLockMode(findDrawerWithGravity) == 0) {
                this.mDragger.captureChildView(findDrawerWithGravity, pointerId);
            }
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View child) {
            if (DrawerLayout.this.isDrawerView(child)) {
                return child.getWidth();
            }
            return 0;
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View child, int left, int dx) {
            if (DrawerLayout.this.checkDrawerViewAbsoluteGravity(child, 3)) {
                return Math.max(-child.getWidth(), Math.min(left, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - child.getWidth(), Math.min(left, width));
        }

        @Override // android.support.v4.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View child, int top, int dy) {
            return child.getTop();
        }
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        private static final int FLAG_IS_CLOSING = 4;
        private static final int FLAG_IS_OPENED = 1;
        private static final int FLAG_IS_OPENING = 2;
        public int gravity;
        private boolean isPeeking;
        private float onScreen;
        private int openState;

        static /* synthetic */ int access$176(LayoutParams x0, int x1) {
            int i = x0.openState | x1;
            x0.openState = i;
            return i;
        }

        public LayoutParams(Context c, AttributeSet attrs) {
            super(c, attrs);
            this.gravity = 0;
            TypedArray obtainStyledAttributes = c.obtainStyledAttributes(attrs, DrawerLayout.LAYOUT_ATTRS);
            this.gravity = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int width, int height) {
            super(width, height);
            this.gravity = 0;
        }

        public LayoutParams(int width, int height, int gravity) {
            this(width, height);
            this.gravity = gravity;
        }

        public LayoutParams(LayoutParams source) {
            super((ViewGroup.MarginLayoutParams) source);
            this.gravity = 0;
            this.gravity = source.gravity;
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
            this.gravity = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams source) {
            super(source);
            this.gravity = 0;
        }
    }

    class AccessibilityDelegate extends AccessibilityDelegateCompat {
        private final Rect mTmpRect = new Rect();

        AccessibilityDelegate() {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View host, AccessibilityNodeInfoCompat info) {
            if (DrawerLayout.CAN_HIDE_DESCENDANTS) {
                super.onInitializeAccessibilityNodeInfo(host, info);
            } else {
                AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(info);
                super.onInitializeAccessibilityNodeInfo(host, obtain);
                info.setSource(host);
                Object parentForAccessibility = ViewCompat.getParentForAccessibility(host);
                if (parentForAccessibility instanceof View) {
                    info.setParent((View) parentForAccessibility);
                }
                copyNodeInfoNoChildren(info, obtain);
                obtain.recycle();
                addChildrenForAccessibility(info, (ViewGroup) host);
            }
            info.setClassName(DrawerLayout.class.getName());
            info.setFocusable(false);
            info.setFocused(false);
            info.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_FOCUS);
            info.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLEAR_FOCUS);
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View host, AccessibilityEvent event) {
            super.onInitializeAccessibilityEvent(host, event);
            event.setClassName(DrawerLayout.class.getName());
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public boolean dispatchPopulateAccessibilityEvent(View host, AccessibilityEvent event) {
            if (event.getEventType() != 32) {
                return super.dispatchPopulateAccessibilityEvent(host, event);
            }
            List<CharSequence> text = event.getText();
            View findVisibleDrawer = DrawerLayout.this.findVisibleDrawer();
            if (findVisibleDrawer != null) {
                CharSequence drawerTitle = DrawerLayout.this.getDrawerTitle(DrawerLayout.this.getDrawerViewAbsoluteGravity(findVisibleDrawer));
                if (drawerTitle != null) {
                    text.add(drawerTitle);
                }
            }
            return true;
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(ViewGroup host, View child, AccessibilityEvent event) {
            if (DrawerLayout.CAN_HIDE_DESCENDANTS || DrawerLayout.includeChildForAccessibility(child)) {
                return super.onRequestSendAccessibilityEvent(host, child, event);
            }
            return false;
        }

        private void addChildrenForAccessibility(AccessibilityNodeInfoCompat info, ViewGroup v) {
            int childCount = v.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = v.getChildAt(i);
                if (DrawerLayout.includeChildForAccessibility(childAt)) {
                    info.addChild(childAt);
                }
            }
        }

        private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat dest, AccessibilityNodeInfoCompat src) {
            Rect rect = this.mTmpRect;
            src.getBoundsInParent(rect);
            dest.setBoundsInParent(rect);
            src.getBoundsInScreen(rect);
            dest.setBoundsInScreen(rect);
            dest.setVisibleToUser(src.isVisibleToUser());
            dest.setPackageName(src.getPackageName());
            dest.setClassName(src.getClassName());
            dest.setContentDescription(src.getContentDescription());
            dest.setEnabled(src.isEnabled());
            dest.setClickable(src.isClickable());
            dest.setFocusable(src.isFocusable());
            dest.setFocused(src.isFocused());
            dest.setAccessibilityFocused(src.isAccessibilityFocused());
            dest.setSelected(src.isSelected());
            dest.setLongClickable(src.isLongClickable());
            dest.addAction(src.getActions());
        }
    }

    final class ChildAccessibilityDelegate extends AccessibilityDelegateCompat {
        ChildAccessibilityDelegate() {
        }

        @Override // android.support.v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View child, AccessibilityNodeInfoCompat info) {
            super.onInitializeAccessibilityNodeInfo(child, info);
            if (!DrawerLayout.includeChildForAccessibility(child)) {
                info.setParent(null);
            }
        }
    }
}
