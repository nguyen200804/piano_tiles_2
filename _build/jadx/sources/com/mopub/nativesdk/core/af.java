package com.mopub.nativesdk.core;

import com.mopub.nativesdk.Campaign;
import java.util.List;

/* compiled from: RRManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class af implements com.mopub.nativesdk.c.l {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f4660a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ w f4661b;
    private /* synthetic */ n c;

    af(n nVar, String str, w wVar) {
        this.c = nVar;
        this.f4660a = str;
        this.f4661b = wVar;
    }

    @Override // com.mopub.nativesdk.c.l
    public final void a() {
    }

    @Override // com.mopub.nativesdk.c.l
    public final void a(Object obj) {
        List list;
        if (obj != null && (list = (List) obj) != null && list.size() > 0) {
            n.a(this.c, (Campaign) list.get(0), new ag(this, list));
        }
    }

    @Override // com.mopub.nativesdk.c.l
    public final void a(String str) {
    }

    @Override // com.mopub.nativesdk.c.l
    public final void b() {
    }
}
