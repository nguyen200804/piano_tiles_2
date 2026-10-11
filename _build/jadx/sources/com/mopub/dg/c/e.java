package com.mopub.dg.c;

import android.os.Handler;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class e implements com.mopub.dg.d.j {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f4264a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ boolean f4265b;
    final /* synthetic */ Handler c;
    final /* synthetic */ a d;

    e(a aVar, boolean z, boolean z2, Handler handler) {
        this.d = aVar;
        this.f4264a = z;
        this.f4265b = z2;
        this.c = handler;
    }

    @Override // com.mopub.dg.d.j
    public final void a() {
        com.mopub.dg.b.b bVar;
        bVar = this.d.e;
        com.mopub.dg.d.k.a(bVar.a(), new f(this));
    }
}
