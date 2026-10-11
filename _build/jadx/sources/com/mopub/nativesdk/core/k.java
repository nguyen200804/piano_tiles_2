package com.mopub.nativesdk.core;

import android.content.Context;

/* compiled from: StrategyManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class k implements com.mopub.nativesdk.c.l {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ H f4668a;

    k(H h) {
        this.f4668a = h;
    }

    @Override // com.mopub.nativesdk.c.l
    public final void a() {
    }

    @Override // com.mopub.nativesdk.c.l
    public final void a(Object obj) {
        Context context;
        y a2;
        if (obj != null) {
            new StringBuilder("strategy load result: ").append(obj.toString());
            y yVar = (y) obj;
            context = this.f4668a.f4647b;
            com.mopub.nativesdk.d.q.a(context, "ak.native.sdk", "STRATEGY_NAME", yVar.j);
            H h = this.f4668a;
            H h2 = this.f4668a;
            a2 = H.a(yVar.j);
            h.d = a2;
        }
    }

    @Override // com.mopub.nativesdk.c.l
    public final void a(String str) {
        this.f4668a.b();
    }

    @Override // com.mopub.nativesdk.c.l
    public final void b() {
        this.f4668a.b();
    }
}
