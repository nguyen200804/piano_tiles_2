package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class o implements AppLovinAdVideoPlaybackListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f372a;

    o(AdViewControllerImpl adViewControllerImpl) {
        this.f372a = adViewControllerImpl;
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener;
        AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener2;
        appLovinAdVideoPlaybackListener = this.f372a.w;
        if (appLovinAdVideoPlaybackListener != null) {
            appLovinAdVideoPlaybackListener2 = this.f372a.w;
            appLovinAdVideoPlaybackListener2.videoPlaybackBegan(appLovinAd);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
        AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener;
        AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener2;
        appLovinAdVideoPlaybackListener = this.f372a.w;
        if (appLovinAdVideoPlaybackListener != null) {
            appLovinAdVideoPlaybackListener2 = this.f372a.w;
            appLovinAdVideoPlaybackListener2.videoPlaybackEnded(appLovinAd, d, z);
        }
    }
}
