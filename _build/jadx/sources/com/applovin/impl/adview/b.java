package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class b implements AppLovinAdVideoPlaybackListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ af f352a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ai f353b;

    b(ai aiVar, af afVar) {
        this.f353b = aiVar;
        this.f352a = afVar;
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        AppLovinAdVideoPlaybackListener c = this.f352a.c();
        if (c != null) {
            c.videoPlaybackBegan(appLovinAd);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
        AppLovinAdVideoPlaybackListener c = this.f352a.c();
        if (c != null) {
            c.videoPlaybackEnded(appLovinAd, d, z);
        }
    }
}
