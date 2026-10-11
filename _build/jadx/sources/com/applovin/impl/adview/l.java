package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinLogger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f368a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f369b;

    l(AdViewControllerImpl adViewControllerImpl, int i) {
        this.f369b = adViewControllerImpl;
        this.f368a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinLogger appLovinLogger;
        AppLovinAdLoadListener appLovinAdLoadListener;
        AppLovinAdLoadListener appLovinAdLoadListener2;
        try {
            appLovinAdLoadListener = this.f369b.u;
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener2 = this.f369b.u;
                appLovinAdLoadListener2.failedToReceiveAd(this.f368a);
            }
        } catch (Throwable th) {
            appLovinLogger = this.f369b.d;
            appLovinLogger.userError("AppLovinAdView", "Exception while running app load  callback", th);
        }
    }
}
