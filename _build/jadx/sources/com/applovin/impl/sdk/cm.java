package com.applovin.impl.sdk;

import android.net.Uri;
import android.os.Handler;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.adview.AdViewControllerImpl;
import com.applovin.sdk.AppLovinPostbackListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class cm implements AppLovinPostbackListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f497a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Uri f498b;
    final /* synthetic */ AppLovinAdImpl c;
    final /* synthetic */ AppLovinAdView d;
    final /* synthetic */ AppLovinAdServiceImpl e;

    cm(AppLovinAdServiceImpl appLovinAdServiceImpl, AdViewControllerImpl adViewControllerImpl, Uri uri, AppLovinAdImpl appLovinAdImpl, AppLovinAdView appLovinAdView) {
        this.e = appLovinAdServiceImpl;
        this.f497a = adViewControllerImpl;
        this.f498b = uri;
        this.c = appLovinAdImpl;
        this.d = appLovinAdView;
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackFailure(String str, int i) {
        Handler handler;
        handler = this.e.c;
        handler.post(new co(this));
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackSuccess(String str) {
        Handler handler;
        handler = this.e.c;
        handler.post(new cn(this));
    }
}
