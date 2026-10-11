package com.mopub.nativesdk.core;

import com.mopub.nativesdk.Campaign;
import com.mopub.nativesdk.b.e;
import com.mopub.nativesdk.b.f;

/* compiled from: RRManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class ah implements f {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ Campaign f4664a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ w f4665b;
    private /* synthetic */ n c;

    ah(n nVar, Campaign campaign, w wVar) {
        this.c = nVar;
        this.f4664a = campaign;
        this.f4665b = wVar;
    }

    @Override // com.mopub.nativesdk.b.f
    public final void a(e eVar) {
        String a2;
        if (eVar != null && (a2 = com.mopub.nativesdk.d.o.a(eVar.e())) != null) {
            this.c.a(this.f4664a.getPackageName(), this.f4664a.getId(), a2);
            if (this.f4665b != null) {
                this.f4665b.a(a2, 0L);
            }
        }
    }

    @Override // com.mopub.nativesdk.b.f
    public final void a(String str) {
    }
}
