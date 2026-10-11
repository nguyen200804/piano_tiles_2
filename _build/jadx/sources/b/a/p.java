package b.a;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: ClientStats.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class p implements ay<p, e>, Serializable, Cloneable {
    public static final Map<e, bg> d;
    private static final bw e = new bw("ClientStats");
    private static final bo f = new bo("successful_requests", (byte) 8, 1);
    private static final bo g = new bo("failed_requests", (byte) 8, 2);
    private static final bo h = new bo("last_request_spent_ms", (byte) 8, 3);
    private static final Map<Class<? extends by>, bz> i = new HashMap();
    public int c;
    private byte j = 0;
    private e[] k = {e.LAST_REQUEST_SPENT_MS};

    /* renamed from: a, reason: collision with root package name */
    public int f173a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f174b = 0;

    static {
        i.put(ca.class, new b());
        i.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.SUCCESSFUL_REQUESTS, (e) new bg("successful_requests", (byte) 1, new bh((byte) 8)));
        enumMap.put((EnumMap) e.FAILED_REQUESTS, (e) new bg("failed_requests", (byte) 1, new bh((byte) 8)));
        enumMap.put((EnumMap) e.LAST_REQUEST_SPENT_MS, (e) new bg("last_request_spent_ms", (byte) 2, new bh((byte) 8)));
        d = Collections.unmodifiableMap(enumMap);
        bg.a(p.class, d);
    }

    /* compiled from: ClientStats.java */
    public enum e implements bc {
        SUCCESSFUL_REQUESTS(1, "successful_requests"),
        FAILED_REQUESTS(2, "failed_requests"),
        LAST_REQUEST_SPENT_MS(3, "last_request_spent_ms");

        private static final Map<String, e> d = new HashMap();
        private final short e;
        private final String f;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                d.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.e = s;
            this.f = str;
        }

        @Override // b.a.bc
        public short a() {
            return this.e;
        }

        public String b() {
            return this.f;
        }
    }

    public p a(int i2) {
        this.f173a = i2;
        a(true);
        return this;
    }

    public boolean a() {
        return aw.a(this.j, 0);
    }

    public void a(boolean z) {
        this.j = aw.a(this.j, 0, z);
    }

    public p b(int i2) {
        this.f174b = i2;
        b(true);
        return this;
    }

    public boolean b() {
        return aw.a(this.j, 1);
    }

    public void b(boolean z) {
        this.j = aw.a(this.j, 1, z);
    }

    public p c(int i2) {
        this.c = i2;
        c(true);
        return this;
    }

    public boolean c() {
        return aw.a(this.j, 2);
    }

    public void c(boolean z) {
        this.j = aw.a(this.j, 2, z);
    }

    @Override // b.a.ay
    public void a(br brVar) throws bb {
        i.get(brVar.y()).b().b(brVar, this);
    }

    @Override // b.a.ay
    public void b(br brVar) throws bb {
        i.get(brVar.y()).b().a(brVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ClientStats(");
        sb.append("successful_requests:");
        sb.append(this.f173a);
        sb.append(", ");
        sb.append("failed_requests:");
        sb.append(this.f174b);
        if (c()) {
            sb.append(", ");
            sb.append("last_request_spent_ms:");
            sb.append(this.c);
        }
        sb.append(")");
        return sb.toString();
    }

    public void d() throws bb {
    }

    /* compiled from: ClientStats.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: ClientStats.java */
    private static class a extends ca<p> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, p pVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 8) {
                                pVar.f173a = brVar.s();
                                pVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 8) {
                                pVar.f174b = brVar.s();
                                pVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 8) {
                                pVar.c = brVar.s();
                                pVar.c(true);
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
                    if (!pVar.a()) {
                        throw new bs("Required field 'successful_requests' was not found in serialized data! Struct: " + toString());
                    }
                    if (!pVar.b()) {
                        throw new bs("Required field 'failed_requests' was not found in serialized data! Struct: " + toString());
                    }
                    pVar.d();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, p pVar) throws bb {
            pVar.d();
            brVar.a(p.e);
            brVar.a(p.f);
            brVar.a(pVar.f173a);
            brVar.b();
            brVar.a(p.g);
            brVar.a(pVar.f174b);
            brVar.b();
            if (pVar.c()) {
                brVar.a(p.h);
                brVar.a(pVar.c);
                brVar.b();
            }
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: ClientStats.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: ClientStats.java */
    private static class c extends cb<p> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, p pVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(pVar.f173a);
            bxVar.a(pVar.f174b);
            BitSet bitSet = new BitSet();
            if (pVar.c()) {
                bitSet.set(0);
            }
            bxVar.a(bitSet, 1);
            if (pVar.c()) {
                bxVar.a(pVar.c);
            }
        }

        @Override // b.a.by
        public void b(br brVar, p pVar) throws bb {
            bx bxVar = (bx) brVar;
            pVar.f173a = bxVar.s();
            pVar.a(true);
            pVar.f174b = bxVar.s();
            pVar.b(true);
            if (bxVar.b(1).get(0)) {
                pVar.c = bxVar.s();
                pVar.c(true);
            }
        }
    }
}
