package com.mnt.impl.h;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import com.mnt.impl.b.h;
import com.mnt.impl.b.k;
import com.mnt.impl.f.l;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class b implements com.mnt.impl.d.g {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ Context f4044a;

    b(Context context) {
        this.f4044a = context;
    }

    @Override // com.mnt.impl.d.g
    public final void a(String str, String str2) {
        if (!TextUtils.isEmpty(str2) && k.f3952a.equals(str)) {
            com.mnt.impl.j.b a2 = com.mnt.impl.j.d.b(this.f4044a).a();
            com.mnt.impl.e.a a3 = com.mnt.impl.b.a.a(this.f4044a).a(str2);
            if (((a3 == null || a3.a()) && !h.c(this.f4044a, str2)) || a2.b()) {
                ContentValues contentValues = new ContentValues();
                contentValues.put(com.mnt.impl.i.b.c.c, str2);
                contentValues.put(com.mnt.impl.i.b.c.f, Long.valueOf(System.currentTimeMillis()));
                com.mnt.impl.i.b.a.a(this.f4044a).a(contentValues);
                com.mnt.impl.e.g a4 = com.mnt.impl.f.d.a(this.f4044a);
                if (a4 == null || a4.c != 1) {
                    if (a2.f4072a && a2.a()) {
                        l.a(this.f4044a, str2, 1);
                        h.a(this.f4044a, System.currentTimeMillis());
                    } else {
                        if (a2 == null || !a2.f4072a || !com.mnt.impl.e.it.equals(a2.n)) {
                            return;
                        }
                        com.mnt.impl.f.d.a(this.f4044a, str2, 1);
                    }
                }
            }
        }
    }
}
