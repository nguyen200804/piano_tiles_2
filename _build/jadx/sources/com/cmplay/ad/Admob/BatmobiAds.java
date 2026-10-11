package com.cmplay.ad.Admob;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Log;
import com.cmplay.util.c.a.b;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.customevent.CustomEventInterstitial;
import com.google.ads.mediation.customevent.CustomEventInterstitialListener;
import com.mnt.AdError;
import com.mnt.IAdListener;
import com.mnt.MntAdType;
import com.mnt.MntBuild;
import com.mnt.MntInterstitial;
import com.mnt.MntLib;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class BatmobiAds implements CustomEventInterstitial {
    private static String BATMOBI_AD_INTERSTITIAL_PLACEMENTID = "11783_10132";
    private static String BATMOBI_APPKEY = "E2WQR5JU81UR9SCR9HPS7MYC";
    private MntInterstitial interstitialAd;
    private CustomEventInterstitialListener mCustomEventListener = null;

    @Override // com.google.ads.mediation.customevent.CustomEventInterstitial
    public void requestInterstitialAd(CustomEventInterstitialListener listener, Activity activity, String s, String serviceParam, MediationAdRequest mediationAdRequest, Object o) {
        Log.d("requestInterstitialAd", serviceParam);
        this.mCustomEventListener = listener;
        if (!TextUtils.isEmpty(serviceParam)) {
            String[] split = serviceParam.split("|");
            if (split.length == 2) {
                BATMOBI_AD_INTERSTITIAL_PLACEMENTID = split[0];
                BATMOBI_APPKEY = split[1];
            }
        }
        MntLib.init(activity.getApplication(), BATMOBI_APPKEY);
        loadAd(activity);
    }

    @Override // com.google.ads.mediation.customevent.CustomEventInterstitial
    public void showInterstitial() {
        if (this.interstitialAd != null && this.interstitialAd.isAdLoaded()) {
            this.interstitialAd.show();
        }
    }

    @Override // com.google.ads.mediation.customevent.CustomEvent
    public void destroy() {
        if (this.interstitialAd != null) {
            this.interstitialAd.onDestory();
        }
    }

    private void loadAd(Activity activity) {
        MntLib.load(new MntBuild.Builder(activity.getApplicationContext(), BATMOBI_AD_INTERSTITIAL_PLACEMENTID, MntAdType.INTERSTITIAL_320X480.getType(), new IAdListener() { // from class: com.cmplay.ad.Admob.BatmobiAds.1
            @Override // com.mnt.IAdListener
            public void onAdLoadFinish(Object obj) {
                if (obj == null) {
                    BatmobiAds.this.mCustomEventListener.onFailedToReceiveAd();
                    return;
                }
                if (obj instanceof MntInterstitial) {
                    BatmobiAds.this.interstitialAd = (MntInterstitial) obj;
                    BatmobiAds.this.mCustomEventListener.onReceivedAd();
                }
                new b().a(2, 0, 3, 5);
            }

            @Override // com.mnt.IAdListener
            public void onAdError(AdError error) {
                BatmobiAds.this.mCustomEventListener.onFailedToReceiveAd();
                new b().a(3, error.getErrorCode(), 3, 5);
            }

            @Override // com.mnt.IAdListener
            public void onAdClosed() {
                BatmobiAds.this.mCustomEventListener.onDismissScreen();
            }

            @Override // com.mnt.IAdListener
            public void onAdShowed() {
                BatmobiAds.this.mCustomEventListener.onPresentScreen();
            }

            @Override // com.mnt.IAdListener
            public void onAdClicked() {
            }
        }).build());
        new b().a(1, 0, 3, 5);
    }
}
