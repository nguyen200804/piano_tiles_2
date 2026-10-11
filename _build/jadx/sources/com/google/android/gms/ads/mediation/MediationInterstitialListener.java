package com.google.android.gms.ads.mediation;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface MediationInterstitialListener {
    void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter);

    void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter);

    void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int i);

    void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter);

    void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter);

    void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter);
}
