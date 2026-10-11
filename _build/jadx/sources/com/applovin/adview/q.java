package com.applovin.adview;

import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class q implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f323a;

    q(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f323a = appLovinInterstitialActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f323a.r();
    }
}
