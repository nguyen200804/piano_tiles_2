package com.applovin.impl.sdk;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class co implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cm f500a;

    co(cm cmVar) {
        this.f500a = cmVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f500a.f497a.removeClickTrackingOverlay();
    }
}
