package com.mnt.impl.f;

import android.content.Context;
import android.text.TextUtils;
import com.mnt.impl.f.h;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c implements h.a {

    /* renamed from: a, reason: collision with root package name */
    public static final String f4005a;

    /* renamed from: b, reason: collision with root package name */
    private Context f4006b;
    private int c;
    private String d;

    static {
        String str = com.mnt.impl.e.dd;
        f4005a = com.mnt.impl.e.de;
    }

    public c(Context context, String str, int i) {
        this.f4006b = context;
        this.c = i;
        this.d = str;
    }

    @Override // com.mnt.impl.f.h.a
    public final void a(com.mnt.impl.e.b bVar) {
        try {
            if (!TextUtils.isEmpty(bVar.c)) {
                if (this.c == 1) {
                    com.mnt.impl.b.h.a(this.f4006b, f4005a + this.d, bVar.b());
                }
                com.mnt.impl.l.c.a(new l(this.f4006b, bVar.f3984b, bVar.c, this.c));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
