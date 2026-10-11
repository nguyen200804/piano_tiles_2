package com.jirbo.adcolony;

import com.jirbo.adcolony.a;
import java.io.Serializable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class z implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    String f3880a;

    /* renamed from: b, reason: collision with root package name */
    int f3881b;
    int c;
    int d;

    z() {
        this.f3880a = "";
    }

    z(String str) {
        this.f3880a = "";
        this.f3880a = str;
    }

    boolean a(a.g gVar) {
        if (gVar == null) {
            return false;
        }
        this.f3880a = gVar.a("uuid", "error");
        this.f3881b = gVar.f("skipped_plays");
        this.c = gVar.f("play_order_index");
        return true;
    }

    a.g a() {
        a.g gVar = new a.g();
        gVar.b("uuid", this.f3880a);
        gVar.b("skipped_plays", this.f3881b);
        gVar.b("play_order_index", this.c);
        return gVar;
    }
}
