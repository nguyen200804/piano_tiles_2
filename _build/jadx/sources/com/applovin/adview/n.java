package com.applovin.adview;

import android.view.View;
import android.view.animation.AlphaAnimation;
import com.applovin.impl.sdk.AppLovinSdkImpl;
import com.applovin.impl.sdk.ca;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class n implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f319a;

    n(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f319a = appLovinInterstitialActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AppLovinSdkImpl appLovinSdkImpl;
        ca caVar;
        com.applovin.impl.adview.s sVar;
        com.applovin.impl.adview.s sVar2;
        com.applovin.impl.adview.s sVar3;
        com.applovin.impl.adview.s sVar4;
        appLovinSdkImpl = this.f319a.f;
        appLovinSdkImpl.getLogger().d("AppLovinInterstitialActivity", "Video view tapped!");
        caVar = this.f319a.e;
        if (caVar.z()) {
            sVar = this.f319a.B;
            if (sVar != null) {
                sVar2 = this.f319a.B;
                if (sVar2.getVisibility() != 8) {
                    sVar3 = this.f319a.B;
                    boolean z = sVar3.getVisibility() == 4;
                    AlphaAnimation alphaAnimation = new AlphaAnimation(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
                    alphaAnimation.setDuration(750L);
                    alphaAnimation.setAnimationListener(new o(this, z));
                    sVar4 = this.f319a.B;
                    sVar4.startAnimation(alphaAnimation);
                }
            }
        }
    }
}
