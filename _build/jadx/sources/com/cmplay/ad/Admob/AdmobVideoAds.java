package com.cmplay.ad.Admob;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.cmplay.ad.a;
import com.cmplay.ad.b;
import com.cmplay.ad.c;
import com.cmplay.util.c.a.e;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdmobVideoAds extends b {
    public static final int ADMOB_AD_TYPE = 1;
    public static final String ADMOB_IDS = "ca-app-pub-6693792149034582/2722524666";
    public static final int ADX_AD_TYPE = 2;
    public static final String ADX_IDS = "ca-mb-app-pub-7828425564722982/8781564921";
    public static String RESULT_IDS = "ca-app-pub-6693792149034582/7452119508";
    private static int adtype = 1;
    private static AdmobVideoAds sInstance;
    private Context context;
    private RewardedVideoAd mAd;
    private c mListener;
    private String TAG = "AdmobVideoAds";
    private int source = 1;
    boolean isLoaded = false;

    private AdmobVideoAds() {
    }

    public static AdmobVideoAds getInstance(int t) {
        if (sInstance == null) {
            synchronized (AdmobVideoAds.class) {
                if (sInstance == null) {
                    sInstance = new AdmobVideoAds();
                }
            }
        }
        if (t == 1) {
            adtype = 1;
            RESULT_IDS = ADMOB_IDS;
        } else if (t == 2) {
            adtype = 2;
            RESULT_IDS = ADX_IDS;
        }
        return sInstance;
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void onCreate(Activity activity) {
        Log.d(this.TAG, "onCreate");
        MobileAds.initialize(activity);
        this.context = activity;
        init();
        this.source = 1;
        if (adtype == 1) {
            new e().a(1, 0, this.source, 8, a.f);
        } else if (adtype == 2) {
            new e().a(1, 0, this.source, 9, a.f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void init() {
        if (this.context != null) {
            this.isLoaded = false;
            this.mAd = MobileAds.getRewardedVideoAdInstance(this.context);
            this.mAd.setRewardedVideoAdListener(new RewardedVideoAdListener() { // from class: com.cmplay.ad.Admob.AdmobVideoAds.1
                @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
                public void onRewardedVideoAdLoaded() {
                    AdmobVideoAds.this.isLoaded = true;
                    Log.d(AdmobVideoAds.this.TAG, "on ad onRewardedVideoAdLoaded");
                    if (AdmobVideoAds.adtype == 1) {
                        new e().a(2, 0, AdmobVideoAds.this.source, 8, a.f);
                    } else if (AdmobVideoAds.adtype == 2) {
                        new e().a(2, 0, AdmobVideoAds.this.source, 9, a.f);
                    }
                }

                @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
                public void onRewardedVideoAdOpened() {
                    Log.d(AdmobVideoAds.this.TAG, "on ad onRewardedVideoAdOpened");
                }

                @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
                public void onRewardedVideoStarted() {
                    Log.d(AdmobVideoAds.this.TAG, "on ad start");
                    if (AdmobVideoAds.this.mListener != null) {
                        AdmobVideoAds.this.mListener.a();
                    }
                }

                @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
                public void onRewardedVideoAdClosed() {
                    Log.d(AdmobVideoAds.this.TAG, "on ad onFinished");
                    AdmobVideoAds.this.init();
                    AdmobVideoAds.this.source = 2;
                    if (AdmobVideoAds.adtype == 1) {
                        new e().a(1, 0, AdmobVideoAds.this.source, 8, a.f);
                    } else if (AdmobVideoAds.adtype == 2) {
                        new e().a(1, 0, AdmobVideoAds.this.source, 9, a.f);
                    }
                }

                @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
                public void onRewarded(RewardItem rewardItem) {
                    Log.d(AdmobVideoAds.this.TAG, "rewardItem");
                    if (AdmobVideoAds.this.mListener != null) {
                        AdmobVideoAds.this.mListener.a(false);
                    }
                }

                @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
                public void onRewardedVideoAdLeftApplication() {
                    Log.d(AdmobVideoAds.this.TAG, "on ad onRewardedVideoAdLeftApplication");
                }

                @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
                public void onRewardedVideoAdFailedToLoad(int i) {
                    Log.d(AdmobVideoAds.this.TAG, "on ad onViewShowFail" + i);
                    if (AdmobVideoAds.adtype == 1) {
                        new e().a(3, i, AdmobVideoAds.this.source, 8, a.f);
                    } else if (AdmobVideoAds.adtype == 2) {
                        new e().a(3, i, AdmobVideoAds.this.source, 9, a.f);
                    }
                }
            });
            new AdRequest.Builder().build();
            RewardedVideoAd rewardedVideoAd = this.mAd;
            String str = RESULT_IDS;
            Log.d(this.TAG, RESULT_IDS);
        }
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean canShow(int reportFrom) {
        return this.mAd != null && this.isLoaded;
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public boolean show(int reportFrom) {
        try {
            if (!canShow(reportFrom)) {
                return false;
            }
            this.mAd.show();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.cmplay.ad.b, com.cmplay.ad.d
    public void setListener(c l) {
        this.mListener = l;
    }
}
