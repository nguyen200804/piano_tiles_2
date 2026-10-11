package com.mopub.nativesdk.core;

/* compiled from: RRManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class aa implements w {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f4650a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ n f4651b;

    aa(n nVar, String str) {
        this.f4651b = nVar;
        this.f4650a = str;
    }

    @Override // com.mopub.nativesdk.core.w
    public final void a(String str, long j) {
        this.f4651b.a(this.f4650a, j, str);
        this.f4651b.a(this.f4650a, str);
        com.mopub.nativesdk.d.s.a(2, new ab(this, str, j), 60000L);
    }
}
