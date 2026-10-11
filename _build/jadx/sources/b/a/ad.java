package b.a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: Location.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ad implements ay<ad, e>, Serializable, Cloneable {
    public static final Map<e, bg> d;
    private static final bw e = new bw("Location");
    private static final bo f = new bo("lat", (byte) 4, 1);
    private static final bo g = new bo("lng", (byte) 4, 2);
    private static final bo h = new bo("ts", (byte) 10, 3);
    private static final Map<Class<? extends by>, bz> i = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public double f24a;

    /* renamed from: b, reason: collision with root package name */
    public double f25b;
    public long c;
    private byte j;

    static {
        i.put(ca.class, new b());
        i.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.LAT, (e) new bg("lat", (byte) 1, new bh((byte) 4)));
        enumMap.put((EnumMap) e.LNG, (e) new bg("lng", (byte) 1, new bh((byte) 4)));
        enumMap.put((EnumMap) e.TS, (e) new bg("ts", (byte) 1, new bh((byte) 10)));
        d = Collections.unmodifiableMap(enumMap);
        bg.a(ad.class, d);
    }

    /* compiled from: Location.java */
    public enum e implements bc {
        LAT(1, "lat"),
        LNG(2, "lng"),
        TS(3, "ts");

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

    public ad() {
        this.j = (byte) 0;
    }

    public ad(double d2, double d3, long j) {
        this();
        this.f24a = d2;
        a(true);
        this.f25b = d3;
        b(true);
        this.c = j;
        c(true);
    }

    public boolean a() {
        return aw.a(this.j, 0);
    }

    public void a(boolean z) {
        this.j = aw.a(this.j, 0, z);
    }

    public boolean b() {
        return aw.a(this.j, 1);
    }

    public void b(boolean z) {
        this.j = aw.a(this.j, 1, z);
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
        return "Location(lat:" + this.f24a + ", lng:" + this.f25b + ", ts:" + this.c + ")";
    }

    public void d() throws bb {
    }

    /* compiled from: Location.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: Location.java */
    private static class a extends ca<ad> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, ad adVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 4) {
                                adVar.f24a = brVar.u();
                                adVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 4) {
                                adVar.f25b = brVar.u();
                                adVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 10) {
                                adVar.c = brVar.t();
                                adVar.c(true);
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
                    if (!adVar.a()) {
                        throw new bs("Required field 'lat' was not found in serialized data! Struct: " + toString());
                    }
                    if (!adVar.b()) {
                        throw new bs("Required field 'lng' was not found in serialized data! Struct: " + toString());
                    }
                    if (!adVar.c()) {
                        throw new bs("Required field 'ts' was not found in serialized data! Struct: " + toString());
                    }
                    adVar.d();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, ad adVar) throws bb {
            adVar.d();
            brVar.a(ad.e);
            brVar.a(ad.f);
            brVar.a(adVar.f24a);
            brVar.b();
            brVar.a(ad.g);
            brVar.a(adVar.f25b);
            brVar.b();
            brVar.a(ad.h);
            brVar.a(adVar.c);
            brVar.b();
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: Location.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: Location.java */
    private static class c extends cb<ad> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, ad adVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(adVar.f24a);
            bxVar.a(adVar.f25b);
            bxVar.a(adVar.c);
        }

        @Override // b.a.by
        public void b(br brVar, ad adVar) throws bb {
            bx bxVar = (bx) brVar;
            adVar.f24a = bxVar.u();
            adVar.a(true);
            adVar.f25b = bxVar.u();
            adVar.b(true);
            adVar.c = bxVar.t();
            adVar.c(true);
        }
    }
}
