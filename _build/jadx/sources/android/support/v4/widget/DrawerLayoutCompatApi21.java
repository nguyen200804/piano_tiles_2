package android.support.v4.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class DrawerLayoutCompatApi21 {
    private static final int[] THEME_ATTRS = {R.attr.colorPrimaryDark};

    DrawerLayoutCompatApi21() {
    }

    public static void configureApplyInsets(View drawerLayout) {
        if (drawerLayout instanceof DrawerLayoutImpl) {
            drawerLayout.setOnApplyWindowInsetsListener(new InsetsListener());
            drawerLayout.setSystemUiVisibility(1280);
        }
    }

    public static void dispatchChildInsets(View child, Object insets, int gravity) {
        WindowInsets windowInsets = (WindowInsets) insets;
        if (gravity == 3) {
            windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), 0, windowInsets.getSystemWindowInsetBottom());
        } else if (gravity == 5) {
            windowInsets = windowInsets.replaceSystemWindowInsets(0, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        child.dispatchApplyWindowInsets(windowInsets);
    }

    public static void applyMarginInsets(ViewGroup.MarginLayoutParams lp, Object insets, int gravity) {
        WindowInsets windowInsets = (WindowInsets) insets;
        if (gravity == 3) {
            windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), 0, windowInsets.getSystemWindowInsetBottom());
        } else if (gravity == 5) {
            windowInsets = windowInsets.replaceSystemWindowInsets(0, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        lp.leftMargin = windowInsets.getSystemWindowInsetLeft();
        lp.topMargin = windowInsets.getSystemWindowInsetTop();
        lp.rightMargin = windowInsets.getSystemWindowInsetRight();
        lp.bottomMargin = windowInsets.getSystemWindowInsetBottom();
    }

    public static int getTopInset(Object insets) {
        if (insets != null) {
            return ((WindowInsets) insets).getSystemWindowInsetTop();
        }
        return 0;
    }

    public static Drawable getDefaultStatusBarBackground(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(THEME_ATTRS);
        try {
            return obtainStyledAttributes.getDrawable(0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    static class InsetsListener implements View.OnApplyWindowInsetsListener {
        InsetsListener() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets insets) {
            ((DrawerLayoutImpl) view).setChildInsets(insets, insets.getSystemWindowInsetTop() > 0);
            return insets.consumeSystemWindowInsets();
        }
    }
}
