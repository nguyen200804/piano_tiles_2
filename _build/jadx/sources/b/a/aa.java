package b.a;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: ImprintValue.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class aa implements ay<aa, e>, Serializable, Cloneable {
    public static final Map<e, bg> d;
    private static final bw e = new bw("ImprintValue");
    private static final bo f = new bo("value", (byte) 11, 1);
    private static final bo g = new bo("ts", (byte) 10, 2);
    private static final bo h = new bo("guid", (byte) 11, 3);
    private static final Map<Class<? extends by>, bz> i = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public String f12a;

    /* renamed from: b, reason: collision with root package name */
    public long f13b;
    public String c;
    private byte j = 0;
    private e[] k = {e.VALUE};

    static {
        i.put(ca.class, new b());
        i.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.VALUE, (e) new bg("value", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.TS, (e) new bg("ts", (byte) 1, new bh((byte) 10)));
        enumMap.put((EnumMap) e.GUID, (e) new bg("guid", (byte) 1, new bh((byte) 11)));
        d = Collections.unmodifiableMap(enumMap);
        bg.a(aa.class, d);
    }

    /* compiled from: ImprintValue.java */
    public enum e implements bc {
        VALUE(1, "value"),
        TS(2, "ts"),
        GUID(3, "guid");

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

    public String a() {
        return this.f12a;
    }

    public boolean b() {
        return this.f12a != null;
    }

    public void a(boolean z) {
        if (!z) {
            this.f12a = null;
        }
    }

    public long c() {
        return this.f13b;
    }

    public boolean d() {
        return aw.a(this.j, 0);
    }

    public void b(boolean z) {
        this.j = aw.a(this.j, 0, z);
    }

    public String e() {
        return this.c;
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
        StringBuilder sb = new StringBuilder("ImprintValue(");
        boolean z = true;
        if (b()) {
            sb.append("value:");
            if (this.f12a == null) {
                sb.append("null");
            } else {
                sb.append(this.f12a);
            }
            z = false;
        }
        if (!z) {
            sb.append(", ");
        }
        sb.append("ts:");
        sb.append(this.f13b);
        sb.append(", ");
        sb.append("guid:");
        if (this.c == null) {
            sb.append("null");
        } else {
            sb.append(this.c);
        }
        sb.append(")");
        return sb.toString();
    }

    public void f() throws bb {
        if (this.c == null) {
            throw new bs("Required field 'guid' was not present! Struct: " + toString());
        }
    }

    /* compiled from: ImprintValue.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: ImprintValue.java */
    private static class a extends ca<aa> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, aa aaVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 11) {
                                aaVar.f12a = brVar.v();
                                aaVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 10) {
                                aaVar.f13b = brVar.t();
                                aaVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 11) {
                                aaVar.c = brVar.v();
                                aaVar.c(true);
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
                    if (!aaVar.d()) {
                        throw new bs("Required field 'ts' was not found in serialized data! Struct: " + toString());
                    }
                    aaVar.f();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, aa aaVar) throws bb {
            aaVar.f();
            brVar.a(aa.e);
            if (aaVar.f12a != null && aaVar.b()) {
                brVar.a(aa.f);
                brVar.a(aaVar.f12a);
                brVar.b();
            }
            brVar.a(aa.g);
            brVar.a(aaVar.f13b);
            brVar.b();
            if (aaVar.c != null) {
                brVar.a(aa.h);
                brVar.a(aaVar.c);
                brVar.b();
            }
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: ImprintValue.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: ImprintValue.java */
    private static class c extends cb<aa> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, aa aaVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(aaVar.f13b);
            bxVar.a(aaVar.c);
            BitSet bitSet = new BitSet();
            if (aaVar.b()) {
                bitSet.set(0);
            }
            bxVar.a(bitSet, 1);
            if (aaVar.b()) {
                bxVar.a(aaVar.f12a);
            }
        }

        @Override // b.a.by
        public void b(br brVar, aa aaVar) throws bb {
            bx bxVar = (bx) brVar;
            aaVar.f13b = bxVar.t();
            aaVar.b(true);
            aaVar.c = bxVar.v();
            aaVar.c(true);
            if (bxVar.b(1).get(0)) {
                aaVar.f12a = bxVar.v();
                aaVar.a(true);
            }
        }
    }
}
