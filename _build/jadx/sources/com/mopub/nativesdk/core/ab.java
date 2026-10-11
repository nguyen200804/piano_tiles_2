package com.mopub.nativesdk.core;

/* compiled from: RRManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class ab implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ String f4652a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ long f4653b;
    private /* synthetic */ aa c;

    ab(aa aaVar, String str, long j) {
        this.c = aaVar;
        this.f4652a = str;
        this.f4653b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        n nVar = this.c.f4651b;
        String str = this.c.f4650a;
        String str2 = this.f4652a;
        long j = this.f4653b;
        nVar.a(str, str2);
    }
}
