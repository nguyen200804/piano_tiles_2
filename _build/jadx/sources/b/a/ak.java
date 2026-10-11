package b.a;

import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.mobileads.VastIconXmlManager;
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

/* compiled from: Session.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ak implements ay<ak, e>, Serializable, Cloneable {
    public static final Map<e, bg> h;
    private static final bw i = new bw("Session");
    private static final bo j = new bo(FacebookAdapter.KEY_ID, (byte) 11, 1);
    private static final bo k = new bo("start_time", (byte) 10, 2);
    private static final bo l = new bo("end_time", (byte) 10, 3);
    private static final bo m = new bo(VastIconXmlManager.DURATION, (byte) 10, 4);
    private static final bo n = new bo("pages", (byte) 15, 5);
    private static final bo o = new bo("locations", (byte) 15, 6);
    private static final bo p = new bo("traffic", (byte) 12, 7);
    private static final Map<Class<? extends by>, bz> q = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public String f50a;

    /* renamed from: b, reason: collision with root package name */
    public long f51b;
    public long c;
    public long d;
    public List<af> e;
    public List<ad> f;
    public al g;
    private byte r = 0;
    private e[] s = {e.PAGES, e.LOCATIONS, e.TRAFFIC};

    static {
        q.put(ca.class, new b());
        q.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.ID, (e) new bg(FacebookAdapter.KEY_ID, (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.START_TIME, (e) new bg("start_time", (byte) 1, new bh((byte) 10)));
        enumMap.put((EnumMap) e.END_TIME, (e) new bg("end_time", (byte) 1, new bh((byte) 10)));
        enumMap.put((EnumMap) e.DURATION, (e) new bg(VastIconXmlManager.DURATION, (byte) 1, new bh((byte) 10)));
        enumMap.put((EnumMap) e.PAGES, (e) new bg("pages", (byte) 2, new bi((byte) 15, new bk((byte) 12, af.class))));
        enumMap.put((EnumMap) e.LOCATIONS, (e) new bg("locations", (byte) 2, new bi((byte) 15, new bk((byte) 12, ad.class))));
        enumMap.put((EnumMap) e.TRAFFIC, (e) new bg("traffic", (byte) 2, new bk((byte) 12, al.class)));
        h = Collections.unmodifiableMap(enumMap);
        bg.a(ak.class, h);
    }

    /* compiled from: Session.java */
    public enum e implements bc {
        ID(1, FacebookAdapter.KEY_ID),
        START_TIME(2, "start_time"),
        END_TIME(3, "end_time"),
        DURATION(4, VastIconXmlManager.DURATION),
        PAGES(5, "pages"),
        LOCATIONS(6, "locations"),
        TRAFFIC(7, "traffic");

        private static final Map<String, e> h = new HashMap();
        private final short i;
        private final String j;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                h.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.i = s;
            this.j = str;
        }

        @Override // b.a.bc
        public short a() {
            return this.i;
        }

        public String b() {
            return this.j;
        }
    }

    public ak a(String str) {
        this.f50a = str;
        return this;
    }

    public void a(boolean z) {
        if (!z) {
            this.f50a = null;
        }
    }

    public ak a(long j2) {
        this.f51b = j2;
        b(true);
        return this;
    }

    public boolean a() {
        return aw.a(this.r, 0);
    }

    public void b(boolean z) {
        this.r = aw.a(this.r, 0, z);
    }

    public ak b(long j2) {
        this.c = j2;
        c(true);
        return this;
    }

    public boolean b() {
        return aw.a(this.r, 1);
    }

    public void c(boolean z) {
        this.r = aw.a(this.r, 1, z);
    }

    public ak c(long j2) {
        this.d = j2;
        d(true);
        return this;
    }

    public boolean c() {
        return aw.a(this.r, 2);
    }

    public void d(boolean z) {
        this.r = aw.a(this.r, 2, z);
    }

    public int d() {
        if (this.e == null) {
            return 0;
        }
        return this.e.size();
    }

    public ak a(List<af> list) {
        this.e = list;
        return this;
    }

    public boolean e() {
        return this.e != null;
    }

    public void e(boolean z) {
        if (!z) {
            this.e = null;
        }
    }

    public void a(ad adVar) {
        if (this.f == null) {
            this.f = new ArrayList();
        }
        this.f.add(adVar);
    }

    public ak b(List<ad> list) {
        this.f = list;
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

    public ak a(al alVar) {
        this.g = alVar;
        return this;
    }

    public boolean g() {
        return this.g != null;
    }

    public void g(boolean z) {
        if (!z) {
            this.g = null;
        }
    }

    @Override // b.a.ay
    public void a(br brVar) throws bb {
        q.get(brVar.y()).b().b(brVar, this);
    }

    @Override // b.a.ay
    public void b(br brVar) throws bb {
        q.get(brVar.y()).b().a(brVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Session(");
        sb.append("id:");
        if (this.f50a == null) {
            sb.append("null");
        } else {
            sb.append(this.f50a);
        }
        sb.append(", ");
        sb.append("start_time:");
        sb.append(this.f51b);
        sb.append(", ");
        sb.append("end_time:");
        sb.append(this.c);
        sb.append(", ");
        sb.append("duration:");
        sb.append(this.d);
        if (e()) {
            sb.append(", ");
            sb.append("pages:");
            if (this.e == null) {
                sb.append("null");
            } else {
                sb.append(this.e);
            }
        }
        if (f()) {
            sb.append(", ");
            sb.append("locations:");
            if (this.f == null) {
                sb.append("null");
            } else {
                sb.append(this.f);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("traffic:");
            if (this.g == null) {
                sb.append("null");
            } else {
                sb.append(this.g);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void h() throws bb {
        if (this.f50a == null) {
            throw new bs("Required field 'id' was not present! Struct: " + toString());
        }
        if (this.g != null) {
            this.g.c();
        }
    }

    /* compiled from: Session.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: Session.java */
    private static class a extends ca<ak> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, ak akVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 11) {
                                akVar.f50a = brVar.v();
                                akVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 10) {
                                akVar.f51b = brVar.t();
                                akVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 10) {
                                akVar.c = brVar.t();
                                akVar.c(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 4:
                            if (h.f106b == 10) {
                                akVar.d = brVar.t();
                                akVar.d(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 5:
                            if (h.f106b == 15) {
                                bp l = brVar.l();
                                akVar.e = new ArrayList(l.f108b);
                                for (int i = 0; i < l.f108b; i++) {
                                    af afVar = new af();
                                    afVar.a(brVar);
                                    akVar.e.add(afVar);
                                }
                                brVar.m();
                                akVar.e(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 6:
                            if (h.f106b == 15) {
                                bp l2 = brVar.l();
                                akVar.f = new ArrayList(l2.f108b);
                                for (int i2 = 0; i2 < l2.f108b; i2++) {
                                    ad adVar = new ad();
                                    adVar.a(brVar);
                                    akVar.f.add(adVar);
                                }
                                brVar.m();
                                akVar.f(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 7:
                            if (h.f106b == 12) {
                                akVar.g = new al();
                                akVar.g.a(brVar);
                                akVar.g(true);
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
                    if (!akVar.a()) {
                        throw new bs("Required field 'start_time' was not found in serialized data! Struct: " + toString());
                    }
                    if (!akVar.b()) {
                        throw new bs("Required field 'end_time' was not found in serialized data! Struct: " + toString());
                    }
                    if (!akVar.c()) {
                        throw new bs("Required field 'duration' was not found in serialized data! Struct: " + toString());
                    }
                    akVar.h();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, ak akVar) throws bb {
            akVar.h();
            brVar.a(ak.i);
            if (akVar.f50a != null) {
                brVar.a(ak.j);
                brVar.a(akVar.f50a);
                brVar.b();
            }
            brVar.a(ak.k);
            brVar.a(akVar.f51b);
            brVar.b();
            brVar.a(ak.l);
            brVar.a(akVar.c);
            brVar.b();
            brVar.a(ak.m);
            brVar.a(akVar.d);
            brVar.b();
            if (akVar.e != null && akVar.e()) {
                brVar.a(ak.n);
                brVar.a(new bp((byte) 12, akVar.e.size()));
                Iterator<af> it = akVar.e.iterator();
                while (it.hasNext()) {
                    it.next().b(brVar);
                }
                brVar.e();
                brVar.b();
            }
            if (akVar.f != null && akVar.f()) {
                brVar.a(ak.o);
                brVar.a(new bp((byte) 12, akVar.f.size()));
                Iterator<ad> it2 = akVar.f.iterator();
                while (it2.hasNext()) {
                    it2.next().b(brVar);
                }
                brVar.e();
                brVar.b();
            }
            if (akVar.g != null && akVar.g()) {
                brVar.a(ak.p);
                akVar.g.b(brVar);
                brVar.b();
            }
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: Session.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: Session.java */
    private static class c extends cb<ak> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, ak akVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(akVar.f50a);
            bxVar.a(akVar.f51b);
            bxVar.a(akVar.c);
            bxVar.a(akVar.d);
            BitSet bitSet = new BitSet();
            if (akVar.e()) {
                bitSet.set(0);
            }
            if (akVar.f()) {
                bitSet.set(1);
            }
            if (akVar.g()) {
                bitSet.set(2);
            }
            bxVar.a(bitSet, 3);
            if (akVar.e()) {
                bxVar.a(akVar.e.size());
                Iterator<af> it = akVar.e.iterator();
                while (it.hasNext()) {
                    it.next().b(bxVar);
                }
            }
            if (akVar.f()) {
                bxVar.a(akVar.f.size());
                Iterator<ad> it2 = akVar.f.iterator();
                while (it2.hasNext()) {
                    it2.next().b(bxVar);
                }
            }
            if (akVar.g()) {
                akVar.g.b(bxVar);
            }
        }

        @Override // b.a.by
        public void b(br brVar, ak akVar) throws bb {
            bx bxVar = (bx) brVar;
            akVar.f50a = bxVar.v();
            akVar.a(true);
            akVar.f51b = bxVar.t();
            akVar.b(true);
            akVar.c = bxVar.t();
            akVar.c(true);
            akVar.d = bxVar.t();
            akVar.d(true);
            BitSet b2 = bxVar.b(3);
            if (b2.get(0)) {
                bp bpVar = new bp((byte) 12, bxVar.s());
                akVar.e = new ArrayList(bpVar.f108b);
                for (int i = 0; i < bpVar.f108b; i++) {
                    af afVar = new af();
                    afVar.a(bxVar);
                    akVar.e.add(afVar);
                }
                akVar.e(true);
            }
            if (b2.get(1)) {
                bp bpVar2 = new bp((byte) 12, bxVar.s());
                akVar.f = new ArrayList(bpVar2.f108b);
                for (int i2 = 0; i2 < bpVar2.f108b; i2++) {
                    ad adVar = new ad();
                    adVar.a(bxVar);
                    akVar.f.add(adVar);
                }
                akVar.f(true);
            }
            if (b2.get(2)) {
                akVar.g = new al();
                akVar.g.a(bxVar);
                akVar.g(true);
            }
        }
    }
}
