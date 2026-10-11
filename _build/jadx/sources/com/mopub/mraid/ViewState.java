package com.mopub.mraid;

import java.util.Locale;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum ViewState {
    LOADING,
    DEFAULT,
    RESIZED,
    EXPANDED,
    HIDDEN;

    public String toJavascriptString() {
        return toString().toLowerCase(Locale.US);
    }
}
