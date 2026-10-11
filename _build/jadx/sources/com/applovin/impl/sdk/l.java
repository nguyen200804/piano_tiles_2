package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinAd f543a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ h f544b;

    l(h hVar, AppLovinAd appLovinAd) {
        this.f544b = hVar;
        this.f543a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener;
        appLovinAdVideoPlaybackListener = this.f544b.e;
        appLovinAdVideoPlaybackListener.videoPlaybackBegan(this.f543a);
    }
}
