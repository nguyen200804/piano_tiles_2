package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ViewCompatLollipop {
    private static ThreadLocal<Rect> sThreadLocalRect;

    ViewCompatLollipop() {
    }

    public static void setTransitionName(View view, String transitionName) {
        view.setTransitionName(transitionName);
    }

    public static String getTransitionName(View view) {
        return view.getTransitionName();
    }

    public static void requestApplyInsets(View view) {
        view.requestApplyInsets();
    }

    public static void setElevation(View view, float elevation) {
        view.setElevation(elevation);
    }

    public static float getElevation(View view) {
        return view.getElevation();
    }

    public static void setTranslationZ(View view, float translationZ) {
        view.setTranslationZ(translationZ);
    }

    public static float getTranslationZ(View view) {
        return view.getTranslationZ();
    }

    public static void setOnApplyWindowInsetsListener(View view, final OnApplyWindowInsetsListener listener) {
        if (listener == null) {
            view.setOnApplyWindowInsetsListener(null);
        } else {
            view.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: android.support.v4.view.ViewCompatLollipop.1
                @Override // android.view.View.OnApplyWindowInsetsListener
                public WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                    return ((WindowInsetsCompatApi21) OnApplyWindowInsetsListener.this.onApplyWindowInsets(view2, new WindowInsetsCompatApi21(windowInsets))).unwrap();
                }
            });
        }
    }

    public static boolean isImportantForAccessibility(View view) {
        return view.isImportantForAccessibility();
    }

    static ColorStateList getBackgroundTintList(View view) {
        return view.getBackgroundTintList();
    }

    static void setBackgroundTintList(View view, ColorStateList tintList) {
        view.setBackgroundTintList(tintList);
        if (Build.VERSION.SDK_INT == 21) {
            Drawable background = view.getBackground();
            boolean z = (view.getBackgroundTintList() == null || view.getBackgroundTintMode() == null) ? false : true;
            if (background != null && z) {
                if (background.isStateful()) {
                    background.setState(view.getDrawableState());
                }
                view.setBackground(background);
            }
        }
    }

    static PorterDuff.Mode getBackgroundTintMode(View view) {
        return view.getBackgroundTintMode();
    }

    static void setBackgroundTintMode(View view, PorterDuff.Mode mode) {
        view.setBackgroundTintMode(mode);
        if (Build.VERSION.SDK_INT == 21) {
            Drawable background = view.getBackground();
            boolean z = (view.getBackgroundTintList() == null || view.getBackgroundTintMode() == null) ? false : true;
            if (background != null && z) {
                if (background.isStateful()) {
                    background.setState(view.getDrawableState());
                }
                view.setBackground(background);
            }
        }
    }

    public static WindowInsetsCompat onApplyWindowInsets(View v, WindowInsetsCompat insets) {
        WindowInsets unwrap;
        WindowInsets onApplyWindowInsets;
        if ((insets instanceof WindowInsetsCompatApi21) && (onApplyWindowInsets = v.onApplyWindowInsets((unwrap = ((WindowInsetsCompatApi21) insets).unwrap()))) != unwrap) {
            return new WindowInsetsCompatApi21(onApplyWindowInsets);
        }
        return insets;
    }

    public static WindowInsetsCompat dispatchApplyWindowInsets(View v, WindowInsetsCompat insets) {
        WindowInsets unwrap;
        WindowInsets dispatchApplyWindowInsets;
        if ((insets instanceof WindowInsetsCompatApi21) && (dispatchApplyWindowInsets = v.dispatchApplyWindowInsets((unwrap = ((WindowInsetsCompatApi21) insets).unwrap()))) != unwrap) {
            return new WindowInsetsCompatApi21(dispatchApplyWindowInsets);
        }
        return insets;
    }

    public static void setNestedScrollingEnabled(View view, boolean enabled) {
        view.setNestedScrollingEnabled(enabled);
    }

    public static boolean isNestedScrollingEnabled(View view) {
        return view.isNestedScrollingEnabled();
    }

    public static boolean startNestedScroll(View view, int axes) {
        return view.startNestedScroll(axes);
    }

    public static void stopNestedScroll(View view) {
        view.stopNestedScroll();
    }

    public static boolean hasNestedScrollingParent(View view) {
        return view.hasNestedScrollingParent();
    }

    public static boolean dispatchNestedScroll(View view, int dxConsumed, int dyConsumed, int dxUnconsumed, int dyUnconsumed, int[] offsetInWindow) {
        return view.dispatchNestedScroll(dxConsumed, dyConsumed, dxUnconsumed, dyUnconsumed, offsetInWindow);
    }

    public static boolean dispatchNestedPreScroll(View view, int dx, int dy, int[] consumed, int[] offsetInWindow) {
        return view.dispatchNestedPreScroll(dx, dy, consumed, offsetInWindow);
    }

    public static boolean dispatchNestedFling(View view, float velocityX, float velocityY, boolean consumed) {
        return view.dispatchNestedFling(velocityX, velocityY, consumed);
    }

    public static boolean dispatchNestedPreFling(View view, float velocityX, float velocityY) {
        return view.dispatchNestedPreFling(velocityX, velocityY);
    }

    public static float getZ(View view) {
        return view.getZ();
    }

    static void offsetTopAndBottom(View view, int offset) {
        boolean z;
        Rect emptyTempRect = getEmptyTempRect();
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            emptyTempRect.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !emptyTempRect.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z = false;
        }
        ViewCompatHC.offsetTopAndBottom(view, offset);
        if (z && emptyTempRect.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(emptyTempRect);
        }
    }

    static void offsetLeftAndRight(View view, int offset) {
        boolean z;
        Rect emptyTempRect = getEmptyTempRect();
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            emptyTempRect.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !emptyTempRect.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        } else {
            z = false;
        }
        ViewCompatHC.offsetLeftAndRight(view, offset);
        if (z && emptyTempRect.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(emptyTempRect);
        }
    }

    private static Rect getEmptyTempRect() {
        if (sThreadLocalRect == null) {
            sThreadLocalRect = new ThreadLocal<>();
        }
        Rect rect = sThreadLocalRect.get();
        if (rect == null) {
            rect = new Rect();
            sThreadLocalRect.set(rect);
        }
        rect.setEmpty();
        return rect;
    }
}
