package com.mopub.common.util;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Visibility {
    private Visibility() {
    }

    public static boolean isScreenVisible(int visibility) {
        return visibility == 0;
    }

    public static boolean hasScreenVisibilityChanged(int oldVisibility, int newVisibility) {
        return isScreenVisible(oldVisibility) != isScreenVisible(newVisibility);
    }
}
