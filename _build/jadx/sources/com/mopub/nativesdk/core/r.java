package com.mopub.nativesdk.core;

import com.mopub.nativesdk.Campaign;
import com.mopub.nativesdk.ClickListener;
import com.mopub.nativesdk.b.e;
import com.mopub.nativesdk.b.f;
import java.util.Map;

/* compiled from: AKService.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class r implements f {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ Campaign f4676a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ ClickListener f4677b;
    private /* synthetic */ boolean c;
    private /* synthetic */ C0219a d;

    r(C0219a c0219a, Campaign campaign, ClickListener clickListener, boolean z) {
        this.d = c0219a;
        this.f4676a = campaign;
        this.f4677b = clickListener;
        this.c = z;
    }

    @Override // com.mopub.nativesdk.b.f
    public final void a(e eVar) {
        Map map;
        String a2;
        map = C0219a.s;
        map.put(Long.valueOf(this.f4676a.getId()), eVar);
        if (eVar.d() == 1 && (a2 = com.mopub.nativesdk.d.o.a(eVar.e())) != null) {
            n.a(C0219a.f4648a).a(this.f4676a.getPackageName(), this.f4676a.getId(), a2);
        }
        if (this.f4677b != null) {
            this.f4677b.onAdClicked(this.f4676a, eVar.e(), eVar.d());
        }
        if (this.c) {
            C0219a.a(eVar);
        }
    }

    @Override // com.mopub.nativesdk.b.f
    public final void a(String str) {
        if (this.f4677b != null) {
            this.f4677b.onAdClickFailed(this.f4676a, str);
        }
    }
}
