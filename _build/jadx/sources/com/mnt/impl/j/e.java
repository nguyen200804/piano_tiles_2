package com.mnt.impl.j;

import android.content.Context;
import com.mnt.impl.b.h;
import com.mnt.impl.f.k;
import com.mnt.impl.j.d;
import com.mnt.impl.j.f;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class e implements f.a {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ d f4081a;

    e(d dVar) {
        this.f4081a = dVar;
    }

    @Override // com.mnt.impl.j.f.a
    public final void a() {
        d dVar;
        if (System.currentTimeMillis() - h.n(this.f4081a.f4077a) > 28800000) {
            String j = h.j(this.f4081a.f4077a);
            dVar = d.f4076b;
            Context context = this.f4081a.f4077a;
            a aVar = new a(j);
            aVar.c = 1;
            aVar.f4071b = new String[]{com.mnt.impl.e.iH, com.mnt.impl.e.iI};
            aVar.d = true;
            new k(new d.a(c.f4075a, c.a(context, aVar)), new d.b(dVar, (byte) 0)).c();
        }
    }
}
