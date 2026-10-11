package com.applovin.adview;

import android.view.View;
import android.view.animation.AlphaAnimation;
import com.applovin.impl.sdk.ca;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f307a;

    e(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f307a = appLovinInterstitialActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        boolean k;
        com.applovin.impl.adview.u uVar;
        com.applovin.impl.adview.u uVar2;
        ca caVar;
        com.applovin.impl.adview.u uVar3;
        View view;
        View view2;
        View view3;
        com.applovin.impl.adview.u uVar4;
        try {
            z = this.f307a.n;
            if (z) {
                uVar4 = this.f307a.x;
                uVar4.setVisibility(0);
                return;
            }
            this.f307a.n = true;
            k = this.f307a.k();
            if (k) {
                view = this.f307a.y;
                if (view != null) {
                    view2 = this.f307a.y;
                    view2.setVisibility(0);
                    view3 = this.f307a.y;
                    view3.bringToFront();
                }
            }
            uVar = this.f307a.x;
            uVar.setVisibility(0);
            uVar2 = this.f307a.x;
            uVar2.bringToFront();
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            caVar = this.f307a.e;
            alphaAnimation.setDuration(caVar.e());
            alphaAnimation.setRepeatCount(0);
            uVar3 = this.f307a.x;
            uVar3.startAnimation(alphaAnimation);
        } catch (Throwable th) {
            this.f307a.dismiss();
        }
    }
}
