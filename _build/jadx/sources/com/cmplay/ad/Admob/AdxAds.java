package com.cmplay.ad.Admob;

import android.app.Activity;
import com.cmplay.base.util.g;
import com.cmplay.util.c.a.b;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventInterstitial;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdxAds implements CustomEventInterstitial {
    private InterstitialAd mInterstitial;
    private CustomEventInterstitialListener mCustomEventListener = null;
    private AdListener mAdListener = new AdListener() { // from class: com.cmplay.ad.Admob.AdxAds.1
        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            if (AdxAds.this.mCustomEventListener != null) {
                AdxAds.this.mCustomEventListener.onDismissScreen();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int errorCode) {
            int i;
            if (AdxAds.this.mCustomEventListener != null) {
                AdxAds.this.mCustomEventListener.onFailedToReceiveAd();
            }
            switch (errorCode) {
                case 2:
                    i = 2;
                    break;
                case 3:
                    i = 1;
                    break;
                default:
                    i = 4;
                    break;
            }
            new b().a(3, i, 3, 2);
            g.a("zzb_adx", "onAdFailedToLoad ---" + errorCode + "  myErrorCode:" + i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            if (AdxAds.this.mCustomEventListener != null) {
                AdxAds.this.mCustomEventListener.onPresentScreen();
            }
            g.a("zzb_adx", "onAdOpened ---");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            g.a("zzb_adx", "onAdLoaded ---");
            if (AdxAds.this.mCustomEventListener != null) {
                AdxAds.this.mCustomEventListener.onReceivedAd();
            }
            new b().a(2, 0, 3, 2);
        }
    };

    @Override // com.google.ads.mediation.customevent.CustomEventInterstitial
    public void requestInterstitialAd(CustomEventInterstitialListener listener, Activity activity, String s, String serviceParam, MediationAdRequest mediationAdRequest, Object o) {
        g.a("zzb_adx", "requestInterstitialAd ---" + serviceParam);
        this.mCustomEventListener = listener;
        this.mInterstitial = new InterstitialAd(activity);
        this.mInterstitial.setAdUnitId(serviceParam);
        this.mInterstitial.setAdListener(this.mAdListener);
        new AdRequest.Builder().build();
        InterstitialAd interstitialAd = this.mInterstitial;
        new b().a(1, 0, 3, 2);
    }

    @Override // com.google.ads.mediation.customevent.CustomEventInterstitial
    public void showInterstitial() {
        if (this.mInterstitial != null && this.mInterstitial.isLoaded()) {
            this.mInterstitial.show();
        }
    }

    @Override // com.google.ads.mediation.customevent.CustomEvent
    public void destroy() {
        this.mInterstitial = null;
    }
}
