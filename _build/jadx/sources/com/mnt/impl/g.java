package com.mnt.impl;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import com.mnt.impl.b.h;
import com.mnt.impl.b.k;
import com.mnt.impl.f.l;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static final String f4038a;

    /* renamed from: b, reason: collision with root package name */
    public static final String f4039b;
    public static String c;

    static {
        String str = e.jT;
        f4038a = e.jU;
        f4039b = e.jV;
    }

    public static void a(Context context, String str) {
        h.k(context);
        h.l(context);
        ContentValues contentValues = new ContentValues();
        contentValues.put(com.mnt.impl.i.b.c.c, str);
        contentValues.put(com.mnt.impl.i.b.c.r, Long.valueOf(System.currentTimeMillis()));
        com.mnt.impl.i.b.a.a(context).a(contentValues);
        if (!TextUtils.isEmpty(str) && !k.e(str)) {
            com.mnt.impl.e.a a2 = com.mnt.impl.b.a.a(context).a(str);
            com.mnt.impl.j.b a3 = com.mnt.impl.j.d.b(context).a();
            if (a2 != null && !a2.a() && !TextUtils.isEmpty(a2.e) && !TextUtils.isEmpty(a2.f3982b)) {
                com.mnt.impl.i.c.a(context).a(k.a(context, a2.f3982b, a2.d, a2.e, null).toString());
            }
            if (((a2 == null || a2.a()) && !h.c(context, str)) || a3.b()) {
                if (!a3.f4072a || !a3.a()) {
                    com.mnt.impl.f.d.a(context, str, 0);
                    return;
                }
                com.mnt.impl.e.g a4 = com.mnt.impl.f.d.a(context);
                if (a4 == null || a4.c != 1) {
                    if (k.c(context, str)) {
                        com.mnt.impl.f.d.a(context, str, 0);
                    } else {
                        l.a(context, str, 0);
                    }
                }
            }
        }
    }
}
