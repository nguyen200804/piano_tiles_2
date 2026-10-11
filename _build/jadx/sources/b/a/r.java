package b.a;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: DeviceInfo.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class r implements ay<r, e>, Serializable, Cloneable {
    public static final Map<e, bg> r;
    private byte L = 0;
    private e[] M = {e.DEVICE_ID, e.IDMD5, e.MAC_ADDRESS, e.OPEN_UDID, e.MODEL, e.CPU, e.OS, e.OS_VERSION, e.RESOLUTION, e.IS_JAILBROKEN, e.IS_PIRATED, e.DEVICE_BOARD, e.DEVICE_BRAND, e.DEVICE_MANUTIME, e.DEVICE_MANUFACTURER, e.DEVICE_MANUID, e.DEVICE_NAME};

    /* renamed from: a, reason: collision with root package name */
    public String f181a;

    /* renamed from: b, reason: collision with root package name */
    public String f182b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public ah i;
    public boolean j;
    public boolean k;
    public String l;
    public String m;
    public long n;
    public String o;
    public String p;
    public String q;
    private static final bw s = new bw("DeviceInfo");
    private static final bo t = new bo("device_id", (byte) 11, 1);
    private static final bo u = new bo("idmd5", (byte) 11, 2);
    private static final bo v = new bo("mac_address", (byte) 11, 3);
    private static final bo w = new bo("open_udid", (byte) 11, 4);
    private static final bo x = new bo("model", (byte) 11, 5);
    private static final bo y = new bo("cpu", (byte) 11, 6);
    private static final bo z = new bo("os", (byte) 11, 7);
    private static final bo A = new bo("os_version", (byte) 11, 8);
    private static final bo B = new bo("resolution", (byte) 12, 9);
    private static final bo C = new bo("is_jailbroken", (byte) 2, 10);
    private static final bo D = new bo("is_pirated", (byte) 2, 11);
    private static final bo E = new bo("device_board", (byte) 11, 12);
    private static final bo F = new bo("device_brand", (byte) 11, 13);
    private static final bo G = new bo("device_manutime", (byte) 10, 14);
    private static final bo H = new bo("device_manufacturer", (byte) 11, 15);
    private static final bo I = new bo("device_manuid", (byte) 11, 16);
    private static final bo J = new bo("device_name", (byte) 11, 17);
    private static final Map<Class<? extends by>, bz> K = new HashMap();

    static {
        K.put(ca.class, new b());
        K.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.DEVICE_ID, (e) new bg("device_id", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.IDMD5, (e) new bg("idmd5", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.MAC_ADDRESS, (e) new bg("mac_address", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.OPEN_UDID, (e) new bg("open_udid", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.MODEL, (e) new bg("model", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.CPU, (e) new bg("cpu", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.OS, (e) new bg("os", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.OS_VERSION, (e) new bg("os_version", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.RESOLUTION, (e) new bg("resolution", (byte) 2, new bk((byte) 12, ah.class)));
        enumMap.put((EnumMap) e.IS_JAILBROKEN, (e) new bg("is_jailbroken", (byte) 2, new bh((byte) 2)));
        enumMap.put((EnumMap) e.IS_PIRATED, (e) new bg("is_pirated", (byte) 2, new bh((byte) 2)));
        enumMap.put((EnumMap) e.DEVICE_BOARD, (e) new bg("device_board", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.DEVICE_BRAND, (e) new bg("device_brand", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.DEVICE_MANUTIME, (e) new bg("device_manutime", (byte) 2, new bh((byte) 10)));
        enumMap.put((EnumMap) e.DEVICE_MANUFACTURER, (e) new bg("device_manufacturer", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.DEVICE_MANUID, (e) new bg("device_manuid", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.DEVICE_NAME, (e) new bg("device_name", (byte) 2, new bh((byte) 11)));
        r = Collections.unmodifiableMap(enumMap);
        bg.a(r.class, r);
    }

    /* compiled from: DeviceInfo.java */
    public enum e implements bc {
        DEVICE_ID(1, "device_id"),
        IDMD5(2, "idmd5"),
        MAC_ADDRESS(3, "mac_address"),
        OPEN_UDID(4, "open_udid"),
        MODEL(5, "model"),
        CPU(6, "cpu"),
        OS(7, "os"),
        OS_VERSION(8, "os_version"),
        RESOLUTION(9, "resolution"),
        IS_JAILBROKEN(10, "is_jailbroken"),
        IS_PIRATED(11, "is_pirated"),
        DEVICE_BOARD(12, "device_board"),
        DEVICE_BRAND(13, "device_brand"),
        DEVICE_MANUTIME(14, "device_manutime"),
        DEVICE_MANUFACTURER(15, "device_manufacturer"),
        DEVICE_MANUID(16, "device_manuid"),
        DEVICE_NAME(17, "device_name");

        private static final Map<String, e> r = new HashMap();
        private final short s;
        private final String t;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                r.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.s = s;
            this.t = str;
        }

        @Override // b.a.bc
        public short a() {
            return this.s;
        }

        public String b() {
            return this.t;
        }
    }

    public r a(String str) {
        this.f181a = str;
        return this;
    }

    public boolean a() {
        return this.f181a != null;
    }

    public void a(boolean z2) {
        if (!z2) {
            this.f181a = null;
        }
    }

    public r b(String str) {
        this.f182b = str;
        return this;
    }

    public boolean b() {
        return this.f182b != null;
    }

    public void b(boolean z2) {
        if (!z2) {
            this.f182b = null;
        }
    }

    public r c(String str) {
        this.c = str;
        return this;
    }

    public boolean c() {
        return this.c != null;
    }

    public void c(boolean z2) {
        if (!z2) {
            this.c = null;
        }
    }

    public boolean d() {
        return this.d != null;
    }

    public void d(boolean z2) {
        if (!z2) {
            this.d = null;
        }
    }

    public r d(String str) {
        this.e = str;
        return this;
    }

    public boolean e() {
        return this.e != null;
    }

    public void e(boolean z2) {
        if (!z2) {
            this.e = null;
        }
    }

    public r e(String str) {
        this.f = str;
        return this;
    }

    public boolean f() {
        return this.f != null;
    }

    public void f(boolean z2) {
        if (!z2) {
            this.f = null;
        }
    }

    public r f(String str) {
        this.g = str;
        return this;
    }

    public boolean g() {
        return this.g != null;
    }

    public void g(boolean z2) {
        if (!z2) {
            this.g = null;
        }
    }

    public r g(String str) {
        this.h = str;
        return this;
    }

    public boolean h() {
        return this.h != null;
    }

    public void h(boolean z2) {
        if (!z2) {
            this.h = null;
        }
    }

    public r a(ah ahVar) {
        this.i = ahVar;
        return this;
    }

    public boolean i() {
        return this.i != null;
    }

    public void i(boolean z2) {
        if (!z2) {
            this.i = null;
        }
    }

    public boolean j() {
        return aw.a(this.L, 0);
    }

    public void j(boolean z2) {
        this.L = aw.a(this.L, 0, z2);
    }

    public boolean k() {
        return aw.a(this.L, 1);
    }

    public void k(boolean z2) {
        this.L = aw.a(this.L, 1, z2);
    }

    public r h(String str) {
        this.l = str;
        return this;
    }

    public boolean l() {
        return this.l != null;
    }

    public void l(boolean z2) {
        if (!z2) {
            this.l = null;
        }
    }

    public r i(String str) {
        this.m = str;
        return this;
    }

    public boolean m() {
        return this.m != null;
    }

    public void m(boolean z2) {
        if (!z2) {
            this.m = null;
        }
    }

    public r a(long j) {
        this.n = j;
        n(true);
        return this;
    }

    public boolean n() {
        return aw.a(this.L, 2);
    }

    public void n(boolean z2) {
        this.L = aw.a(this.L, 2, z2);
    }

    public r j(String str) {
        this.o = str;
        return this;
    }

    public boolean o() {
        return this.o != null;
    }

    public void o(boolean z2) {
        if (!z2) {
            this.o = null;
        }
    }

    public r k(String str) {
        this.p = str;
        return this;
    }

    public boolean p() {
        return this.p != null;
    }

    public void p(boolean z2) {
        if (!z2) {
            this.p = null;
        }
    }

    public r l(String str) {
        this.q = str;
        return this;
    }

    public boolean q() {
        return this.q != null;
    }

    public void q(boolean z2) {
        if (!z2) {
            this.q = null;
        }
    }

    @Override // b.a.ay
    public void a(br brVar) throws bb {
        K.get(brVar.y()).b().b(brVar, this);
    }

    @Override // b.a.ay
    public void b(br brVar) throws bb {
        K.get(brVar.y()).b().a(brVar, this);
    }

    public String toString() {
        boolean z2 = false;
        StringBuilder sb = new StringBuilder("DeviceInfo(");
        boolean z3 = true;
        if (a()) {
            sb.append("device_id:");
            if (this.f181a == null) {
                sb.append("null");
            } else {
                sb.append(this.f181a);
            }
            z3 = false;
        }
        if (b()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("idmd5:");
            if (this.f182b == null) {
                sb.append("null");
            } else {
                sb.append(this.f182b);
            }
            z3 = false;
        }
        if (c()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("mac_address:");
            if (this.c == null) {
                sb.append("null");
            } else {
                sb.append(this.c);
            }
            z3 = false;
        }
        if (d()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("open_udid:");
            if (this.d == null) {
                sb.append("null");
            } else {
                sb.append(this.d);
            }
            z3 = false;
        }
        if (e()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("model:");
            if (this.e == null) {
                sb.append("null");
            } else {
                sb.append(this.e);
            }
            z3 = false;
        }
        if (f()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("cpu:");
            if (this.f == null) {
                sb.append("null");
            } else {
                sb.append(this.f);
            }
            z3 = false;
        }
        if (g()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("os:");
            if (this.g == null) {
                sb.append("null");
            } else {
                sb.append(this.g);
            }
            z3 = false;
        }
        if (h()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("os_version:");
            if (this.h == null) {
                sb.append("null");
            } else {
                sb.append(this.h);
            }
            z3 = false;
        }
        if (i()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("resolution:");
            if (this.i == null) {
                sb.append("null");
            } else {
                sb.append(this.i);
            }
            z3 = false;
        }
        if (j()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("is_jailbroken:");
            sb.append(this.j);
            z3 = false;
        }
        if (k()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("is_pirated:");
            sb.append(this.k);
            z3 = false;
        }
        if (l()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("device_board:");
            if (this.l == null) {
                sb.append("null");
            } else {
                sb.append(this.l);
            }
            z3 = false;
        }
        if (m()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("device_brand:");
            if (this.m == null) {
                sb.append("null");
            } else {
                sb.append(this.m);
            }
            z3 = false;
        }
        if (n()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("device_manutime:");
            sb.append(this.n);
            z3 = false;
        }
        if (o()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("device_manufacturer:");
            if (this.o == null) {
                sb.append("null");
            } else {
                sb.append(this.o);
            }
            z3 = false;
        }
        if (p()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("device_manuid:");
            if (this.p == null) {
                sb.append("null");
            } else {
                sb.append(this.p);
            }
        } else {
            z2 = z3;
        }
        if (q()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("device_name:");
            if (this.q == null) {
                sb.append("null");
            } else {
                sb.append(this.q);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void r() throws bb {
        if (this.i != null) {
            this.i.c();
        }
    }

    /* compiled from: DeviceInfo.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: DeviceInfo.java */
    private static class a extends ca<r> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, r rVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 11) {
                                rVar.f181a = brVar.v();
                                rVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 11) {
                                rVar.f182b = brVar.v();
                                rVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 11) {
                                rVar.c = brVar.v();
                                rVar.c(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 4:
                            if (h.f106b == 11) {
                                rVar.d = brVar.v();
                                rVar.d(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 5:
                            if (h.f106b == 11) {
                                rVar.e = brVar.v();
                                rVar.e(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 6:
                            if (h.f106b == 11) {
                                rVar.f = brVar.v();
                                rVar.f(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 7:
                            if (h.f106b == 11) {
                                rVar.g = brVar.v();
                                rVar.g(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 8:
                            if (h.f106b == 11) {
                                rVar.h = brVar.v();
                                rVar.h(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 9:
                            if (h.f106b == 12) {
                                rVar.i = new ah();
                                rVar.i.a(brVar);
                                rVar.i(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 10:
                            if (h.f106b == 2) {
                                rVar.j = brVar.p();
                                rVar.j(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 11:
                            if (h.f106b == 2) {
                                rVar.k = brVar.p();
                                rVar.k(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 12:
                            if (h.f106b == 11) {
                                rVar.l = brVar.v();
                                rVar.l(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 13:
                            if (h.f106b == 11) {
                                rVar.m = brVar.v();
                                rVar.m(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 14:
                            if (h.f106b == 10) {
                                rVar.n = brVar.t();
                                rVar.n(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 15:
                            if (h.f106b == 11) {
                                rVar.o = brVar.v();
                                rVar.o(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 16:
                            if (h.f106b == 11) {
                                rVar.p = brVar.v();
                                rVar.p(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 17:
                            if (h.f106b == 11) {
                                rVar.q = brVar.v();
                                rVar.q(true);
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
                    rVar.r();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, r rVar) throws bb {
            rVar.r();
            brVar.a(r.s);
            if (rVar.f181a != null && rVar.a()) {
                brVar.a(r.t);
                brVar.a(rVar.f181a);
                brVar.b();
            }
            if (rVar.f182b != null && rVar.b()) {
                brVar.a(r.u);
                brVar.a(rVar.f182b);
                brVar.b();
            }
            if (rVar.c != null && rVar.c()) {
                brVar.a(r.v);
                brVar.a(rVar.c);
                brVar.b();
            }
            if (rVar.d != null && rVar.d()) {
                brVar.a(r.w);
                brVar.a(rVar.d);
                brVar.b();
            }
            if (rVar.e != null && rVar.e()) {
                brVar.a(r.x);
                brVar.a(rVar.e);
                brVar.b();
            }
            if (rVar.f != null && rVar.f()) {
                brVar.a(r.y);
                brVar.a(rVar.f);
                brVar.b();
            }
            if (rVar.g != null && rVar.g()) {
                brVar.a(r.z);
                brVar.a(rVar.g);
                brVar.b();
            }
            if (rVar.h != null && rVar.h()) {
                brVar.a(r.A);
                brVar.a(rVar.h);
                brVar.b();
            }
            if (rVar.i != null && rVar.i()) {
                brVar.a(r.B);
                rVar.i.b(brVar);
                brVar.b();
            }
            if (rVar.j()) {
                brVar.a(r.C);
                brVar.a(rVar.j);
                brVar.b();
            }
            if (rVar.k()) {
                brVar.a(r.D);
                brVar.a(rVar.k);
                brVar.b();
            }
            if (rVar.l != null && rVar.l()) {
                brVar.a(r.E);
                brVar.a(rVar.l);
                brVar.b();
            }
            if (rVar.m != null && rVar.m()) {
                brVar.a(r.F);
                brVar.a(rVar.m);
                brVar.b();
            }
            if (rVar.n()) {
                brVar.a(r.G);
                brVar.a(rVar.n);
                brVar.b();
            }
            if (rVar.o != null && rVar.o()) {
                brVar.a(r.H);
                brVar.a(rVar.o);
                brVar.b();
            }
            if (rVar.p != null && rVar.p()) {
                brVar.a(r.I);
                brVar.a(rVar.p);
                brVar.b();
            }
            if (rVar.q != null && rVar.q()) {
                brVar.a(r.J);
                brVar.a(rVar.q);
                brVar.b();
            }
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: DeviceInfo.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: DeviceInfo.java */
    private static class c extends cb<r> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, r rVar) throws bb {
            bx bxVar = (bx) brVar;
            BitSet bitSet = new BitSet();
            if (rVar.a()) {
                bitSet.set(0);
            }
            if (rVar.b()) {
                bitSet.set(1);
            }
            if (rVar.c()) {
                bitSet.set(2);
            }
            if (rVar.d()) {
                bitSet.set(3);
            }
            if (rVar.e()) {
                bitSet.set(4);
            }
            if (rVar.f()) {
                bitSet.set(5);
            }
            if (rVar.g()) {
                bitSet.set(6);
            }
            if (rVar.h()) {
                bitSet.set(7);
            }
            if (rVar.i()) {
                bitSet.set(8);
            }
            if (rVar.j()) {
                bitSet.set(9);
            }
            if (rVar.k()) {
                bitSet.set(10);
            }
            if (rVar.l()) {
                bitSet.set(11);
            }
            if (rVar.m()) {
                bitSet.set(12);
            }
            if (rVar.n()) {
                bitSet.set(13);
            }
            if (rVar.o()) {
                bitSet.set(14);
            }
            if (rVar.p()) {
                bitSet.set(15);
            }
            if (rVar.q()) {
                bitSet.set(16);
            }
            bxVar.a(bitSet, 17);
            if (rVar.a()) {
                bxVar.a(rVar.f181a);
            }
            if (rVar.b()) {
                bxVar.a(rVar.f182b);
            }
            if (rVar.c()) {
                bxVar.a(rVar.c);
            }
            if (rVar.d()) {
                bxVar.a(rVar.d);
            }
            if (rVar.e()) {
                bxVar.a(rVar.e);
            }
            if (rVar.f()) {
                bxVar.a(rVar.f);
            }
            if (rVar.g()) {
                bxVar.a(rVar.g);
            }
            if (rVar.h()) {
                bxVar.a(rVar.h);
            }
            if (rVar.i()) {
                rVar.i.b(bxVar);
            }
            if (rVar.j()) {
                bxVar.a(rVar.j);
            }
            if (rVar.k()) {
                bxVar.a(rVar.k);
            }
            if (rVar.l()) {
                bxVar.a(rVar.l);
            }
            if (rVar.m()) {
                bxVar.a(rVar.m);
            }
            if (rVar.n()) {
                bxVar.a(rVar.n);
            }
            if (rVar.o()) {
                bxVar.a(rVar.o);
            }
            if (rVar.p()) {
                bxVar.a(rVar.p);
            }
            if (rVar.q()) {
                bxVar.a(rVar.q);
            }
        }

        @Override // b.a.by
        public void b(br brVar, r rVar) throws bb {
            bx bxVar = (bx) brVar;
            BitSet b2 = bxVar.b(17);
            if (b2.get(0)) {
                rVar.f181a = bxVar.v();
                rVar.a(true);
            }
            if (b2.get(1)) {
                rVar.f182b = bxVar.v();
                rVar.b(true);
            }
            if (b2.get(2)) {
                rVar.c = bxVar.v();
                rVar.c(true);
            }
            if (b2.get(3)) {
                rVar.d = bxVar.v();
                rVar.d(true);
            }
            if (b2.get(4)) {
                rVar.e = bxVar.v();
                rVar.e(true);
            }
            if (b2.get(5)) {
                rVar.f = bxVar.v();
                rVar.f(true);
            }
            if (b2.get(6)) {
                rVar.g = bxVar.v();
                rVar.g(true);
            }
            if (b2.get(7)) {
                rVar.h = bxVar.v();
                rVar.h(true);
            }
            if (b2.get(8)) {
                rVar.i = new ah();
                rVar.i.a(bxVar);
                rVar.i(true);
            }
            if (b2.get(9)) {
                rVar.j = bxVar.p();
                rVar.j(true);
            }
            if (b2.get(10)) {
                rVar.k = bxVar.p();
                rVar.k(true);
            }
            if (b2.get(11)) {
                rVar.l = bxVar.v();
                rVar.l(true);
            }
            if (b2.get(12)) {
                rVar.m = bxVar.v();
                rVar.m(true);
            }
            if (b2.get(13)) {
                rVar.n = bxVar.t();
                rVar.n(true);
            }
            if (b2.get(14)) {
                rVar.o = bxVar.v();
                rVar.o(true);
            }
            if (b2.get(15)) {
                rVar.p = bxVar.v();
                rVar.p(true);
            }
            if (b2.get(16)) {
                rVar.q = bxVar.v();
                rVar.q(true);
            }
        }
    }
}
