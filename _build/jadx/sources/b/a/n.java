package b.a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: ActiveUser.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class n implements ay<n, e>, Serializable, Cloneable {
    public static final Map<e, bg> c;
    private static final bw d = new bw("ActiveUser");
    private static final bo e = new bo("provider", (byte) 11, 1);
    private static final bo f = new bo("puid", (byte) 11, 2);
    private static final Map<Class<? extends by>, bz> g = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public String f165a;

    /* renamed from: b, reason: collision with root package name */
    public String f166b;

    static {
        g.put(ca.class, new b());
        g.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.PROVIDER, (e) new bg("provider", (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.PUID, (e) new bg("puid", (byte) 1, new bh((byte) 11)));
        c = Collections.unmodifiableMap(enumMap);
        bg.a(n.class, c);
    }

    /* compiled from: ActiveUser.java */
    public enum e implements bc {
        PROVIDER(1, "provider"),
        PUID(2, "puid");

        private static final Map<String, e> c = new HashMap();
        private final short d;
        private final String e;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                c.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.d = s;
            this.e = str;
        }

        @Override // b.a.bc
        public short a() {
            return this.d;
        }

        public String b() {
            return this.e;
        }
    }

    public n() {
    }

    public n(String str, String str2) {
        this();
        this.f165a = str;
        this.f166b = str2;
    }

    public void a(boolean z) {
        if (!z) {
            this.f165a = null;
        }
    }

    public void b(boolean z) {
        if (!z) {
            this.f166b = null;
        }
    }

    @Override // b.a.ay
    public void a(br brVar) throws bb {
        g.get(brVar.y()).b().b(brVar, this);
    }

    @Override // b.a.ay
    public void b(br brVar) throws bb {
        g.get(brVar.y()).b().a(brVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ActiveUser(");
        sb.append("provider:");
        if (this.f165a == null) {
            sb.append("null");
        } else {
            sb.append(this.f165a);
        }
        sb.append(", ");
        sb.append("puid:");
        if (this.f166b == null) {
            sb.append("null");
        } else {
            sb.append(this.f166b);
        }
        sb.append(")");
        return sb.toString();
    }

    public void a() throws bb {
        if (this.f165a == null) {
            throw new bs("Required field 'provider' was not present! Struct: " + toString());
        }
        if (this.f166b == null) {
            throw new bs("Required field 'puid' was not present! Struct: " + toString());
        }
    }

    /* compiled from: ActiveUser.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: ActiveUser.java */
    private static class a extends ca<n> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, n nVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 11) {
                                nVar.f165a = brVar.v();
                                nVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 11) {
                                nVar.f166b = brVar.v();
                                nVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        default:
                            bu.a(brVar, h.f106b);
                            break;
                    }
                    brVar.i();
                } else {
                    brVar.g();
                    nVar.a();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, n nVar) throws bb {
            nVar.a();
            brVar.a(n.d);
            if (nVar.f165a != null) {
                brVar.a(n.e);
                brVar.a(nVar.f165a);
                brVar.b();
            }
            if (nVar.f166b != null) {
                brVar.a(n.f);
                brVar.a(nVar.f166b);
                brVar.b();
            }
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: ActiveUser.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: ActiveUser.java */
    private static class c extends cb<n> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, n nVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(nVar.f165a);
            bxVar.a(nVar.f166b);
        }

        @Override // b.a.by
        public void b(br brVar, n nVar) throws bb {
            bx bxVar = (bx) brVar;
            nVar.f165a = bxVar.v();
            nVar.a(true);
            nVar.f166b = bxVar.v();
            nVar.b(true);
        }
    }
}
