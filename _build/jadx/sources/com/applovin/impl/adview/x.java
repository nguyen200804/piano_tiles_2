package com.applovin.impl.adview;

import com.facebook.ads.AudienceNetworkActivity;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class x implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f385a;

    private x(AdViewControllerImpl adViewControllerImpl) {
        this.f385a = adViewControllerImpl;
    }

    /* synthetic */ x(AdViewControllerImpl adViewControllerImpl, a aVar) {
        this(adViewControllerImpl);
    }

    @Override // java.lang.Runnable
    public void run() {
        ac acVar;
        try {
            acVar = this.f385a.h;
            acVar.loadDataWithBaseURL("/", "<html></html>", AudienceNetworkActivity.WEBVIEW_MIME_TYPE, null, "");
        } catch (Exception e) {
        }
    }
}
