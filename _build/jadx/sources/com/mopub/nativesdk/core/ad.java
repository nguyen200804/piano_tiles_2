package com.mopub.nativesdk.core;

/* compiled from: RRManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class ad implements w {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ac f4656a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ String f4657b;

    ad(ac acVar, String str) {
        this.f4656a = acVar;
        this.f4657b = str;
    }

    @Override // com.mopub.nativesdk.core.w
    public final void a(String str, long j) {
        this.f4656a.f4655b.a(this.f4657b, j, str);
        this.f4656a.f4655b.a(this.f4657b, str);
        com.mopub.nativesdk.d.s.a(2, new ae(this, str, j), 60000L);
    }
}
