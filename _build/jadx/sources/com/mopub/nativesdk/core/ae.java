package com.mopub.nativesdk.core;

/* compiled from: RRManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class ae implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ String f4658a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ long f4659b;
    private /* synthetic */ ad c;

    ae(ad adVar, String str, long j) {
        this.c = adVar;
        this.f4658a = str;
        this.f4659b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        n nVar = this.c.f4656a.f4655b;
        String str = this.c.f4656a.f4654a;
        String str2 = this.f4658a;
        long j = this.f4659b;
        nVar.a(str, str2);
    }
}
