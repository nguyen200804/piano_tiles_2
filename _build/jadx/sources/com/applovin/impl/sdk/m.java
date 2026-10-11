package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinAd f545a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ double f546b;
    final /* synthetic */ boolean c;
    final /* synthetic */ h d;

    m(h hVar, AppLovinAd appLovinAd, double d, boolean z) {
        this.d = hVar;
        this.f545a = appLovinAd;
        this.f546b = d;
        this.c = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener;
        appLovinAdVideoPlaybackListener = this.d.e;
        appLovinAdVideoPlaybackListener.videoPlaybackEnded(this.f545a, this.f546b, this.c);
    }
}
