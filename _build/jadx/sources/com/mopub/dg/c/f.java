package com.mopub.dg.c;

import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class f implements com.mopub.dg.d.m {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f4266a;

    f(e eVar) {
        this.f4266a = eVar;
    }

    @Override // com.mopub.dg.d.m
    public final void a() {
        com.mopub.dg.d.n.a("Request onFailure");
        a.b(this.f4266a.d);
    }

    @Override // com.mopub.dg.d.m
    public final void a(ArrayList arrayList) {
        List list;
        String a2 = com.mopub.dg.d.k.a(arrayList);
        this.f4266a.d.i = a.a(this.f4266a.d, a2, this.f4266a.f4264a, this.f4266a.f4265b);
        StringBuilder sb = new StringBuilder("Request onResponse:");
        list = this.f4266a.d.i;
        com.mopub.dg.d.n.a(sb.append(list).toString());
        this.f4266a.c.sendEmptyMessage(10);
        a.b(this.f4266a.d);
    }
}
