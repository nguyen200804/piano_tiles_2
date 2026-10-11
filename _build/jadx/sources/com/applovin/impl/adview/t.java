package com.applovin.impl.adview;

import android.app.Activity;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinSdk;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f380a;

    private t(AdViewControllerImpl adViewControllerImpl) {
        this.f380a = adViewControllerImpl;
    }

    /* synthetic */ t(AdViewControllerImpl adViewControllerImpl, a aVar) {
        this(adViewControllerImpl);
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinAd appLovinAd;
        AppLovinSdk appLovinSdk;
        Activity activity;
        AppLovinAd appLovinAd2;
        appLovinAd = this.f380a.m;
        if (appLovinAd != null) {
            try {
                InterstitialAdDialogCreatorImpl interstitialAdDialogCreatorImpl = new InterstitialAdDialogCreatorImpl();
                appLovinSdk = this.f380a.f330b;
                activity = this.f380a.f329a;
                AppLovinInterstitialAdDialog createInterstitialAdDialog = interstitialAdDialogCreatorImpl.createInterstitialAdDialog(appLovinSdk, activity);
                createInterstitialAdDialog.setAdDisplayListener(new n(this.f380a));
                createInterstitialAdDialog.setAdVideoPlaybackListener(new o(this.f380a));
                createInterstitialAdDialog.setAdClickListener(new m(this.f380a));
                appLovinAd2 = this.f380a.m;
                createInterstitialAdDialog.showAndRender(appLovinAd2);
            } catch (Throwable th) {
            }
        }
    }
}
