package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinLogger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f374a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinAd f375b;

    public q(AdViewControllerImpl adViewControllerImpl, AppLovinAd appLovinAd) {
        this.f374a = adViewControllerImpl;
        this.f375b = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAdClickListener appLovinAdClickListener;
        AppLovinLogger appLovinLogger;
        appLovinAdClickListener = this.f374a.x;
        if (appLovinAdClickListener == null || this.f375b == null) {
            return;
        }
        try {
            appLovinAdClickListener.adClicked(this.f375b);
        } catch (Throwable th) {
            appLovinLogger = this.f374a.d;
            appLovinLogger.userError("AppLovinAdView", "Exception while notifying ad click listener", th);
        }
    }
}
