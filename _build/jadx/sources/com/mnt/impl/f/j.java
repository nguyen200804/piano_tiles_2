package com.mnt.impl.f;

import android.content.Context;
import android.text.TextUtils;
import com.mnt.impl.f.d;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class j extends com.mnt.impl.b.e {

    /* renamed from: a, reason: collision with root package name */
    private Context f4016a;

    /* renamed from: b, reason: collision with root package name */
    private String f4017b;
    private String c;
    private int d;
    private d.a e;
    private com.mnt.impl.e.g f;

    static {
        String str = com.mnt.impl.e.cZ;
    }

    public j(Context context, String str, String str2, int i, d.a aVar) {
        this.f4016a = context;
        this.f4017b = str;
        this.c = str2;
        this.d = i;
        this.e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mnt.impl.b.e
    public final void a(Object obj) {
        this.e.a(this.f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mnt.impl.b.e
    public final Object a() {
        int i;
        int i2 = 5000;
        n nVar = new n(this.f4016a, this.f4017b);
        nVar.H = this.c;
        nVar.I = this.d;
        long currentTimeMillis = System.currentTimeMillis();
        com.mnt.impl.e.g a2 = d.a(this.f4016a);
        if (a2 != null) {
            i = a2.d;
            i2 = a2.e;
        } else {
            i = 5000;
        }
        String a3 = new e().a(n.a(com.mnt.impl.e.da), nVar.a(), i, i2);
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (com.mnt.impl.j.d.b(this.f4016a).a().m.a(4)) {
            com.mnt.impl.i.a.a(this.f4016a, com.mnt.impl.e.db, TextUtils.isEmpty(a3) ? com.mnt.impl.e.dc : com.mnt.impl.e.db, currentTimeMillis2);
        }
        if (!TextUtils.isEmpty(a3)) {
            this.f = new com.mnt.impl.e.g(a3);
            com.mnt.impl.k.a.a(this.f4016a, d.a(this.f4016a));
        } else {
            this.f = null;
        }
        return false;
    }
}
