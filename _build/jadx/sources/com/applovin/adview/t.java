package com.applovin.adview;

import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class t implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f326a;

    t(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f326a = appLovinInterstitialActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f326a.u();
    }
}
