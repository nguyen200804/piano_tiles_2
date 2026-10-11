package com.jirbo.adcolony;

import java.io.File;
import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ag {

    /* renamed from: a, reason: collision with root package name */
    static byte[] f3716a = new byte[1024];

    /* renamed from: b, reason: collision with root package name */
    String f3717b;

    ag(String str) {
        this.f3717b = t.c.f.d + str;
    }

    aw a() {
        return new aw(this.f3717b);
    }

    ar b() {
        try {
            return new ar(new av(this.f3717b));
        } catch (IOException e) {
            return null;
        }
    }

    void a(String str) {
        aw a2 = a();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            a2.a(str.charAt(i));
        }
        a2.d();
    }

    void c() {
        new File(this.f3717b).delete();
    }
}
