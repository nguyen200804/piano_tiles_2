package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdkSettings;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class bt implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bo f471a;

    /* renamed from: b, reason: collision with root package name */
    private final String f472b;
    private final au c;
    private final bp d;

    bt(bo boVar, au auVar, bp bpVar) {
        this.f471a = boVar;
        this.f472b = auVar.a();
        this.c = auVar;
        this.d = bpVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppLovinLogger appLovinLogger;
        AppLovinSdkImpl appLovinSdkImpl;
        AppLovinLogger appLovinLogger2;
        AppLovinSdkImpl appLovinSdkImpl2;
        AppLovinSdkImpl appLovinSdkImpl3;
        AppLovinLogger appLovinLogger3;
        AppLovinSdkImpl appLovinSdkImpl4;
        AppLovinLogger appLovinLogger4;
        AppLovinLogger appLovinLogger5;
        AppLovinSdkImpl appLovinSdkImpl5;
        AppLovinSdkImpl appLovinSdkImpl6;
        long currentTimeMillis = System.currentTimeMillis();
        try {
            n.a();
            appLovinSdkImpl = this.f471a.f462a;
            if (appLovinSdkImpl.e()) {
                appLovinLogger2 = this.f471a.f463b;
                appLovinLogger2.i(this.f472b, "Task re-scheduled...");
                this.f471a.a(this.c, this.d, 2000L);
                return;
            }
            appLovinSdkImpl2 = this.f471a.f462a;
            if (!appLovinSdkImpl2.isEnabled()) {
                appLovinSdkImpl3 = this.f471a.f462a;
                if (appLovinSdkImpl3.f()) {
                    appLovinSdkImpl4 = this.f471a.f462a;
                    appLovinSdkImpl4.a((AppLovinSdkSettings) null);
                } else {
                    appLovinLogger3 = this.f471a.f463b;
                    appLovinLogger3.w(this.f472b, "Task not executed, SDK is disabled");
                }
                this.c.b();
                return;
            }
            appLovinLogger4 = this.f471a.f463b;
            appLovinLogger4.i(this.f472b, "Task started execution...");
            this.c.run();
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            if (this.c instanceof dg) {
                dg dgVar = (dg) this.c;
                db a2 = db.a();
                String e = dgVar.e();
                appLovinSdkImpl6 = this.f471a.f462a;
                a2.a(e, currentTimeMillis2, cx.a(appLovinSdkImpl6), dgVar.f());
            }
            appLovinLogger5 = this.f471a.f463b;
            appLovinLogger5.i(this.f472b, "Task executed successfully in " + currentTimeMillis2 + "ms.");
            appLovinSdkImpl5 = this.f471a.f462a;
            bc b2 = appLovinSdkImpl5.b();
            b2.a(this.f472b + "_count");
            b2.a(this.f472b + "_time", currentTimeMillis2);
        } catch (Throwable th) {
            appLovinLogger = this.f471a.f463b;
            appLovinLogger.e(this.f472b, "Task failed execution in " + (System.currentTimeMillis() - currentTimeMillis) + "ms.", th);
        }
    }
}
