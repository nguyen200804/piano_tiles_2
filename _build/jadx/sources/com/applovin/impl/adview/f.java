package com.applovin.impl.adview;

import com.applovin.sdk.AppLovinLogger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ai f359a;

    private f(ai aiVar) {
        this.f359a = aiVar;
    }

    /* synthetic */ f(ai aiVar, aj ajVar) {
        this(aiVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinLogger appLovinLogger;
        AppLovinLogger appLovinLogger2;
        try {
            this.f359a.dismiss();
        } catch (Throwable th) {
            appLovinLogger = this.f359a.c;
            if (appLovinLogger != null) {
                appLovinLogger2 = this.f359a.c;
                appLovinLogger2.e("InterstitialAdDialog", "dismiss() threw exception", th);
            }
        }
    }
}
