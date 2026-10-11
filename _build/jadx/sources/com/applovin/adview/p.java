package com.applovin.adview;

import android.view.View;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class p implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f322a;

    p(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f322a = appLovinInterstitialActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f322a.dismiss();
    }
}
