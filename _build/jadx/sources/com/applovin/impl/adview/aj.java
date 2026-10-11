package com.applovin.impl.adview;

import android.app.Activity;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class aj implements AppLovinAdDisplayListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ af f348a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ai f349b;

    aj(ai aiVar, af afVar) {
        this.f349b = aiVar;
        this.f348a = afVar;
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        boolean z;
        super/*android.app.Dialog*/.show();
        z = this.f349b.h;
        if (z) {
            return;
        }
        AppLovinAdDisplayListener d = this.f348a.d();
        if (d != null) {
            d.adDisplayed(appLovinAd);
        }
        this.f349b.h = true;
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        Activity activity;
        Runnable runnable;
        boolean z;
        activity = this.f349b.f346a;
        runnable = this.f349b.f;
        activity.runOnUiThread(runnable);
        AppLovinAdDisplayListener d = this.f348a.d();
        z = this.f349b.i;
        if (!z && d != null) {
            d.adHidden(appLovinAd);
            this.f349b.i = true;
        }
        this.f348a.a(false);
    }
}
