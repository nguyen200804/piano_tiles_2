package com.google.android.gms.ads.mediation.customevent;

import com.google.android.gms.ads.mediation.NativeAdMapper;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface CustomEventNativeListener extends CustomEventListener {
    void onAdImpression();

    void onAdLoaded(NativeAdMapper nativeAdMapper);
}
