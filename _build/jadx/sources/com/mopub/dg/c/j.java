package com.mopub.dg.c;

import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class j implements k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f4273a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ h f4274b;

    public j(h hVar, l lVar) {
        this.f4274b = hVar;
        this.f4273a = lVar;
    }

    @Override // com.mopub.dg.c.k
    public final void a() {
    }

    @Override // com.mopub.dg.c.k
    public final void a(List list) {
        if (list == null || this.f4274b.d) {
            return;
        }
        this.f4273a.onDataListSuccess(list);
        this.f4274b.c = true;
    }
}
