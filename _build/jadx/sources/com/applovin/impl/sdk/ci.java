package com.applovin.impl.sdk;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ci extends au {

    /* renamed from: a, reason: collision with root package name */
    private final bg f491a;

    public ci(AppLovinSdkImpl appLovinSdkImpl, bg bgVar) {
        super("TaskCollectAdvertisingId", appLovinSdkImpl);
        this.f491a = bgVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f491a.a(this.f.getDataCollector().c());
    }
}
