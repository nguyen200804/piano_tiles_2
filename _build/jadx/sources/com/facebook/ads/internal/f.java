package com.facebook.ads.internal;

import android.support.v7.widget.helper.ItemTouchHelper;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum f {
    UNKNOWN(0),
    WEBVIEW_BANNER_LEGACY(4),
    WEBVIEW_BANNER_50(5),
    WEBVIEW_BANNER_90(6),
    WEBVIEW_BANNER_250(7),
    WEBVIEW_INTERSTITIAL_UNKNOWN(100),
    WEBVIEW_INTERSTITIAL_HORIZONTAL(101),
    WEBVIEW_INTERSTITIAL_VERTICAL(102),
    WEBVIEW_INTERSTITIAL_TABLET(103),
    NATIVE_UNKNOWN(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION),
    REWARDED_VIDEO(400),
    NATIVE_250(201),
    INSTREAM_VIDEO(300);

    private final int n;

    f(int i) {
        this.n = i;
    }

    public int a() {
        return this.n;
    }
}
