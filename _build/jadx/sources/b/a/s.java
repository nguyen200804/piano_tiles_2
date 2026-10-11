package b.a;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: Error.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class s implements ay<s, e>, Serializable, Cloneable {
    public static final Map<e, bg> d;
    private static final bw e = new bw("Error");
    private static final bo f = new bo("ts", (byte) 10, 1);
    private static final bo g = new bo("context", (byte) 11, 2);
    private static final bo h = new bo("source", (byte) 8, 3);
    private static final Map<Class<? extends by>, bz> i = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public long f185a;

    /* renamed from: b, reason: collision with root package name */
    public String f186b;
    public t c;
    private byte j = 0;
    private e[] k = {e.SOURCE};

    static {
        i.put(ca.class, new b());
        i.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.TS, (e) new bg("ts", (byte) 1, new bh((byte) 10)));
        enumMap.put((EnumMap) e.CONTEXT, (e) new bg("context", (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.SOURCE, (e) new bg("source", (byte) 2, new bf((byte) 16, t.class)));
        d = Collections.unmodifiableMap(enumMap);
        bg.a(s.class, d);
    }

    /* compiled from: Error.java */
    public enum e implements bc {
        TS(1, "ts"),
        CONTEXT(2, "context"),
        SOURCE(3, "source");

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

    public s a(long j) {
        this.f185a = j;
        a(true);
        return this;
    }

    public boolean a() {
        return aw.a(this.j, 0);
    }

    public void a(boolean z) {
        this.j = aw.a(this.j, 0, z);
    }

    public s a(String str) {
        this.f186b = str;
        return this;
    }

    public void b(boolean z) {
        if (!z) {
            this.f186b = null;
        }
    }

    public s a(t tVar) {
        this.c = tVar;
        return this;
    }

    public boolean b() {
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
        StringBuilder sb = new StringBuilder("Error(");
        sb.append("ts:");
        sb.append(this.f185a);
        sb.append(", ");
        sb.append("context:");
        if (this.f186b == null) {
            sb.append("null");
        } else {
            sb.append(this.f186b);
        }
        if (b()) {
            sb.append(", ");
            sb.append("source:");
            if (this.c == null) {
                sb.append("null");
            } else {
                sb.append(this.c);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void c() throws bb {
        if (this.f186b == null) {
            throw new bs("Required field 'context' was not present! Struct: " + toString());
        }
    }

    /* compiled from: Error.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: Error.java */
    private static class a extends ca<s> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, s sVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 10) {
                                sVar.f185a = brVar.t();
                                sVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 11) {
                                sVar.f186b = brVar.v();
                                sVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 8) {
                                sVar.c = t.a(brVar.s());
                                sVar.c(true);
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
                    if (!sVar.a()) {
                        throw new bs("Required field 'ts' was not found in serialized data! Struct: " + toString());
                    }
                    sVar.c();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, s sVar) throws bb {
            sVar.c();
            brVar.a(s.e);
            brVar.a(s.f);
            brVar.a(sVar.f185a);
            brVar.b();
            if (sVar.f186b != null) {
                brVar.a(s.g);
                brVar.a(sVar.f186b);
                brVar.b();
            }
            if (sVar.c != null && sVar.b()) {
                brVar.a(s.h);
                brVar.a(sVar.c.a());
                brVar.b();
            }
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: Error.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: Error.java */
    private static class c extends cb<s> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, s sVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(sVar.f185a);
            bxVar.a(sVar.f186b);
            BitSet bitSet = new BitSet();
            if (sVar.b()) {
                bitSet.set(0);
            }
            bxVar.a(bitSet, 1);
            if (sVar.b()) {
                bxVar.a(sVar.c.a());
            }
        }

        @Override // b.a.by
        public void b(br brVar, s sVar) throws bb {
            bx bxVar = (bx) brVar;
            sVar.f185a = bxVar.t();
            sVar.a(true);
            sVar.f186b = bxVar.v();
            sVar.b(true);
            if (bxVar.b(1).get(0)) {
                sVar.c = t.a(bxVar.s());
                sVar.c(true);
            }
        }
    }
}
