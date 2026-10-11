package com.applovin.adview;

import android.app.Activity;
import com.applovin.impl.adview.InterstitialAdDialogCreatorImpl;
import com.applovin.sdk.AppLovinSdk;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class u implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinSdk f327a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Activity f328b;

    u(AppLovinSdk appLovinSdk, Activity activity) {
        this.f327a = appLovinSdk;
        this.f328b = activity;
    }

    @Override // java.lang.Runnable
    public void run() {
        new InterstitialAdDialogCreatorImpl().createInterstitialAdDialog(this.f327a, this.f328b).show();
    }
}
