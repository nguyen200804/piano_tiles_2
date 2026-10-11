package com.applovin.adview;

import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class s implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f325a;

    s(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f325a = appLovinInterstitialActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.applovin.impl.adview.u uVar;
        uVar = this.f325a.z;
        uVar.performClick();
    }
}
