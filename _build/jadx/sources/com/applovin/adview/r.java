package com.applovin.adview;

import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class r implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f324a;

    r(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f324a = appLovinInterstitialActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.applovin.impl.adview.u uVar;
        uVar = this.f324a.x;
        uVar.performClick();
    }
}
