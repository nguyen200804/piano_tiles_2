package com.cmplay.ad.Admob;

import android.app.Activity;
import com.applovin.sdk.AppLovinSdk;
import com.cmplay.ad.a;
import com.cmplay.ad.b;
import com.cmplay.ad.c;
import com.cmplay.tile2.GameApp;
import com.cmplay.tile2.ui.AppActivity;
import com.cmplay.util.h;
import com.cmplay.util.t;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;
import java.util.HashMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdmobAds extends b {
    private static final String DEV_ID = "ca-app-pub-6693792149034582/6426967355";
    public static String RESULT_IDS;
    private static AdmobAds sInstance;
    private c mIAdListener;
    private InterstitialAd mInterstitialAd;
    private int mReqAdSource = 1;
    private AdListener mAdListener = new AdListener() { // from class: com.cmplay.ad.Admob.AdmobAds.1
        @Override // com.google.android.gms.ads.AdListener
        public void onAdClosed() {
            super.onAdClosed();
            if (AdmobAds.this.mIAdListener != null) {
                AdmobAds.this.mIAdListener.c();
            }
            com.cmplay.util.c.b("admob", "onAdClosed");
            AdmobAds.this.mInterstitialAd = null;
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(int errorCode) {
            int i;
            super.onAdFailedToLoad(errorCode);
            new com.cmplay.g.b().a(a.f1147b, errorCode, "");
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
            new com.cmplay.util.c.a.b().a(3, i, AdmobAds.this.mReqAdSource, 101);
            com.cmplay.util.c.b("admob", "onAdFailedToLoad = " + errorCode + "  myErrorCode:" + i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLeftApplication() {
            super.onAdLeftApplication();
            com.cmplay.util.c.b("admob", "onAdLeftApplication");
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            super.onAdOpened();
            com.cmplay.util.c.b("admob", "onAdOpened");
            if (AdmobAds.this.mIAdListener != null) {
                AdmobAds.this.mIAdListener.b();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            super.onAdLoaded();
            new com.cmplay.util.c.a.b().a(2, 0, AdmobAds.this.mReqAdSource, 101);
            com.cmplay.util.c.b("admob", "onAdLoaded");
        }
    };

    public AdmobAds() {
        if (h.c()) {
            RESULT_IDS = "ca-app-pub-5208424237196506/4039859676";
            return;
        }
        if (h.d()) {
            RESULT_IDS = "ca-app-pub-5208424237196506/7426658072";
        } else if (h.a()) {
            RESULT_IDS = "ca-app-pub-6693792149034582/4691697639";
        } else {
            RESULT_IDS = "ca-app-pub-6693792149034582/8120114556";
        }
    }

    public static AdmobAds getInstance() {
        if (sInstance == null) {
            synchronized (AdmobAds.class) {
                if (sInstance == null) {
                    sInstance = new AdmobAds();
                }
            }
        }
        return sInstance;
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onCreate(Activity activity) {
        AppLovinSdk.initializeSdk(activity);
        new com.cmplay.util.c.a.b().a(1, 0, 1, 3);
        init();
    }

    private void init() {
        this.mReqAdSource = 1;
        try {
            if (this.mInterstitialAd == null) {
                this.mInterstitialAd = new InterstitialAd(AppActivity.c());
                this.mInterstitialAd.setAdUnitId(RESULT_IDS);
                this.mInterstitialAd.setAdListener(this.mAdListener);
                new AdRequest.Builder().build();
                InterstitialAd interstitialAd = this.mInterstitialAd;
                new com.cmplay.util.c.a.b().a(1, 0, this.mReqAdSource, 101);
                com.cmplay.util.c.b("admob", "prepare");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void newRequest() {
        if (this.mInterstitialAd == null) {
            init();
        } else if (!this.mInterstitialAd.isLoaded()) {
            com.cmplay.util.c.b("admob", "prepare");
            new AdRequest.Builder().build();
            InterstitialAd interstitialAd = this.mInterstitialAd;
            new com.cmplay.util.c.a.b().a(1, 0, this.mReqAdSource, 101);
        }
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean canShow(int reportFrom) {
        return true;
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean show(int reportFrom) {
        boolean z = false;
        try {
            if (this.mInterstitialAd != null && this.mInterstitialAd.isLoaded()) {
                com.cmplay.util.c.b("admob", "show---adapter name = " + this.mInterstitialAd.getMediationAdapterClassName());
                this.mInterstitialAd.show();
                z = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        com.cmplay.util.c.b("admob", "show() + isShow = " + z);
        return z;
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void prepare() {
        this.mReqAdSource = 2;
        newRequest();
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void setListener(c l) {
        this.mIAdListener = l;
    }

    private static void reportToUmeng(String eventId) {
        HashMap hashMap = new HashMap();
        hashMap.put("mcc", t.d(GameApp.f1598a));
        hashMap.put("time", String.valueOf(System.currentTimeMillis() / 1000));
        com.b.a.a.a.a(GameApp.f1598a, eventId, hashMap);
        com.b.a.a.a.a(GameApp.f1598a, eventId + "_1");
    }
}
