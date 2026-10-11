package com.mnt.impl.d;

import android.text.TextUtils;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class d implements g {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ c f3963a;

    d(c cVar) {
        this.f3963a = cVar;
    }

    @Override // com.mnt.impl.d.g
    public final void a(String str, String str2) {
        if (!com.mnt.impl.d.a(this.f3963a.f3962a, str) || TextUtils.isEmpty(str2)) {
            return;
        }
        if (c.f3961b == null) {
            c.f3961b = new ArrayList();
        }
        a aVar = new a(str2);
        if (c.f3961b.contains(aVar)) {
            c.f3961b.remove(aVar);
        }
        a aVar2 = new a();
        c.f3961b.size();
        aVar2.f3959a = str2;
        c.f3961b.add(aVar2);
    }
}
