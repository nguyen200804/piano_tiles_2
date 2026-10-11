package com.facebook.ads;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class AbstractAdListener implements AdListener, InterstitialAdListener {
    @Override // com.facebook.ads.AdListener
    public void onAdClicked(Ad ad) {
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(Ad ad) {
    }

    @Override // com.facebook.ads.AdListener
    public void onError(Ad ad, AdError adError) {
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDismissed(Ad ad) {
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDisplayed(Ad ad) {
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(Ad ad) {
    }
}
