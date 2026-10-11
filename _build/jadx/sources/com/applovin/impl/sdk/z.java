package com.applovin.impl.sdk;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.SoftReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class z {
    private static String k = null;

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinSdkImpl f564a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinAdServiceImpl f565b;
    private AppLovinAdImpl c;
    private SoftReference d;
    private volatile String g;
    private cj h;
    private SoftReference j;
    private final Object f = new Object();
    private volatile boolean i = false;
    private final Handler e = new Handler(Looper.getMainLooper());

    public z(AppLovinSdk appLovinSdk) {
        this.f564a = (AppLovinSdkImpl) appLovinSdk;
        this.f565b = (AppLovinAdServiceImpl) appLovinSdk.getAdService();
    }

    public static void a(String str) {
        k = str;
    }

    public static String b() {
        return k;
    }

    private void e() {
        AppLovinAdLoadListener appLovinAdLoadListener;
        if (this.d == null || (appLovinAdLoadListener = (AppLovinAdLoadListener) this.d.get()) == null) {
            return;
        }
        appLovinAdLoadListener.failedToReceiveAd(AppLovinErrorCodes.INCENTIVIZED_NO_AD_PRELOADED);
    }

    private AppLovinAdRewardListener f() {
        return new d(this);
    }

    public void a(Activity activity, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        AppLovinAdRewardListener f = appLovinAdRewardListener == null ? f() : appLovinAdRewardListener;
        if (!a()) {
            this.f564a.getLogger().userError("IncentivizedAdController", "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded.");
            e();
            return;
        }
        if (!AppLovinSdkUtils.isValidString(this.c.getVideoFilename()) || this.f564a.getFileManager().a(this.c.getVideoFilename(), activity)) {
            if (!((Boolean) this.f564a.a(av.ah)).booleanValue()) {
                b(activity, f, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
                return;
            }
            t tVar = new t(this.f564a, this);
            tVar.a(activity);
            tVar.a(appLovinAdDisplayListener);
            tVar.a(appLovinAdClickListener);
            tVar.a(appLovinAdVideoPlaybackListener);
            tVar.a(f);
            tVar.a();
        }
    }

    void a(AppLovinAd appLovinAd, AppLovinAdRewardListener appLovinAdRewardListener) {
        this.h = new cj(this.f564a, appLovinAd, appLovinAdRewardListener);
        this.f564a.a().a(this.h, bp.BACKGROUND);
    }

    public void a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.d = new SoftReference(appLovinAdLoadListener);
        if (!a()) {
            this.f565b.loadNextAd(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED, new e(this, appLovinAdLoadListener));
            return;
        }
        this.f564a.getLogger().userError("IncentivizedAdController", "Attempted to call preloadAndNotify: while an ad was already loaded or currently being played. Do not call preloadAndNotify: again until the last ad has been closed (adHidden).");
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.adReceived(this.c);
        }
    }

    void a(AppLovinAdRewardListener appLovinAdRewardListener) {
        appLovinAdRewardListener.userDeclinedToViewAd(this.c);
    }

    void a(String str, Activity activity) {
        if (str == null || !((Boolean) this.f564a.a(av.ai)).booleanValue()) {
            return;
        }
        new ao(this.f564a, activity, str).a();
    }

    public boolean a() {
        return this.c != null;
    }

    void b(Activity activity, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        if (!a()) {
            this.f564a.getLogger().userError("IncentivizedAdController", "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded.");
            e();
            return;
        }
        AppLovinAd appLovinAd = this.c;
        if (!appLovinAd.getType().equals(AppLovinAdType.INCENTIVIZED)) {
            this.f564a.getLogger().e("IncentivizedAdController", "Attempted to render an ad of type " + this.c.getType() + " in an Incentivized Ad interstitial.");
            appLovinAdVideoPlaybackListener.videoPlaybackEnded(this.c, 0.0d, false);
            return;
        }
        AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(this.f564a, activity);
        h hVar = new h(this, activity, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener, null);
        create.setAdDisplayListener(hVar);
        create.setAdVideoPlaybackListener(hVar);
        create.setAdClickListener(hVar);
        create.showAndRender(appLovinAd);
        this.j = new SoftReference(create);
        a(appLovinAd, hVar);
    }

    void b(String str) {
        synchronized (this.f) {
            this.g = str;
        }
    }

    String c() {
        String str;
        synchronized (this.f) {
            str = this.g;
        }
        return str;
    }

    public void d() {
        AppLovinInterstitialAdDialog appLovinInterstitialAdDialog;
        if (this.j == null || (appLovinInterstitialAdDialog = (AppLovinInterstitialAdDialog) this.j.get()) == null) {
            return;
        }
        appLovinInterstitialAdDialog.dismiss();
    }
}
