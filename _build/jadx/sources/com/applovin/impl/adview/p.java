package com.applovin.impl.adview;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AdViewControllerImpl f373a;

    private p(AdViewControllerImpl adViewControllerImpl) {
        this.f373a = adViewControllerImpl;
    }

    /* synthetic */ p(AdViewControllerImpl adViewControllerImpl, a aVar) {
        this(adViewControllerImpl);
    }

    @Override // java.lang.Runnable
    public void run() {
        ac acVar;
        acVar = this.f373a.h;
        acVar.setVisibility(8);
    }
}
