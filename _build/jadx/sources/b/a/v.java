package b.a;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: IdJournal.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class v implements ay<v, e>, Serializable, Cloneable {
    public static final Map<e, bg> e;
    private static final bw f = new bw("IdJournal");
    private static final bo g = new bo("domain", (byte) 11, 1);
    private static final bo h = new bo("old_id", (byte) 11, 2);
    private static final bo i = new bo("new_id", (byte) 11, 3);
    private static final bo j = new bo("ts", (byte) 10, 4);
    private static final Map<Class<? extends by>, bz> k = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public String f195a;

    /* renamed from: b, reason: collision with root package name */
    public String f196b;
    public String c;
    public long d;
    private byte l = 0;
    private e[] m = {e.OLD_ID};

    static {
        k.put(ca.class, new b());
        k.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.DOMAIN, (e) new bg("domain", (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.OLD_ID, (e) new bg("old_id", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.NEW_ID, (e) new bg("new_id", (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.TS, (e) new bg("ts", (byte) 1, new bh((byte) 10)));
        e = Collections.unmodifiableMap(enumMap);
        bg.a(v.class, e);
    }

    /* compiled from: IdJournal.java */
    public enum e implements bc {
        DOMAIN(1, "domain"),
        OLD_ID(2, "old_id"),
        NEW_ID(3, "new_id"),
        TS(4, "ts");

        private static final Map<String, e> e = new HashMap();
        private final short f;
        private final String g;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                e.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.f = s;
            this.g = str;
        }

        @Override // b.a.bc
        public short a() {
            return this.f;
        }

        public String b() {
            return this.g;
        }
    }

    public v a(String str) {
        this.f195a = str;
        return this;
    }

    public void a(boolean z) {
        if (!z) {
            this.f195a = null;
        }
    }

    public v b(String str) {
        this.f196b = str;
        return this;
    }

    public boolean a() {
        return this.f196b != null;
    }

    public void b(boolean z) {
        if (!z) {
            this.f196b = null;
        }
    }

    public v c(String str) {
        this.c = str;
        return this;
    }

    public void c(boolean z) {
        if (!z) {
            this.c = null;
        }
    }

    public v a(long j2) {
        this.d = j2;
        d(true);
        return this;
    }

    public boolean b() {
        return aw.a(this.l, 0);
    }

    public void d(boolean z) {
        this.l = aw.a(this.l, 0, z);
    }

    @Override // b.a.ay
    public void a(br brVar) throws bb {
        k.get(brVar.y()).b().b(brVar, this);
    }

    @Override // b.a.ay
    public void b(br brVar) throws bb {
        k.get(brVar.y()).b().a(brVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdJournal(");
        sb.append("domain:");
        if (this.f195a == null) {
            sb.append("null");
        } else {
            sb.append(this.f195a);
        }
        if (a()) {
            sb.append(", ");
            sb.append("old_id:");
            if (this.f196b == null) {
                sb.append("null");
            } else {
                sb.append(this.f196b);
            }
        }
        sb.append(", ");
        sb.append("new_id:");
        if (this.c == null) {
            sb.append("null");
        } else {
            sb.append(this.c);
        }
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.d);
        sb.append(")");
        return sb.toString();
    }

    public void c() throws bb {
        if (this.f195a == null) {
            throw new bs("Required field 'domain' was not present! Struct: " + toString());
        }
        if (this.c == null) {
            throw new bs("Required field 'new_id' was not present! Struct: " + toString());
        }
    }

    /* compiled from: IdJournal.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: IdJournal.java */
    private static class a extends ca<v> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, v vVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 11) {
                                vVar.f195a = brVar.v();
                                vVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 11) {
                                vVar.f196b = brVar.v();
                                vVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 11) {
                                vVar.c = brVar.v();
                                vVar.c(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 4:
                            if (h.f106b == 10) {
                                vVar.d = brVar.t();
                                vVar.d(true);
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
                    if (!vVar.b()) {
                        throw new bs("Required field 'ts' was not found in serialized data! Struct: " + toString());
                    }
                    vVar.c();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, v vVar) throws bb {
            vVar.c();
            brVar.a(v.f);
            if (vVar.f195a != null) {
                brVar.a(v.g);
                brVar.a(vVar.f195a);
                brVar.b();
            }
            if (vVar.f196b != null && vVar.a()) {
                brVar.a(v.h);
                brVar.a(vVar.f196b);
                brVar.b();
            }
            if (vVar.c != null) {
                brVar.a(v.i);
                brVar.a(vVar.c);
                brVar.b();
            }
            brVar.a(v.j);
            brVar.a(vVar.d);
            brVar.b();
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: IdJournal.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: IdJournal.java */
    private static class c extends cb<v> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, v vVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(vVar.f195a);
            bxVar.a(vVar.c);
            bxVar.a(vVar.d);
            BitSet bitSet = new BitSet();
            if (vVar.a()) {
                bitSet.set(0);
            }
            bxVar.a(bitSet, 1);
            if (vVar.a()) {
                bxVar.a(vVar.f196b);
            }
        }

        @Override // b.a.by
        public void b(br brVar, v vVar) throws bb {
            bx bxVar = (bx) brVar;
            vVar.f195a = bxVar.v();
            vVar.a(true);
            vVar.c = bxVar.v();
            vVar.c(true);
            vVar.d = bxVar.t();
            vVar.d(true);
            if (bxVar.b(1).get(0)) {
                vVar.f196b = bxVar.v();
                vVar.b(true);
            }
        }
    }
}
