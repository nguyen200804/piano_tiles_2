package b.a;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: ControlPolicy.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class q implements ay<q, e>, Serializable, Cloneable {

    /* renamed from: b, reason: collision with root package name */
    public static final Map<e, bg> f177b;
    private static final bw c = new bw("ControlPolicy");
    private static final bo d = new bo("latent", (byte) 12, 1);
    private static final Map<Class<? extends by>, bz> e = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public ac f178a;
    private e[] f = {e.LATENT};

    static {
        e.put(ca.class, new b());
        e.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.LATENT, (e) new bg("latent", (byte) 2, new bk((byte) 12, ac.class)));
        f177b = Collections.unmodifiableMap(enumMap);
        bg.a(q.class, f177b);
    }

    /* compiled from: ControlPolicy.java */
    public enum e implements bc {
        LATENT(1, "latent");


        /* renamed from: b, reason: collision with root package name */
        private static final Map<String, e> f180b = new HashMap();
        private final short c;
        private final String d;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f180b.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.c = s;
            this.d = str;
        }

        @Override // b.a.bc
        public short a() {
            return this.c;
        }

        public String b() {
            return this.d;
        }
    }

    public q a(ac acVar) {
        this.f178a = acVar;
        return this;
    }

    public boolean a() {
        return this.f178a != null;
    }

    public void a(boolean z) {
        if (!z) {
            this.f178a = null;
        }
    }

    @Override // b.a.ay
    public void a(br brVar) throws bb {
        e.get(brVar.y()).b().b(brVar, this);
    }

    @Override // b.a.ay
    public void b(br brVar) throws bb {
        e.get(brVar.y()).b().a(brVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ControlPolicy(");
        if (a()) {
            sb.append("latent:");
            if (this.f178a == null) {
                sb.append("null");
            } else {
                sb.append(this.f178a);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void b() throws bb {
        if (this.f178a != null) {
            this.f178a.c();
        }
    }

    /* compiled from: ControlPolicy.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: ControlPolicy.java */
    private static class a extends ca<q> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, q qVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 12) {
                                qVar.f178a = new ac();
                                qVar.f178a.a(brVar);
                                qVar.a(true);
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
                    qVar.b();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, q qVar) throws bb {
            qVar.b();
            brVar.a(q.c);
            if (qVar.f178a != null && qVar.a()) {
                brVar.a(q.d);
                qVar.f178a.b(brVar);
                brVar.b();
            }
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: ControlPolicy.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: ControlPolicy.java */
    private static class c extends cb<q> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, q qVar) throws bb {
            bx bxVar = (bx) brVar;
            BitSet bitSet = new BitSet();
            if (qVar.a()) {
                bitSet.set(0);
            }
            bxVar.a(bitSet, 1);
            if (qVar.a()) {
                qVar.f178a.b(bxVar);
            }
        }

        @Override // b.a.by
        public void b(br brVar, q qVar) throws bb {
            bx bxVar = (bx) brVar;
            if (bxVar.b(1).get(0)) {
                qVar.f178a = new ac();
                qVar.f178a.a(bxVar);
                qVar.a(true);
            }
        }
    }
}
