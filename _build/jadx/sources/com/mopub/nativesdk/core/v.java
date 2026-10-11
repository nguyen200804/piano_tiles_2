package com.mopub.nativesdk.core;

import android.content.Context;
import com.mopub.nativesdk.Campaign;
import com.mopub.nativesdk.a.b;
import com.mopub.nativesdk.a.d;
import com.mopub.nativesdk.b.e;
import com.mopub.nativesdk.b.f;
import java.util.ArrayList;

/* compiled from: BTManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class v implements f {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ Campaign f4679a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ j f4680b;

    v(j jVar, Campaign campaign) {
        this.f4680b = jVar;
        this.f4679a = campaign;
    }

    @Override // com.mopub.nativesdk.b.f
    public final void a(e eVar) {
        Context context;
        if (eVar != null) {
            new StringBuilder("BTManager 7  bt result: ").append(eVar.d()).append("    ").append(eVar.c()).append("   ").append(eVar.e());
            new StringBuilder("BTManager 7  bt camp: ").append(this.f4679a.getId()).append("    ").append(this.f4679a.getPackageName());
            if (eVar.d() == 1) {
                String a2 = com.mopub.nativesdk.d.o.a(eVar.e());
                new StringBuilder("BTManager 7  referStr: ").append(a2);
                if (a2 != null) {
                    context = this.f4680b.d;
                    b a3 = b.a(d.a(context));
                    x xVar = new x();
                    xVar.b(this.f4679a.getId());
                    xVar.a(this.f4679a.getPackageName());
                    xVar.b(a2);
                    xVar.a(System.currentTimeMillis());
                    a3.a(xVar);
                }
            }
            if (this.f4680b.f4667b == null) {
                this.f4680b.f4667b = new ArrayList();
            }
            this.f4680b.f4667b.add(this.f4679a);
        }
    }

    @Override // com.mopub.nativesdk.b.f
    public final void a(String str) {
    }
}
