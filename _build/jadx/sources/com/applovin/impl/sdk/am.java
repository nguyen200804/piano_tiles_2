package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinPostbackListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class am implements AppLovinPostbackListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f424a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bm f425b;

    am(bm bmVar, an anVar) {
        this.f425b = bmVar;
        this.f424a = anVar;
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackFailure(String str, int i) {
        AppLovinLogger appLovinLogger;
        appLovinLogger = this.f425b.f459b;
        appLovinLogger.i("PersistentPostbackManager", "Failed to submit postback with errorCode " + i + ". Will retry later...  Postback: " + this.f424a);
        this.f425b.e(this.f424a);
    }

    @Override // com.applovin.sdk.AppLovinPostbackListener
    public void onPostbackSuccess(String str) {
        AppLovinLogger appLovinLogger;
        this.f425b.d(this.f424a);
        appLovinLogger = this.f425b.f459b;
        appLovinLogger.d("PersistentPostbackManager", "Successfully submitted postback: " + this.f424a);
        this.f425b.b();
    }
}
