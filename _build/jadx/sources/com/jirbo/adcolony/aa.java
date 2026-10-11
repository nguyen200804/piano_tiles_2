package com.jirbo.adcolony;

import com.jirbo.adcolony.a;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class aa {

    /* renamed from: a, reason: collision with root package name */
    af f3694a;

    /* renamed from: b, reason: collision with root package name */
    boolean f3695b = false;
    ArrayList<z> c = new ArrayList<>();

    aa(af afVar) {
        this.f3694a = afVar;
    }

    void a() {
        a.c c = ak.c(new ag("zone_state.txt"));
        if (c != null) {
            this.c.clear();
            for (int i = 0; i < c.f_(); i++) {
                a.g a2 = c.a(i);
                z zVar = new z();
                if (zVar.a(a2)) {
                    this.c.add(zVar);
                }
            }
        }
        for (String str : this.f3694a.f3701a.k) {
            a(str);
        }
    }

    void b() {
        al.f3721a.b((Object) "Saving zone state...");
        this.f3695b = false;
        a.c cVar = new a.c();
        for (String str : this.f3694a.f3701a.k) {
            cVar.a(a(str).a());
        }
        ak.a(new ag("zone_state.txt"), cVar);
        al.f3721a.b((Object) "Saved zone state");
    }

    z a(String str) {
        int size = this.c.size();
        for (int i = 0; i < size; i++) {
            z zVar = this.c.get(i);
            if (zVar.f3880a.equals(str)) {
                return zVar;
            }
        }
        this.f3695b = true;
        z zVar2 = new z(str);
        this.c.add(zVar2);
        return zVar2;
    }

    void c() {
        if (this.f3695b) {
            b();
        }
    }
}
