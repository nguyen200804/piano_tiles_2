package com.applovin.adview;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.applovin.impl.sdk.z;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdk;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AppLovinIncentivizedInterstitial {

    /* renamed from: a, reason: collision with root package name */
    private z f296a;

    public AppLovinIncentivizedInterstitial(Context context) {
        this(AppLovinSdk.getInstance(context));
    }

    public AppLovinIncentivizedInterstitial(AppLovinSdk appLovinSdk) {
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("SDK cannot be null");
        }
        this.f296a = new z(appLovinSdk);
    }

    public static AppLovinIncentivizedInterstitial create(Context context) {
        return create(AppLovinSdk.getInstance(context));
    }

    public static AppLovinIncentivizedInterstitial create(AppLovinSdk appLovinSdk) {
        return new AppLovinIncentivizedInterstitial(appLovinSdk);
    }

    public void dismiss() {
        this.f296a.d();
    }

    public String getUserIdentifier() {
        return z.b();
    }

    public boolean isAdReadyToDisplay() {
        return this.f296a.a();
    }

    public void preload(AppLovinAdLoadListener appLovinAdLoadListener) {
        if (appLovinAdLoadListener == null) {
            Log.i("AppLovinIncentivizedInterstitial", "AppLovinAdLoadListener was null when preloading incentivized interstitials; using a listener is highly recommended.");
        }
        this.f296a.a(appLovinAdLoadListener);
    }

    public void setUserIdentifier(String str) {
        z.a(str);
    }

    public void show(Activity activity) {
        show(activity, null, null);
    }

    public void show(Activity activity, AppLovinAdRewardListener appLovinAdRewardListener) {
        show(activity, appLovinAdRewardListener, null);
    }

    public void show(Activity activity, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        show(activity, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, null);
    }

    public void show(Activity activity, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener) {
        show(activity, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, null);
    }

    public void show(Activity activity, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        this.f296a.a(activity, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
    }
}
