package com.cmplay.ad.Admob;

import android.app.Activity;
import android.util.Log;
import com.applovin.sdk.AppLovinAd;
import com.cmplay.util.c.a.b;
import com.duapps.ad.h;
import com.duapps.ad.i;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventInterstitial;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BaiduAds implements CustomEventInterstitial {
    private h iad;
    private AppLovinAd lastAd;
    private CustomEventInterstitialListener mListener;
    private boolean isLoaded = false;
    private String Tag = "BaiduAds";

    @Override // com.google.ads.mediation.customevent.CustomEventInterstitial
    public void requestInterstitialAd(CustomEventInterstitialListener listener, Activity activity, String s, String serviceParam, MediationAdRequest mediationAdRequest, Object o) {
        Log.d(this.Tag, "requestInterstitialAd ---" + serviceParam);
        this.mListener = listener;
        setIAD(activity);
    }

    @Override // com.google.ads.mediation.customevent.CustomEventInterstitial
    public void showInterstitial() {
        if (this.isLoaded && this.iad != null) {
            this.iad.b();
            Log.d(this.Tag, "showInterstitial ---");
            this.isLoaded = false;
        }
    }

    @Override // com.google.ads.mediation.customevent.CustomEvent
    public void destroy() {
        if (this.iad != null) {
            this.iad.d();
        }
    }

    private void setIAD(Activity mActivity) {
        if (this.iad == null) {
            this.iad = new h(mActivity, 138420, h.a.NORMAL);
            this.iad.a(new i() { // from class: com.cmplay.ad.Admob.BaiduAds.1
                @Override // com.duapps.ad.i
                public void onAdFail(int i) {
                    BaiduAds.this.mListener.onFailedToReceiveAd();
                    Log.d(BaiduAds.this.Tag, "onAdFail ---" + i);
                    new b().a(3, i, 3, 4);
                }

                @Override // com.duapps.ad.i
                public void onAdReceive() {
                    BaiduAds.this.isLoaded = true;
                    Log.d(BaiduAds.this.Tag, "onAdReceive ---");
                    BaiduAds.this.mListener.onReceivedAd();
                    new b().a(2, 0, 3, 4);
                }

                @Override // com.duapps.ad.i
                public void onAdDismissed() {
                    BaiduAds.this.mListener.onDismissScreen();
                }

                @Override // com.duapps.ad.i
                public void onAdPresent() {
                    BaiduAds.this.mListener.onPresentScreen();
                }

                @Override // com.duapps.ad.i
                public void onAdClicked() {
                }
            });
        }
        this.isLoaded = false;
        this.iad.a();
        new b().a(1, 0, 3, 4);
    }
}
