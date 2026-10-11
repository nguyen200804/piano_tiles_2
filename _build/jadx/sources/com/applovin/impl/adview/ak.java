package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ak implements AppLovinAdClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ af f350a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ai f351b;

    ak(ai aiVar, af afVar) {
        this.f351b = aiVar;
        this.f350a = afVar;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        AppLovinAdClickListener e = this.f350a.e();
        if (e != null) {
            e.adClicked(appLovinAd);
        }
    }
}
