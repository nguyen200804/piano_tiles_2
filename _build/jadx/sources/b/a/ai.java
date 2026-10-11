package b.a;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: Response.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ai implements ay<ai, e>, Serializable, Cloneable {
    public static final Map<e, bg> d;
    private static final bw e = new bw("Response");
    private static final bo f = new bo("resp_code", (byte) 8, 1);
    private static final bo g = new bo("msg", (byte) 11, 2);
    private static final bo h = new bo("imprint", (byte) 12, 3);
    private static final Map<Class<? extends by>, bz> i = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public int f44a;

    /* renamed from: b, reason: collision with root package name */
    public String f45b;
    public z c;
    private byte j = 0;
    private e[] k = {e.MSG, e.IMPRINT};

    static {
        i.put(ca.class, new b());
        i.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.RESP_CODE, (e) new bg("resp_code", (byte) 1, new bh((byte) 8)));
        enumMap.put((EnumMap) e.MSG, (e) new bg("msg", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.IMPRINT, (e) new bg("imprint", (byte) 2, new bk((byte) 12, z.class)));
        d = Collections.unmodifiableMap(enumMap);
        bg.a(ai.class, d);
    }

    /* compiled from: Response.java */
    public enum e implements bc {
        RESP_CODE(1, "resp_code"),
        MSG(2, "msg"),
        IMPRINT(3, "imprint");

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

    public boolean a() {
        return aw.a(this.j, 0);
    }

    public void a(boolean z) {
        this.j = aw.a(this.j, 0, z);
    }

    public String b() {
        return this.f45b;
    }

    public boolean c() {
        return this.f45b != null;
    }

    public void b(boolean z) {
        if (!z) {
            this.f45b = null;
        }
    }

    public z d() {
        return this.c;
    }

    public boolean e() {
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
        StringBuilder sb = new StringBuilder("Response(");
        sb.append("resp_code:");
        sb.append(this.f44a);
        if (c()) {
            sb.append(", ");
            sb.append("msg:");
            if (this.f45b == null) {
                sb.append("null");
            } else {
                sb.append(this.f45b);
            }
        }
        if (e()) {
            sb.append(", ");
            sb.append("imprint:");
            if (this.c == null) {
                sb.append("null");
            } else {
                sb.append(this.c);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void f() throws bb {
        if (this.c != null) {
            this.c.f();
        }
    }

    /* compiled from: Response.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: Response.java */
    private static class a extends ca<ai> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, ai aiVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 8) {
                                aiVar.f44a = brVar.s();
                                aiVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 11) {
                                aiVar.f45b = brVar.v();
                                aiVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 12) {
                                aiVar.c = new z();
                                aiVar.c.a(brVar);
                                aiVar.c(true);
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
                    if (!aiVar.a()) {
                        throw new bs("Required field 'resp_code' was not found in serialized data! Struct: " + toString());
                    }
                    aiVar.f();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, ai aiVar) throws bb {
            aiVar.f();
            brVar.a(ai.e);
            brVar.a(ai.f);
            brVar.a(aiVar.f44a);
            brVar.b();
            if (aiVar.f45b != null && aiVar.c()) {
                brVar.a(ai.g);
                brVar.a(aiVar.f45b);
                brVar.b();
            }
            if (aiVar.c != null && aiVar.e()) {
                brVar.a(ai.h);
                aiVar.c.b(brVar);
                brVar.b();
            }
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: Response.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: Response.java */
    private static class c extends cb<ai> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, ai aiVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(aiVar.f44a);
            BitSet bitSet = new BitSet();
            if (aiVar.c()) {
                bitSet.set(0);
            }
            if (aiVar.e()) {
                bitSet.set(1);
            }
            bxVar.a(bitSet, 2);
            if (aiVar.c()) {
                bxVar.a(aiVar.f45b);
            }
            if (aiVar.e()) {
                aiVar.c.b(bxVar);
            }
        }

        @Override // b.a.by
        public void b(br brVar, ai aiVar) throws bb {
            bx bxVar = (bx) brVar;
            aiVar.f44a = bxVar.s();
            aiVar.a(true);
            BitSet b2 = bxVar.b(2);
            if (b2.get(0)) {
                aiVar.f45b = bxVar.v();
                aiVar.b(true);
            }
            if (b2.get(1)) {
                aiVar.c = new z();
                aiVar.c.a(bxVar);
                aiVar.c(true);
            }
        }
    }
}
