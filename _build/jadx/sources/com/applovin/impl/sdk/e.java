package com.applovin.impl.sdk;

import android.os.Handler;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class e implements AppLovinAdLoadListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ z f529a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinAdLoadListener f530b;

    e(z zVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f529a = zVar;
        this.f530b = appLovinAdLoadListener;
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        Handler handler;
        this.f529a.c = (AppLovinAdImpl) appLovinAd;
        if (this.f530b != null) {
            handler = this.f529a.e;
            handler.post(new f(this, appLovinAd));
        }
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        Handler handler;
        if (this.f530b != null) {
            handler = this.f529a.e;
            handler.post(new g(this, i));
        }
    }
}
