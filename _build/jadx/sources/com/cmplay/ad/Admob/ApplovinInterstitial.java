package com.cmplay.ad.Admob;

import android.app.Activity;
import android.util.Log;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.cmplay.tile2.ui.AppActivity;
import com.cmplay.util.c.a.b;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventInterstitial;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ApplovinInterstitial implements CustomEventInterstitial {
    public static boolean isInitApplovin = false;
    private AppLovinAd lastAd;
    private CustomEventInterstitialListener mListener;

    @Override // com.google.ads.mediation.customevent.CustomEventInterstitial
    public void requestInterstitialAd(CustomEventInterstitialListener listener, Activity activity, String label, String serverParameter, MediationAdRequest request, Object unused) {
        this.mListener = listener;
        AppLovinSdk.getInstance(activity).getAdService().loadNextAd(AppLovinAdSize.INTERSTITIAL, new AppLovinAdLoadListener() { // from class: com.cmplay.ad.Admob.ApplovinInterstitial.1
            @Override // com.applovin.sdk.AppLovinAdLoadListener
            public void adReceived(AppLovinAd ad) {
                ApplovinInterstitial.this.lastAd = ad;
                ApplovinInterstitial.this.mListener.onReceivedAd();
                new b().a(2, 0, 3, 3);
            }

            @Override // com.applovin.sdk.AppLovinAdLoadListener
            public void failedToReceiveAd(int errorCode) {
                ApplovinInterstitial.this.mListener.onFailedToReceiveAd();
                new b().a(3, errorCode, 3, 3);
            }
        });
        new b().a(1, 0, 3, 3);
    }

    @Override // com.google.ads.mediation.customevent.CustomEventInterstitial
    public void showInterstitial() {
        if (this.lastAd != null && this.mListener != null) {
            AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(AppLovinSdk.getInstance(AppActivity.c()), AppActivity.c());
            create.setAdDisplayListener(new AppLovinAdDisplayListener() { // from class: com.cmplay.ad.Admob.ApplovinInterstitial.2
                @Override // com.applovin.sdk.AppLovinAdDisplayListener
                public void adHidden(AppLovinAd ad) {
                    ApplovinInterstitial.this.mListener.onDismissScreen();
                }

                @Override // com.applovin.sdk.AppLovinAdDisplayListener
                public void adDisplayed(AppLovinAd ad) {
                    ApplovinInterstitial.this.mListener.onPresentScreen();
                }
            });
            create.showAndRender(this.lastAd);
        }
    }

    @Override // com.google.ads.mediation.customevent.CustomEvent
    public void destroy() {
        this.lastAd = null;
        this.mListener = null;
        Log.e(AppLovinSdk.URI_SCHEME, "ap---destroy");
    }
}
