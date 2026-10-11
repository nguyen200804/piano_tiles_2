package b.a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: Latent.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ac implements ay<ac, e>, Serializable, Cloneable {
    public static final Map<e, bg> c;
    private static final bw d = new bw("Latent");
    private static final bo e = new bo("latency", (byte) 8, 1);
    private static final bo f = new bo("interval", (byte) 10, 2);
    private static final Map<Class<? extends by>, bz> g = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public int f20a;

    /* renamed from: b, reason: collision with root package name */
    public long f21b;
    private byte h;

    static {
        g.put(ca.class, new b());
        g.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.LATENCY, (e) new bg("latency", (byte) 1, new bh((byte) 8)));
        enumMap.put((EnumMap) e.INTERVAL, (e) new bg("interval", (byte) 1, new bh((byte) 10)));
        c = Collections.unmodifiableMap(enumMap);
        bg.a(ac.class, c);
    }

    /* compiled from: Latent.java */
    public enum e implements bc {
        LATENCY(1, "latency"),
        INTERVAL(2, "interval");

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

    public ac() {
        this.h = (byte) 0;
    }

    public ac(int i, long j) {
        this();
        this.f20a = i;
        a(true);
        this.f21b = j;
        b(true);
    }

    public boolean a() {
        return aw.a(this.h, 0);
    }

    public void a(boolean z) {
        this.h = aw.a(this.h, 0, z);
    }

    public boolean b() {
        return aw.a(this.h, 1);
    }

    public void b(boolean z) {
        this.h = aw.a(this.h, 1, z);
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
        return "Latent(latency:" + this.f20a + ", interval:" + this.f21b + ")";
    }

    public void c() throws bb {
    }

    /* compiled from: Latent.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: Latent.java */
    private static class a extends ca<ac> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, ac acVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 8) {
                                acVar.f20a = brVar.s();
                                acVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 10) {
                                acVar.f21b = brVar.t();
                                acVar.b(true);
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
                    if (!acVar.a()) {
                        throw new bs("Required field 'latency' was not found in serialized data! Struct: " + toString());
                    }
                    if (!acVar.b()) {
                        throw new bs("Required field 'interval' was not found in serialized data! Struct: " + toString());
                    }
                    acVar.c();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, ac acVar) throws bb {
            acVar.c();
            brVar.a(ac.d);
            brVar.a(ac.e);
            brVar.a(acVar.f20a);
            brVar.b();
            brVar.a(ac.f);
            brVar.a(acVar.f21b);
            brVar.b();
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: Latent.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: Latent.java */
    private static class c extends cb<ac> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, ac acVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(acVar.f20a);
            bxVar.a(acVar.f21b);
        }

        @Override // b.a.by
        public void b(br brVar, ac acVar) throws bb {
            bx bxVar = (bx) brVar;
            acVar.f20a = bxVar.s();
            acVar.a(true);
            acVar.f21b = bxVar.t();
            acVar.b(true);
        }
    }
}
