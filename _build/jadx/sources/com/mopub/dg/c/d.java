package com.mopub.dg.c;

import android.os.Handler;
import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class d implements com.mopub.dg.d.m {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f4262a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ boolean f4263b;
    final /* synthetic */ Handler c;
    final /* synthetic */ a d;

    d(a aVar, boolean z, boolean z2, Handler handler) {
        this.d = aVar;
        this.f4262a = z;
        this.f4263b = z2;
        this.c = handler;
    }

    @Override // com.mopub.dg.d.m
    public final void a() {
        com.mopub.dg.d.n.a("Request onFailure");
        a.b(this.d);
    }

    @Override // com.mopub.dg.d.m
    public final void a(ArrayList arrayList) {
        List list;
        String a2 = com.mopub.dg.d.k.a(arrayList);
        this.d.i = a.a(this.d, a2, this.f4262a, this.f4263b);
        StringBuilder sb = new StringBuilder("Request onResponse:");
        list = this.d.i;
        com.mopub.dg.d.n.a(sb.append(list).toString());
        this.c.sendEmptyMessage(10);
        a.b(this.d);
    }
}
