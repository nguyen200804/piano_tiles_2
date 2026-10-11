package com.mopub.common.util;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.logging.MoPubLog;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Views {
    public static void removeFromParent(@Nullable View view) {
        if (view != null && view.getParent() != null && (view.getParent() instanceof ViewGroup)) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
    }

    @Nullable
    public static View getTopmostView(@Nullable Context context, @Nullable View view) {
        View a2 = a(context);
        return a2 != null ? a2 : a(view);
    }

    @Nullable
    private static View a(@Nullable Context context) {
        if (context instanceof Activity) {
            return ((Activity) context).getWindow().getDecorView().findViewById(R.id.content);
        }
        return null;
    }

    @Nullable
    private static View a(@Nullable View view) {
        if (view == null) {
            return null;
        }
        if (!ViewCompat.isAttachedToWindow(view)) {
            MoPubLog.d("Attempting to call View#getRootView() on an unattached View.");
        }
        View rootView = view.getRootView();
        if (rootView == null) {
            return null;
        }
        View findViewById = rootView.findViewById(R.id.content);
        return findViewById == null ? rootView : findViewById;
    }
}
