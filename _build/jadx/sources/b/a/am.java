package b.a;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: UALogEntry.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class am implements ay<am, e>, Serializable, Cloneable {
    public static final Map<e, bg> l;
    private static final bw m = new bw("UALogEntry");
    private static final bo n = new bo("client_stats", (byte) 12, 1);
    private static final bo o = new bo("app_info", (byte) 12, 2);
    private static final bo p = new bo("device_info", (byte) 12, 3);
    private static final bo q = new bo("misc_info", (byte) 12, 4);
    private static final bo r = new bo("activate_msg", (byte) 12, 5);
    private static final bo s = new bo("instant_msgs", (byte) 15, 6);
    private static final bo t = new bo("sessions", (byte) 15, 7);
    private static final bo u = new bo("imprint", (byte) 12, 8);
    private static final bo v = new bo("id_tracking", (byte) 12, 9);
    private static final bo w = new bo("active_user", (byte) 12, 10);
    private static final bo x = new bo("control_policy", (byte) 12, 11);
    private static final Map<Class<? extends by>, bz> y = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public p f58a;

    /* renamed from: b, reason: collision with root package name */
    public o f59b;
    public r c;
    public ae d;
    public m e;
    public List<ab> f;
    public List<ak> g;
    public z h;
    public x i;
    public n j;
    public q k;
    private e[] z = {e.ACTIVATE_MSG, e.INSTANT_MSGS, e.SESSIONS, e.IMPRINT, e.ID_TRACKING, e.ACTIVE_USER, e.CONTROL_POLICY};

    static {
        y.put(ca.class, new b());
        y.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.CLIENT_STATS, (e) new bg("client_stats", (byte) 1, new bk((byte) 12, p.class)));
        enumMap.put((EnumMap) e.APP_INFO, (e) new bg("app_info", (byte) 1, new bk((byte) 12, o.class)));
        enumMap.put((EnumMap) e.DEVICE_INFO, (e) new bg("device_info", (byte) 1, new bk((byte) 12, r.class)));
        enumMap.put((EnumMap) e.MISC_INFO, (e) new bg("misc_info", (byte) 1, new bk((byte) 12, ae.class)));
        enumMap.put((EnumMap) e.ACTIVATE_MSG, (e) new bg("activate_msg", (byte) 2, new bk((byte) 12, m.class)));
        enumMap.put((EnumMap) e.INSTANT_MSGS, (e) new bg("instant_msgs", (byte) 2, new bi((byte) 15, new bk((byte) 12, ab.class))));
        enumMap.put((EnumMap) e.SESSIONS, (e) new bg("sessions", (byte) 2, new bi((byte) 15, new bk((byte) 12, ak.class))));
        enumMap.put((EnumMap) e.IMPRINT, (e) new bg("imprint", (byte) 2, new bk((byte) 12, z.class)));
        enumMap.put((EnumMap) e.ID_TRACKING, (e) new bg("id_tracking", (byte) 2, new bk((byte) 12, x.class)));
        enumMap.put((EnumMap) e.ACTIVE_USER, (e) new bg("active_user", (byte) 2, new bk((byte) 12, n.class)));
        enumMap.put((EnumMap) e.CONTROL_POLICY, (e) new bg("control_policy", (byte) 2, new bk((byte) 12, q.class)));
        l = Collections.unmodifiableMap(enumMap);
        bg.a(am.class, l);
    }

    /* compiled from: UALogEntry.java */
    public enum e implements bc {
        CLIENT_STATS(1, "client_stats"),
        APP_INFO(2, "app_info"),
        DEVICE_INFO(3, "device_info"),
        MISC_INFO(4, "misc_info"),
        ACTIVATE_MSG(5, "activate_msg"),
        INSTANT_MSGS(6, "instant_msgs"),
        SESSIONS(7, "sessions"),
        IMPRINT(8, "imprint"),
        ID_TRACKING(9, "id_tracking"),
        ACTIVE_USER(10, "active_user"),
        CONTROL_POLICY(11, "control_policy");

        private static final Map<String, e> l = new HashMap();
        private final short m;
        private final String n;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                l.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.m = s;
            this.n = str;
        }

        @Override // b.a.bc
        public short a() {
            return this.m;
        }

        public String b() {
            return this.n;
        }
    }

    public am a(p pVar) {
        this.f58a = pVar;
        return this;
    }

    public void a(boolean z) {
        if (!z) {
            this.f58a = null;
        }
    }

    public am a(o oVar) {
        this.f59b = oVar;
        return this;
    }

    public void b(boolean z) {
        if (!z) {
            this.f59b = null;
        }
    }

    public am a(r rVar) {
        this.c = rVar;
        return this;
    }

    public void c(boolean z) {
        if (!z) {
            this.c = null;
        }
    }

    public am a(ae aeVar) {
        this.d = aeVar;
        return this;
    }

    public void d(boolean z) {
        if (!z) {
            this.d = null;
        }
    }

    public am a(m mVar) {
        this.e = mVar;
        return this;
    }

    public boolean a() {
        return this.e != null;
    }

    public void e(boolean z) {
        if (!z) {
            this.e = null;
        }
    }

    public int b() {
        if (this.f == null) {
            return 0;
        }
        return this.f.size();
    }

    public void a(ab abVar) {
        if (this.f == null) {
            this.f = new ArrayList();
        }
        this.f.add(abVar);
    }

    public List<ab> c() {
        return this.f;
    }

    public am a(List<ab> list) {
        this.f = list;
        return this;
    }

    public boolean d() {
        return this.f != null;
    }

    public void f(boolean z) {
        if (!z) {
            this.f = null;
        }
    }

    public void a(ak akVar) {
        if (this.g == null) {
            this.g = new ArrayList();
        }
        this.g.add(akVar);
    }

    public List<ak> e() {
        return this.g;
    }

    public am b(List<ak> list) {
        this.g = list;
        return this;
    }

    public boolean f() {
        return this.g != null;
    }

    public void g(boolean z) {
        if (!z) {
            this.g = null;
        }
    }

    public am a(z zVar) {
        this.h = zVar;
        return this;
    }

    public boolean g() {
        return this.h != null;
    }

    public void h(boolean z) {
        if (!z) {
            this.h = null;
        }
    }

    public am a(x xVar) {
        this.i = xVar;
        return this;
    }

    public boolean h() {
        return this.i != null;
    }

    public void i(boolean z) {
        if (!z) {
            this.i = null;
        }
    }

    public am a(n nVar) {
        this.j = nVar;
        return this;
    }

    public boolean i() {
        return this.j != null;
    }

    public void j(boolean z) {
        if (!z) {
            this.j = null;
        }
    }

    public am a(q qVar) {
        this.k = qVar;
        return this;
    }

    public boolean j() {
        return this.k != null;
    }

    public void k(boolean z) {
        if (!z) {
            this.k = null;
        }
    }

    @Override // b.a.ay
    public void a(br brVar) throws bb {
        y.get(brVar.y()).b().b(brVar, this);
    }

    @Override // b.a.ay
    public void b(br brVar) throws bb {
        y.get(brVar.y()).b().a(brVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UALogEntry(");
        sb.append("client_stats:");
        if (this.f58a == null) {
            sb.append("null");
        } else {
            sb.append(this.f58a);
        }
        sb.append(", ");
        sb.append("app_info:");
        if (this.f59b == null) {
            sb.append("null");
        } else {
            sb.append(this.f59b);
        }
        sb.append(", ");
        sb.append("device_info:");
        if (this.c == null) {
            sb.append("null");
        } else {
            sb.append(this.c);
        }
        sb.append(", ");
        sb.append("misc_info:");
        if (this.d == null) {
            sb.append("null");
        } else {
            sb.append(this.d);
        }
        if (a()) {
            sb.append(", ");
            sb.append("activate_msg:");
            if (this.e == null) {
                sb.append("null");
            } else {
                sb.append(this.e);
            }
        }
        if (d()) {
            sb.append(", ");
            sb.append("instant_msgs:");
            if (this.f == null) {
                sb.append("null");
            } else {
                sb.append(this.f);
            }
        }
        if (f()) {
            sb.append(", ");
            sb.append("sessions:");
            if (this.g == null) {
                sb.append("null");
            } else {
                sb.append(this.g);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("imprint:");
            if (this.h == null) {
                sb.append("null");
            } else {
                sb.append(this.h);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("id_tracking:");
            if (this.i == null) {
                sb.append("null");
            } else {
                sb.append(this.i);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("active_user:");
            if (this.j == null) {
                sb.append("null");
            } else {
                sb.append(this.j);
            }
        }
        if (j()) {
            sb.append(", ");
            sb.append("control_policy:");
            if (this.k == null) {
                sb.append("null");
            } else {
                sb.append(this.k);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void k() throws bb {
        if (this.f58a == null) {
            throw new bs("Required field 'client_stats' was not present! Struct: " + toString());
        }
        if (this.f59b == null) {
            throw new bs("Required field 'app_info' was not present! Struct: " + toString());
        }
        if (this.c == null) {
            throw new bs("Required field 'device_info' was not present! Struct: " + toString());
        }
        if (this.d == null) {
            throw new bs("Required field 'misc_info' was not present! Struct: " + toString());
        }
        if (this.f58a != null) {
            this.f58a.d();
        }
        if (this.f59b != null) {
            this.f59b.g();
        }
        if (this.c != null) {
            this.c.r();
        }
        if (this.d != null) {
            this.d.k();
        }
        if (this.e != null) {
            this.e.b();
        }
        if (this.h != null) {
            this.h.f();
        }
        if (this.i != null) {
            this.i.e();
        }
        if (this.j != null) {
            this.j.a();
        }
        if (this.k != null) {
            this.k.b();
        }
    }

    /* compiled from: UALogEntry.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: UALogEntry.java */
    private static class a extends ca<am> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, am amVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 12) {
                                amVar.f58a = new p();
                                amVar.f58a.a(brVar);
                                amVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 12) {
                                amVar.f59b = new o();
                                amVar.f59b.a(brVar);
                                amVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 12) {
                                amVar.c = new r();
                                amVar.c.a(brVar);
                                amVar.c(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 4:
                            if (h.f106b == 12) {
                                amVar.d = new ae();
                                amVar.d.a(brVar);
                                amVar.d(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 5:
                            if (h.f106b == 12) {
                                amVar.e = new m();
                                amVar.e.a(brVar);
                                amVar.e(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 6:
                            if (h.f106b == 15) {
                                bp l = brVar.l();
                                amVar.f = new ArrayList(l.f108b);
                                for (int i = 0; i < l.f108b; i++) {
                                    ab abVar = new ab();
                                    abVar.a(brVar);
                                    amVar.f.add(abVar);
                                }
                                brVar.m();
                                amVar.f(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 7:
                            if (h.f106b == 15) {
                                bp l2 = brVar.l();
                                amVar.g = new ArrayList(l2.f108b);
                                for (int i2 = 0; i2 < l2.f108b; i2++) {
                                    ak akVar = new ak();
                                    akVar.a(brVar);
                                    amVar.g.add(akVar);
                                }
                                brVar.m();
                                amVar.g(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 8:
                            if (h.f106b == 12) {
                                amVar.h = new z();
                                amVar.h.a(brVar);
                                amVar.h(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 9:
                            if (h.f106b == 12) {
                                amVar.i = new x();
                                amVar.i.a(brVar);
                                amVar.i(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 10:
                            if (h.f106b == 12) {
                                amVar.j = new n();
                                amVar.j.a(brVar);
                                amVar.j(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 11:
                            if (h.f106b == 12) {
                                amVar.k = new q();
                                amVar.k.a(brVar);
                                amVar.k(true);
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
                    amVar.k();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, am amVar) throws bb {
            amVar.k();
            brVar.a(am.m);
            if (amVar.f58a != null) {
                brVar.a(am.n);
                amVar.f58a.b(brVar);
                brVar.b();
            }
            if (amVar.f59b != null) {
                brVar.a(am.o);
                amVar.f59b.b(brVar);
                brVar.b();
            }
            if (amVar.c != null) {
                brVar.a(am.p);
                amVar.c.b(brVar);
                brVar.b();
            }
            if (amVar.d != null) {
                brVar.a(am.q);
                amVar.d.b(brVar);
                brVar.b();
            }
            if (amVar.e != null && amVar.a()) {
                brVar.a(am.r);
                amVar.e.b(brVar);
                brVar.b();
            }
            if (amVar.f != null && amVar.d()) {
                brVar.a(am.s);
                brVar.a(new bp((byte) 12, amVar.f.size()));
                Iterator<ab> it = amVar.f.iterator();
                while (it.hasNext()) {
                    it.next().b(brVar);
                }
                brVar.e();
                brVar.b();
            }
            if (amVar.g != null && amVar.f()) {
                brVar.a(am.t);
                brVar.a(new bp((byte) 12, amVar.g.size()));
                Iterator<ak> it2 = amVar.g.iterator();
                while (it2.hasNext()) {
                    it2.next().b(brVar);
                }
                brVar.e();
                brVar.b();
            }
            if (amVar.h != null && amVar.g()) {
                brVar.a(am.u);
                amVar.h.b(brVar);
                brVar.b();
            }
            if (amVar.i != null && amVar.h()) {
                brVar.a(am.v);
                amVar.i.b(brVar);
                brVar.b();
            }
            if (amVar.j != null && amVar.i()) {
                brVar.a(am.w);
                amVar.j.b(brVar);
                brVar.b();
            }
            if (amVar.k != null && amVar.j()) {
                brVar.a(am.x);
                amVar.k.b(brVar);
                brVar.b();
            }
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: UALogEntry.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: UALogEntry.java */
    private static class c extends cb<am> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, am amVar) throws bb {
            bx bxVar = (bx) brVar;
            amVar.f58a.b(bxVar);
            amVar.f59b.b(bxVar);
            amVar.c.b(bxVar);
            amVar.d.b(bxVar);
            BitSet bitSet = new BitSet();
            if (amVar.a()) {
                bitSet.set(0);
            }
            if (amVar.d()) {
                bitSet.set(1);
            }
            if (amVar.f()) {
                bitSet.set(2);
            }
            if (amVar.g()) {
                bitSet.set(3);
            }
            if (amVar.h()) {
                bitSet.set(4);
            }
            if (amVar.i()) {
                bitSet.set(5);
            }
            if (amVar.j()) {
                bitSet.set(6);
            }
            bxVar.a(bitSet, 7);
            if (amVar.a()) {
                amVar.e.b(bxVar);
            }
            if (amVar.d()) {
                bxVar.a(amVar.f.size());
                Iterator<ab> it = amVar.f.iterator();
                while (it.hasNext()) {
                    it.next().b(bxVar);
                }
            }
            if (amVar.f()) {
                bxVar.a(amVar.g.size());
                Iterator<ak> it2 = amVar.g.iterator();
                while (it2.hasNext()) {
                    it2.next().b(bxVar);
                }
            }
            if (amVar.g()) {
                amVar.h.b(bxVar);
            }
            if (amVar.h()) {
                amVar.i.b(bxVar);
            }
            if (amVar.i()) {
                amVar.j.b(bxVar);
            }
            if (amVar.j()) {
                amVar.k.b(bxVar);
            }
        }

        @Override // b.a.by
        public void b(br brVar, am amVar) throws bb {
            bx bxVar = (bx) brVar;
            amVar.f58a = new p();
            amVar.f58a.a(bxVar);
            amVar.a(true);
            amVar.f59b = new o();
            amVar.f59b.a(bxVar);
            amVar.b(true);
            amVar.c = new r();
            amVar.c.a(bxVar);
            amVar.c(true);
            amVar.d = new ae();
            amVar.d.a(bxVar);
            amVar.d(true);
            BitSet b2 = bxVar.b(7);
            if (b2.get(0)) {
                amVar.e = new m();
                amVar.e.a(bxVar);
                amVar.e(true);
            }
            if (b2.get(1)) {
                bp bpVar = new bp((byte) 12, bxVar.s());
                amVar.f = new ArrayList(bpVar.f108b);
                for (int i = 0; i < bpVar.f108b; i++) {
                    ab abVar = new ab();
                    abVar.a(bxVar);
                    amVar.f.add(abVar);
                }
                amVar.f(true);
            }
            if (b2.get(2)) {
                bp bpVar2 = new bp((byte) 12, bxVar.s());
                amVar.g = new ArrayList(bpVar2.f108b);
                for (int i2 = 0; i2 < bpVar2.f108b; i2++) {
                    ak akVar = new ak();
                    akVar.a(bxVar);
                    amVar.g.add(akVar);
                }
                amVar.g(true);
            }
            if (b2.get(3)) {
                amVar.h = new z();
                amVar.h.a(bxVar);
                amVar.h(true);
            }
            if (b2.get(4)) {
                amVar.i = new x();
                amVar.i.a(bxVar);
                amVar.i(true);
            }
            if (b2.get(5)) {
                amVar.j = new n();
                amVar.j.a(bxVar);
                amVar.j(true);
            }
            if (b2.get(6)) {
                amVar.k = new q();
                amVar.k.a(bxVar);
                amVar.k(true);
            }
        }
    }
}
