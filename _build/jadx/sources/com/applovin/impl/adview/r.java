package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinLogger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class r implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f376a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinAd f377b;

    public r(AdViewControllerImpl adViewControllerImpl, AppLovinAd appLovinAd) {
        this.f376a = adViewControllerImpl;
        this.f377b = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdDisplayListener appLovinAdDisplayListener;
        AppLovinLogger appLovinLogger;
        appLovinAdDisplayListener = this.f376a.v;
        if (appLovinAdDisplayListener == null || this.f377b == null) {
            return;
        }
        try {
            appLovinAdDisplayListener.adHidden(this.f377b);
        } catch (Throwable th) {
            appLovinLogger = this.f376a.d;
            appLovinLogger.userError("AppLovinAdView", "Exception while notifying ad display listener", th);
        }
    }
}
