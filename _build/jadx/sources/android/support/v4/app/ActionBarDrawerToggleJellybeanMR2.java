package android.support.v4.app;

import android.R;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ActionBarDrawerToggleJellybeanMR2 {
    private static final String TAG = "ActionBarDrawerToggleImplJellybeanMR2";
    private static final int[] THEME_ATTRS = {R.attr.homeAsUpIndicator};

    ActionBarDrawerToggleJellybeanMR2() {
    }

    public static Object setActionBarUpIndicator(Object info, Activity activity, Drawable drawable, int contentDescRes) {
        ActionBar actionBar = activity.getActionBar();
        if (actionBar != null) {
            actionBar.setHomeAsUpIndicator(drawable);
            actionBar.setHomeActionContentDescription(contentDescRes);
        }
        return info;
    }

    public static Object setActionBarDescription(Object info, Activity activity, int contentDescRes) {
        ActionBar actionBar = activity.getActionBar();
        if (actionBar != null) {
            actionBar.setHomeActionContentDescription(contentDescRes);
        }
        return info;
    }

    public static Drawable getThemeUpIndicator(Activity activity) {
        ActionBar actionBar = activity.getActionBar();
        Context context = activity;
        if (actionBar != null) {
            context = actionBar.getThemedContext();
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, THEME_ATTRS, R.attr.actionBarStyle, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }
}
