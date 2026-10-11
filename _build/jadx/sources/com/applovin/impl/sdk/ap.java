package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinPostbackListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ap implements AppLovinPostbackListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinPostbackListener f430a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ PostbackServiceImpl f431b;

    ap(PostbackServiceImpl postbackServiceImpl, AppLovinPostbackListener appLovinPostbackListener) {
        this.f431b = postbackServiceImpl;
        this.f430a = appLovinPostbackListener;
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackFailure(String str, int i) {
        AppLovinSdkImpl appLovinSdkImpl;
        appLovinSdkImpl = this.f431b.f402a;
        appLovinSdkImpl.getLogger().e("PostbackService", "Failed to dispatch postback to URL " + str + ": " + i);
        if (this.f430a != null) {
            this.f430a.onPostbackFailure(str, i);
        }
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackSuccess(String str) {
        AppLovinSdkImpl appLovinSdkImpl;
        appLovinSdkImpl = this.f431b.f402a;
        appLovinSdkImpl.getLogger().d("PostbackService", "Successfully dispatched postback to URL " + str);
        if (this.f430a != null) {
            this.f430a.onPostbackSuccess(str);
        }
    }
}
