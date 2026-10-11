package com.mopub.common;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum CreativeOrientation {
    PORTRAIT,
    LANDSCAPE,
    UNDEFINED;

    @NonNull
    public static CreativeOrientation fromHeader(@Nullable String orientation) {
        if ("l".equalsIgnoreCase(orientation)) {
            return LANDSCAPE;
        }
        if ("p".equalsIgnoreCase(orientation)) {
            return PORTRAIT;
        }
        return UNDEFINED;
    }
}
