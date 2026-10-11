package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinLogger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinAd f335a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f336b;

    a(AdViewControllerImpl adViewControllerImpl, AppLovinAd appLovinAd) {
        this.f336b = adViewControllerImpl;
        this.f335a = appLovinAd;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinLogger appLovinLogger;
        AppLovinAdLoadListener appLovinAdLoadListener;
        AppLovinAdLoadListener appLovinAdLoadListener2;
        try {
            appLovinAdLoadListener = this.f336b.u;
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener2 = this.f336b.u;
                appLovinAdLoadListener2.adReceived(this.f335a);
            }
        } catch (Throwable th) {
            appLovinLogger = this.f336b.d;
            appLovinLogger.userError(AppLovinLogger.SDK_TAG, "Exception while running app load callback: " + th.getMessage());
        }
    }
}
