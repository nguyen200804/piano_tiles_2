package b.a;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MiscInfo.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ae implements ay<ae, e>, Serializable, Cloneable {
    public static final Map<e, bg> k;
    private static final bw l = new bw("MiscInfo");
    private static final bo m = new bo("time_zone", (byte) 8, 1);
    private static final bo n = new bo("language", (byte) 11, 2);
    private static final bo o = new bo("country", (byte) 11, 3);
    private static final bo p = new bo("latitude", (byte) 4, 4);
    private static final bo q = new bo("longitude", (byte) 4, 5);
    private static final bo r = new bo("carrier", (byte) 11, 6);
    private static final bo s = new bo("latency", (byte) 8, 7);
    private static final bo t = new bo("display_name", (byte) 11, 8);
    private static final bo u = new bo("access_type", (byte) 8, 9);
    private static final bo v = new bo("access_subtype", (byte) 11, 10);
    private static final Map<Class<? extends by>, bz> w = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public int f28a;

    /* renamed from: b, reason: collision with root package name */
    public String f29b;
    public String c;
    public double d;
    public double e;
    public String f;
    public int g;
    public String h;
    public l i;
    public String j;
    private byte x = 0;
    private e[] y = {e.TIME_ZONE, e.LANGUAGE, e.COUNTRY, e.LATITUDE, e.LONGITUDE, e.CARRIER, e.LATENCY, e.DISPLAY_NAME, e.ACCESS_TYPE, e.ACCESS_SUBTYPE};

    static {
        w.put(ca.class, new b());
        w.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.TIME_ZONE, (e) new bg("time_zone", (byte) 2, new bh((byte) 8)));
        enumMap.put((EnumMap) e.LANGUAGE, (e) new bg("language", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.COUNTRY, (e) new bg("country", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.LATITUDE, (e) new bg("latitude", (byte) 2, new bh((byte) 4)));
        enumMap.put((EnumMap) e.LONGITUDE, (e) new bg("longitude", (byte) 2, new bh((byte) 4)));
        enumMap.put((EnumMap) e.CARRIER, (e) new bg("carrier", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.LATENCY, (e) new bg("latency", (byte) 2, new bh((byte) 8)));
        enumMap.put((EnumMap) e.DISPLAY_NAME, (e) new bg("display_name", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.ACCESS_TYPE, (e) new bg("access_type", (byte) 2, new bf((byte) 16, l.class)));
        enumMap.put((EnumMap) e.ACCESS_SUBTYPE, (e) new bg("access_subtype", (byte) 2, new bh((byte) 11)));
        k = Collections.unmodifiableMap(enumMap);
        bg.a(ae.class, k);
    }

    /* compiled from: MiscInfo.java */
    public enum e implements bc {
        TIME_ZONE(1, "time_zone"),
        LANGUAGE(2, "language"),
        COUNTRY(3, "country"),
        LATITUDE(4, "latitude"),
        LONGITUDE(5, "longitude"),
        CARRIER(6, "carrier"),
        LATENCY(7, "latency"),
        DISPLAY_NAME(8, "display_name"),
        ACCESS_TYPE(9, "access_type"),
        ACCESS_SUBTYPE(10, "access_subtype");

        private static final Map<String, e> k = new HashMap();
        private final short l;
        private final String m;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                k.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.l = s;
            this.m = str;
        }

        @Override // b.a.bc
        public short a() {
            return this.l;
        }

        public String b() {
            return this.m;
        }
    }

    public ae a(int i) {
        this.f28a = i;
        a(true);
        return this;
    }

    public boolean a() {
        return aw.a(this.x, 0);
    }

    public void a(boolean z) {
        this.x = aw.a(this.x, 0, z);
    }

    public ae a(String str) {
        this.f29b = str;
        return this;
    }

    public boolean b() {
        return this.f29b != null;
    }

    public void b(boolean z) {
        if (!z) {
            this.f29b = null;
        }
    }

    public ae b(String str) {
        this.c = str;
        return this;
    }

    public boolean c() {
        return this.c != null;
    }

    public void c(boolean z) {
        if (!z) {
            this.c = null;
        }
    }

    public boolean d() {
        return aw.a(this.x, 1);
    }

    public void d(boolean z) {
        this.x = aw.a(this.x, 1, z);
    }

    public boolean e() {
        return aw.a(this.x, 2);
    }

    public void e(boolean z) {
        this.x = aw.a(this.x, 2, z);
    }

    public ae c(String str) {
        this.f = str;
        return this;
    }

    public boolean f() {
        return this.f != null;
    }

    public void f(boolean z) {
        if (!z) {
            this.f = null;
        }
    }

    public boolean g() {
        return aw.a(this.x, 3);
    }

    public void g(boolean z) {
        this.x = aw.a(this.x, 3, z);
    }

    public boolean h() {
        return this.h != null;
    }

    public void h(boolean z) {
        if (!z) {
            this.h = null;
        }
    }

    public ae a(l lVar) {
        this.i = lVar;
        return this;
    }

    public boolean i() {
        return this.i != null;
    }

    public void i(boolean z) {
        if (!z) {
            this.i = null;
        }
    }

    public ae d(String str) {
        this.j = str;
        return this;
    }

    public boolean j() {
        return this.j != null;
    }

    public void j(boolean z) {
        if (!z) {
            this.j = null;
        }
    }

    @Override // b.a.ay
    public void a(br brVar) throws bb {
        w.get(brVar.y()).b().b(brVar, this);
    }

    @Override // b.a.ay
    public void b(br brVar) throws bb {
        w.get(brVar.y()).b().a(brVar, this);
    }

    public String toString() {
        boolean z = false;
        StringBuilder sb = new StringBuilder("MiscInfo(");
        boolean z2 = true;
        if (a()) {
            sb.append("time_zone:");
            sb.append(this.f28a);
            z2 = false;
        }
        if (b()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("language:");
            if (this.f29b == null) {
                sb.append("null");
            } else {
                sb.append(this.f29b);
            }
            z2 = false;
        }
        if (c()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("country:");
            if (this.c == null) {
                sb.append("null");
            } else {
                sb.append(this.c);
            }
            z2 = false;
        }
        if (d()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("latitude:");
            sb.append(this.d);
            z2 = false;
        }
        if (e()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("longitude:");
            sb.append(this.e);
            z2 = false;
        }
        if (f()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("carrier:");
            if (this.f == null) {
                sb.append("null");
            } else {
                sb.append(this.f);
            }
            z2 = false;
        }
        if (g()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("latency:");
            sb.append(this.g);
            z2 = false;
        }
        if (h()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("display_name:");
            if (this.h == null) {
                sb.append("null");
            } else {
                sb.append(this.h);
            }
            z2 = false;
        }
        if (i()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("access_type:");
            if (this.i == null) {
                sb.append("null");
            } else {
                sb.append(this.i);
            }
        } else {
            z = z2;
        }
        if (j()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("access_subtype:");
            if (this.j == null) {
                sb.append("null");
            } else {
                sb.append(this.j);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void k() throws bb {
    }

    /* compiled from: MiscInfo.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: MiscInfo.java */
    private static class a extends ca<ae> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, ae aeVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 8) {
                                aeVar.f28a = brVar.s();
                                aeVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 11) {
                                aeVar.f29b = brVar.v();
                                aeVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 11) {
                                aeVar.c = brVar.v();
                                aeVar.c(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 4:
                            if (h.f106b == 4) {
                                aeVar.d = brVar.u();
                                aeVar.d(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 5:
                            if (h.f106b == 4) {
                                aeVar.e = brVar.u();
                                aeVar.e(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 6:
                            if (h.f106b == 11) {
                                aeVar.f = brVar.v();
                                aeVar.f(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 7:
                            if (h.f106b == 8) {
                                aeVar.g = brVar.s();
                                aeVar.g(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 8:
                            if (h.f106b == 11) {
                                aeVar.h = brVar.v();
                                aeVar.h(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 9:
                            if (h.f106b == 8) {
                                aeVar.i = l.a(brVar.s());
                                aeVar.i(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 10:
                            if (h.f106b == 11) {
                                aeVar.j = brVar.v();
                                aeVar.j(true);
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
                    aeVar.k();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, ae aeVar) throws bb {
            aeVar.k();
            brVar.a(ae.l);
            if (aeVar.a()) {
                brVar.a(ae.m);
                brVar.a(aeVar.f28a);
                brVar.b();
            }
            if (aeVar.f29b != null && aeVar.b()) {
                brVar.a(ae.n);
                brVar.a(aeVar.f29b);
                brVar.b();
            }
            if (aeVar.c != null && aeVar.c()) {
                brVar.a(ae.o);
                brVar.a(aeVar.c);
                brVar.b();
            }
            if (aeVar.d()) {
                brVar.a(ae.p);
                brVar.a(aeVar.d);
                brVar.b();
            }
            if (aeVar.e()) {
                brVar.a(ae.q);
                brVar.a(aeVar.e);
                brVar.b();
            }
            if (aeVar.f != null && aeVar.f()) {
                brVar.a(ae.r);
                brVar.a(aeVar.f);
                brVar.b();
            }
            if (aeVar.g()) {
                brVar.a(ae.s);
                brVar.a(aeVar.g);
                brVar.b();
            }
            if (aeVar.h != null && aeVar.h()) {
                brVar.a(ae.t);
                brVar.a(aeVar.h);
                brVar.b();
            }
            if (aeVar.i != null && aeVar.i()) {
                brVar.a(ae.u);
                brVar.a(aeVar.i.a());
                brVar.b();
            }
            if (aeVar.j != null && aeVar.j()) {
                brVar.a(ae.v);
                brVar.a(aeVar.j);
                brVar.b();
            }
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: MiscInfo.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: MiscInfo.java */
    private static class c extends cb<ae> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, ae aeVar) throws bb {
            bx bxVar = (bx) brVar;
            BitSet bitSet = new BitSet();
            if (aeVar.a()) {
                bitSet.set(0);
            }
            if (aeVar.b()) {
                bitSet.set(1);
            }
            if (aeVar.c()) {
                bitSet.set(2);
            }
            if (aeVar.d()) {
                bitSet.set(3);
            }
            if (aeVar.e()) {
                bitSet.set(4);
            }
            if (aeVar.f()) {
                bitSet.set(5);
            }
            if (aeVar.g()) {
                bitSet.set(6);
            }
            if (aeVar.h()) {
                bitSet.set(7);
            }
            if (aeVar.i()) {
                bitSet.set(8);
            }
            if (aeVar.j()) {
                bitSet.set(9);
            }
            bxVar.a(bitSet, 10);
            if (aeVar.a()) {
                bxVar.a(aeVar.f28a);
            }
            if (aeVar.b()) {
                bxVar.a(aeVar.f29b);
            }
            if (aeVar.c()) {
                bxVar.a(aeVar.c);
            }
            if (aeVar.d()) {
                bxVar.a(aeVar.d);
            }
            if (aeVar.e()) {
                bxVar.a(aeVar.e);
            }
            if (aeVar.f()) {
                bxVar.a(aeVar.f);
            }
            if (aeVar.g()) {
                bxVar.a(aeVar.g);
            }
            if (aeVar.h()) {
                bxVar.a(aeVar.h);
            }
            if (aeVar.i()) {
                bxVar.a(aeVar.i.a());
            }
            if (aeVar.j()) {
                bxVar.a(aeVar.j);
            }
        }

        @Override // b.a.by
        public void b(br brVar, ae aeVar) throws bb {
            bx bxVar = (bx) brVar;
            BitSet b2 = bxVar.b(10);
            if (b2.get(0)) {
                aeVar.f28a = bxVar.s();
                aeVar.a(true);
            }
            if (b2.get(1)) {
                aeVar.f29b = bxVar.v();
                aeVar.b(true);
            }
            if (b2.get(2)) {
                aeVar.c = bxVar.v();
                aeVar.c(true);
            }
            if (b2.get(3)) {
                aeVar.d = bxVar.u();
                aeVar.d(true);
            }
            if (b2.get(4)) {
                aeVar.e = bxVar.u();
                aeVar.e(true);
            }
            if (b2.get(5)) {
                aeVar.f = bxVar.v();
                aeVar.f(true);
            }
            if (b2.get(6)) {
                aeVar.g = bxVar.s();
                aeVar.g(true);
            }
            if (b2.get(7)) {
                aeVar.h = bxVar.v();
                aeVar.h(true);
            }
            if (b2.get(8)) {
                aeVar.i = l.a(bxVar.s());
                aeVar.i(true);
            }
            if (b2.get(9)) {
                aeVar.j = bxVar.v();
                aeVar.j(true);
            }
        }
    }
}
