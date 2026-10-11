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

/* compiled from: IdTracking.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class x implements ay<x, e>, Serializable, Cloneable {
    public static final Map<e, bg> d;
    private static final bw e = new bw("IdTracking");
    private static final bo f = new bo("snapshots", (byte) 13, 1);
    private static final bo g = new bo("journals", (byte) 15, 2);
    private static final bo h = new bo("checksum", (byte) 11, 3);
    private static final Map<Class<? extends by>, bz> i = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public Map<String, w> f203a;

    /* renamed from: b, reason: collision with root package name */
    public List<v> f204b;
    public String c;
    private e[] j = {e.JOURNALS, e.CHECKSUM};

    static {
        i.put(ca.class, new b());
        i.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.SNAPSHOTS, (e) new bg("snapshots", (byte) 1, new bj((byte) 13, new bh((byte) 11), new bk((byte) 12, w.class))));
        enumMap.put((EnumMap) e.JOURNALS, (e) new bg("journals", (byte) 2, new bi((byte) 15, new bk((byte) 12, v.class))));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new bg("checksum", (byte) 2, new bh((byte) 11)));
        d = Collections.unmodifiableMap(enumMap);
        bg.a(x.class, d);
    }

    /* compiled from: IdTracking.java */
    public enum e implements bc {
        SNAPSHOTS(1, "snapshots"),
        JOURNALS(2, "journals"),
        CHECKSUM(3, "checksum");

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

    public Map<String, w> a() {
        return this.f203a;
    }

    public x a(Map<String, w> map) {
        this.f203a = map;
        return this;
    }

    public void a(boolean z) {
        if (!z) {
            this.f203a = null;
        }
    }

    public List<v> b() {
        return this.f204b;
    }

    public x a(List<v> list) {
        this.f204b = list;
        return this;
    }

    public boolean c() {
        return this.f204b != null;
    }

    public void b(boolean z) {
        if (!z) {
            this.f204b = null;
        }
    }

    public boolean d() {
        return this.c != null;
    }

    public void c(boolean z) {
        if (!z) {
            this.c = null;
        }
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
        StringBuilder sb = new StringBuilder("IdTracking(");
        sb.append("snapshots:");
        if (this.f203a == null) {
            sb.append("null");
        } else {
            sb.append(this.f203a);
        }
        if (c()) {
            sb.append(", ");
            sb.append("journals:");
            if (this.f204b == null) {
                sb.append("null");
            } else {
                sb.append(this.f204b);
            }
        }
        if (d()) {
            sb.append(", ");
            sb.append("checksum:");
            if (this.c == null) {
                sb.append("null");
            } else {
                sb.append(this.c);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void e() throws bb {
        if (this.f203a == null) {
            throw new bs("Required field 'snapshots' was not present! Struct: " + toString());
        }
    }

    /* compiled from: IdTracking.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: IdTracking.java */
    private static class a extends ca<x> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, x xVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 13) {
                                bq j = brVar.j();
                                xVar.f203a = new HashMap(j.c * 2);
                                for (int i = 0; i < j.c; i++) {
                                    String v = brVar.v();
                                    w wVar = new w();
                                    wVar.a(brVar);
                                    xVar.f203a.put(v, wVar);
                                }
                                brVar.k();
                                xVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 15) {
                                bp l = brVar.l();
                                xVar.f204b = new ArrayList(l.f108b);
                                for (int i2 = 0; i2 < l.f108b; i2++) {
                                    v vVar = new v();
                                    vVar.a(brVar);
                                    xVar.f204b.add(vVar);
                                }
                                brVar.m();
                                xVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 11) {
                                xVar.c = brVar.v();
                                xVar.c(true);
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
                    xVar.e();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, x xVar) throws bb {
            xVar.e();
            brVar.a(x.e);
            if (xVar.f203a != null) {
                brVar.a(x.f);
                brVar.a(new bq((byte) 11, (byte) 12, xVar.f203a.size()));
                for (Map.Entry<String, w> entry : xVar.f203a.entrySet()) {
                    brVar.a(entry.getKey());
                    entry.getValue().b(brVar);
                }
                brVar.d();
                brVar.b();
            }
            if (xVar.f204b != null && xVar.c()) {
                brVar.a(x.g);
                brVar.a(new bp((byte) 12, xVar.f204b.size()));
                Iterator<v> it = xVar.f204b.iterator();
                while (it.hasNext()) {
                    it.next().b(brVar);
                }
                brVar.e();
                brVar.b();
            }
            if (xVar.c != null && xVar.d()) {
                brVar.a(x.h);
                brVar.a(xVar.c);
                brVar.b();
            }
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: IdTracking.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: IdTracking.java */
    private static class c extends cb<x> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, x xVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(xVar.f203a.size());
            for (Map.Entry<String, w> entry : xVar.f203a.entrySet()) {
                bxVar.a(entry.getKey());
                entry.getValue().b(bxVar);
            }
            BitSet bitSet = new BitSet();
            if (xVar.c()) {
                bitSet.set(0);
            }
            if (xVar.d()) {
                bitSet.set(1);
            }
            bxVar.a(bitSet, 2);
            if (xVar.c()) {
                bxVar.a(xVar.f204b.size());
                Iterator<v> it = xVar.f204b.iterator();
                while (it.hasNext()) {
                    it.next().b(bxVar);
                }
            }
            if (xVar.d()) {
                bxVar.a(xVar.c);
            }
        }

        @Override // b.a.by
        public void b(br brVar, x xVar) throws bb {
            bx bxVar = (bx) brVar;
            bq bqVar = new bq((byte) 11, (byte) 12, bxVar.s());
            xVar.f203a = new HashMap(bqVar.c * 2);
            for (int i = 0; i < bqVar.c; i++) {
                String v = bxVar.v();
                w wVar = new w();
                wVar.a(bxVar);
                xVar.f203a.put(v, wVar);
            }
            xVar.a(true);
            BitSet b2 = bxVar.b(2);
            if (b2.get(0)) {
                bp bpVar = new bp((byte) 12, bxVar.s());
                xVar.f204b = new ArrayList(bpVar.f108b);
                for (int i2 = 0; i2 < bpVar.f108b; i2++) {
                    v vVar = new v();
                    vVar.a(bxVar);
                    xVar.f204b.add(vVar);
                }
                xVar.b(true);
            }
            if (b2.get(1)) {
                xVar.c = bxVar.v();
                xVar.c(true);
            }
        }
    }
}
