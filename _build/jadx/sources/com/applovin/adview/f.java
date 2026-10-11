package com.applovin.adview;

import android.view.View;
import android.view.animation.AlphaAnimation;
import com.applovin.impl.sdk.ca;
import com.applovin.sdk.AppLovinLogger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f308a;

    f(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f308a = appLovinInterstitialActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinLogger appLovinLogger;
        boolean z;
        com.applovin.impl.adview.u uVar;
        com.applovin.impl.adview.u uVar2;
        ca caVar;
        com.applovin.impl.adview.u uVar3;
        boolean k;
        View view;
        View view2;
        View view3;
        try {
            z = this.f308a.o;
            if (z) {
                return;
            }
            uVar = this.f308a.z;
            if (uVar != null) {
                this.f308a.o = true;
                uVar2 = this.f308a.z;
                uVar2.setVisibility(0);
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                caVar = this.f308a.e;
                alphaAnimation.setDuration(caVar.e());
                alphaAnimation.setRepeatCount(0);
                uVar3 = this.f308a.z;
                uVar3.startAnimation(alphaAnimation);
                k = this.f308a.k();
                if (k) {
                    view = this.f308a.A;
                    if (view != null) {
                        view2 = this.f308a.A;
                        view2.setVisibility(0);
                        view3 = this.f308a.A;
                        view3.bringToFront();
                    }
                }
            }
        } catch (Throwable th) {
            appLovinLogger = this.f308a.d;
            appLovinLogger.w("AppLovinInterstitialActivity", "Unable to show skip button: " + th);
        }
    }
}
