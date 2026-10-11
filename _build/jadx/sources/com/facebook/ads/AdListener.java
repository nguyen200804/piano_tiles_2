package com.facebook.ads;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface AdListener {
    void onAdClicked(Ad ad);

    void onAdLoaded(Ad ad);

    void onError(Ad ad, AdError adError);

    void onLoggingImpression(Ad ad);
}
