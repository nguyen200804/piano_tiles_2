package com.jirbo.adcolony;

import com.jirbo.adcolony.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ak {

    /* renamed from: a, reason: collision with root package name */
    static ax f3720a = new ax();

    static void a(ag agVar, a.g gVar) {
        aw a2 = agVar.a();
        if (gVar != null) {
            gVar.a(a2);
            a2.b();
        } else {
            al.f3722b.b((Object) "Saving empty property table.");
            a2.b("{}");
        }
        a2.d();
    }

    static void a(ag agVar, a.c cVar) {
        aw a2 = agVar.a();
        if (cVar != null) {
            cVar.a(a2);
            a2.b();
        } else {
            al.f3722b.b((Object) "Saving empty property list.");
            a2.b("[]");
        }
        a2.d();
    }

    static a.i a(ag agVar) {
        ar b2 = agVar.b();
        if (b2 == null) {
            return null;
        }
        return a(b2);
    }

    static a.g b(ag agVar) {
        a.i a2 = a(agVar);
        if (a2 == null || !a2.l()) {
            return null;
        }
        return a2.m();
    }

    static a.c c(ag agVar) {
        a.i a2 = a(agVar);
        if (a2 == null || !a2.f()) {
            return null;
        }
        return a2.h();
    }

    static a.i a(String str) {
        if (str == null) {
            return null;
        }
        return a(new ar(str));
    }

    static a.g b(String str) {
        a.i a2 = a(str);
        if (a2 == null || !a2.l()) {
            return null;
        }
        return a2.m();
    }

    static a.c c(String str) {
        a.i a2 = a(str);
        if (a2 == null || !a2.f()) {
            return null;
        }
        return a2.h();
    }

    static a.i a(ar arVar) {
        a.i fVar;
        try {
            b(arVar);
            char b2 = arVar.b();
            if (b2 == '{') {
                fVar = c(arVar);
            } else if (b2 == '[') {
                fVar = d(arVar);
            } else if (b2 == '-') {
                fVar = h(arVar);
            } else if (b2 >= '0' && b2 <= '9') {
                fVar = h(arVar);
            } else if (b2 == '\"' || b2 == '\'') {
                String e = e(arVar);
                if (e.length() == 0) {
                    fVar = new a.f("");
                } else {
                    char charAt = e.charAt(0);
                    if (charAt == 't' && e.equals("true")) {
                        fVar = a.f3686a;
                    } else if (charAt == 'f' && e.equals("false")) {
                        fVar = a.f3687b;
                    } else {
                        fVar = (charAt == 'n' && e.equals("null")) ? a.c : new a.f(e);
                    }
                }
            } else if ((b2 < 'a' || b2 > 'z') && !((b2 >= 'A' && b2 <= 'Z') || b2 == '_' || b2 == '$')) {
                fVar = null;
            } else {
                String g = g(arVar);
                if (g.length() == 0) {
                    fVar = new a.f("");
                } else {
                    char charAt2 = g.charAt(0);
                    if (charAt2 == 't' && g.equals("true")) {
                        fVar = a.f3686a;
                    } else if (charAt2 == 'f' && g.equals("false")) {
                        fVar = a.f3687b;
                    } else {
                        fVar = (charAt2 == 'n' && g.equals("null")) ? a.c : new a.f(g);
                    }
                }
            }
            return fVar;
        } catch (RuntimeException e2) {
            return null;
        }
    }

    static void b(ar arVar) {
        char b2 = arVar.b();
        while (arVar.a()) {
            if (b2 <= ' ' || b2 > '~') {
                arVar.c();
                b2 = arVar.b();
            } else {
                return;
            }
        }
    }

    static a.g c(ar arVar) {
        b(arVar);
        if (!arVar.a('{')) {
            return null;
        }
        b(arVar);
        a.g gVar = new a.g();
        if (arVar.a('}')) {
            return gVar;
        }
        boolean z = true;
        while (true) {
            if (!z && !arVar.a(',')) {
                break;
            }
            z = false;
            String g = g(arVar);
            b(arVar);
            if (!arVar.a(':')) {
                gVar.b(g, true);
            } else {
                b(arVar);
                gVar.a(g, a(arVar));
            }
            b(arVar);
        }
        if (arVar.a('}')) {
            return gVar;
        }
        return null;
    }

    static a.c d(ar arVar) {
        b(arVar);
        if (!arVar.a('[')) {
            return null;
        }
        b(arVar);
        a.c cVar = new a.c();
        if (arVar.a(']')) {
            return cVar;
        }
        boolean z = true;
        while (true) {
            if (!z && !arVar.a(',')) {
                break;
            }
            z = false;
            cVar.a(a(arVar));
            b(arVar);
        }
        if (arVar.a(']')) {
            return cVar;
        }
        return null;
    }

    static String e(ar arVar) {
        char c = '\"';
        b(arVar);
        if (!arVar.a('\"') && arVar.a('\'')) {
            c = '\'';
        }
        if (!arVar.a()) {
            return "";
        }
        f3720a.c();
        char c2 = arVar.c();
        while (arVar.a() && c2 != c) {
            if (c2 == '\\') {
                char c3 = arVar.c();
                if (c3 == 'b') {
                    f3720a.b('\b');
                } else if (c3 == 'f') {
                    f3720a.b('\f');
                } else if (c3 == 'n') {
                    f3720a.b('\n');
                } else if (c3 == 'r') {
                    f3720a.b('\r');
                } else if (c3 == 't') {
                    f3720a.b('\t');
                } else if (c3 == 'u') {
                    f3720a.b(f(arVar));
                } else {
                    f3720a.b(c3);
                }
            } else {
                f3720a.b(c2);
            }
            c2 = arVar.c();
        }
        return f3720a.toString();
    }

    static int a(int i) {
        if (i >= 48 && i <= 57) {
            return i - 48;
        }
        if (i >= 97 && i <= 102) {
            return (i - 97) + 10;
        }
        if (i < 65 || i > 70) {
            return 0;
        }
        return (i - 65) + 10;
    }

    static char f(ar arVar) {
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            if (arVar.a()) {
                i = (i << 4) | a(arVar.c());
            }
        }
        return (char) i;
    }

    static String g(ar arVar) {
        b(arVar);
        char b2 = arVar.b();
        if (b2 == '\"' || b2 == '\'') {
            return e(arVar);
        }
        f3720a.c();
        boolean z = false;
        while (!z && arVar.a()) {
            if ((b2 >= 'a' && b2 <= 'z') || ((b2 >= 'A' && b2 <= 'Z') || b2 == '_' || b2 == '$')) {
                arVar.c();
                f3720a.b(b2);
                b2 = arVar.b();
            } else {
                z = true;
            }
        }
        return f3720a.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b8, code lost:
    
        r4 = r4 / java.lang.Math.pow(10.0d, r6);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.jirbo.adcolony.a.i h(com.jirbo.adcolony.ar r12) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jirbo.adcolony.ak.h(com.jirbo.adcolony.ar):com.jirbo.adcolony.a$i");
    }
}
