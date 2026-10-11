package com.mopub.nativesdk.core;

import com.mopub.nativesdk.Campaign;
import java.util.List;

/* compiled from: RRManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class ag implements w {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ List f4662a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ af f4663b;

    ag(af afVar, List list) {
        this.f4663b = afVar;
        this.f4662a = list;
    }

    @Override // com.mopub.nativesdk.core.w
    public final void a(String str, long j) {
        if (this.f4663b.f4660a.equals(((Campaign) this.f4662a.get(0)).getPackageName()) && this.f4663b.f4661b != null) {
            this.f4663b.f4661b.a(str, ((Campaign) this.f4662a.get(0)).getId());
        }
    }
}
