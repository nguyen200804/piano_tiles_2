package b.a;

import com.mopub.mobileads.VastIconXmlManager;
import com.unity3d.ads.metadata.MediationMetaData;
import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: Event.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class u implements ay<u, e>, Serializable, Cloneable {
    public static final Map<e, bg> f;
    private static final bw g = new bw("Event");
    private static final bo h = new bo(MediationMetaData.KEY_NAME, (byte) 11, 1);
    private static final bo i = new bo("properties", (byte) 13, 2);
    private static final bo j = new bo(VastIconXmlManager.DURATION, (byte) 10, 3);
    private static final bo k = new bo("acc", (byte) 8, 4);
    private static final bo l = new bo("ts", (byte) 10, 5);
    private static final Map<Class<? extends by>, bz> m = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public String f191a;

    /* renamed from: b, reason: collision with root package name */
    public Map<String, ag> f192b;
    public long c;
    public int d;
    public long e;
    private byte n = 0;
    private e[] o = {e.DURATION, e.ACC};

    static {
        m.put(ca.class, new b());
        m.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.NAME, (e) new bg(MediationMetaData.KEY_NAME, (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.PROPERTIES, (e) new bg("properties", (byte) 1, new bj((byte) 13, new bh((byte) 11), new bk((byte) 12, ag.class))));
        enumMap.put((EnumMap) e.DURATION, (e) new bg(VastIconXmlManager.DURATION, (byte) 2, new bh((byte) 10)));
        enumMap.put((EnumMap) e.ACC, (e) new bg("acc", (byte) 2, new bh((byte) 8)));
        enumMap.put((EnumMap) e.TS, (e) new bg("ts", (byte) 1, new bh((byte) 10)));
        f = Collections.unmodifiableMap(enumMap);
        bg.a(u.class, f);
    }

    /* compiled from: Event.java */
    public enum e implements bc {
        NAME(1, MediationMetaData.KEY_NAME),
        PROPERTIES(2, "properties"),
        DURATION(3, VastIconXmlManager.DURATION),
        ACC(4, "acc"),
        TS(5, "ts");

        private static final Map<String, e> f = new HashMap();
        private final short g;
        private final String h;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.g = s;
            this.h = str;
        }

        @Override // b.a.bc
        public short a() {
            return this.g;
        }

        public String b() {
            return this.h;
        }
    }

    public u a(String str) {
        this.f191a = str;
        return this;
    }

    public void a(boolean z) {
        if (!z) {
            this.f191a = null;
        }
    }

    public u a(Map<String, ag> map) {
        this.f192b = map;
        return this;
    }

    public void b(boolean z) {
        if (!z) {
            this.f192b = null;
        }
    }

    public u a(long j2) {
        this.c = j2;
        c(true);
        return this;
    }

    public boolean a() {
        return aw.a(this.n, 0);
    }

    public void c(boolean z) {
        this.n = aw.a(this.n, 0, z);
    }

    public u a(int i2) {
        this.d = i2;
        d(true);
        return this;
    }

    public boolean b() {
        return aw.a(this.n, 1);
    }

    public void d(boolean z) {
        this.n = aw.a(this.n, 1, z);
    }

    public u b(long j2) {
        this.e = j2;
        e(true);
        return this;
    }

    public boolean c() {
        return aw.a(this.n, 2);
    }

    public void e(boolean z) {
        this.n = aw.a(this.n, 2, z);
    }

    @Override // b.a.ay
    public void a(br brVar) throws bb {
        m.get(brVar.y()).b().b(brVar, this);
    }

    @Override // b.a.ay
    public void b(br brVar) throws bb {
        m.get(brVar.y()).b().a(brVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Event(");
        sb.append("name:");
        if (this.f191a == null) {
            sb.append("null");
        } else {
            sb.append(this.f191a);
        }
        sb.append(", ");
        sb.append("properties:");
        if (this.f192b == null) {
            sb.append("null");
        } else {
            sb.append(this.f192b);
        }
        if (a()) {
            sb.append(", ");
            sb.append("duration:");
            sb.append(this.c);
        }
        if (b()) {
            sb.append(", ");
            sb.append("acc:");
            sb.append(this.d);
        }
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.e);
        sb.append(")");
        return sb.toString();
    }

    public void d() throws bb {
        if (this.f191a == null) {
            throw new bs("Required field 'name' was not present! Struct: " + toString());
        }
        if (this.f192b == null) {
            throw new bs("Required field 'properties' was not present! Struct: " + toString());
        }
    }

    /* compiled from: Event.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: Event.java */
    private static class a extends ca<u> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, u uVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 11) {
                                uVar.f191a = brVar.v();
                                uVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 13) {
                                bq j = brVar.j();
                                uVar.f192b = new HashMap(j.c * 2);
                                for (int i = 0; i < j.c; i++) {
                                    String v = brVar.v();
                                    ag agVar = new ag();
                                    agVar.a(brVar);
                                    uVar.f192b.put(v, agVar);
                                }
                                brVar.k();
                                uVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 10) {
                                uVar.c = brVar.t();
                                uVar.c(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 4:
                            if (h.f106b == 8) {
                                uVar.d = brVar.s();
                                uVar.d(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 5:
                            if (h.f106b == 10) {
                                uVar.e = brVar.t();
                                uVar.e(true);
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
                    if (!uVar.c()) {
                        throw new bs("Required field 'ts' was not found in serialized data! Struct: " + toString());
                    }
                    uVar.d();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, u uVar) throws bb {
            uVar.d();
            brVar.a(u.g);
            if (uVar.f191a != null) {
                brVar.a(u.h);
                brVar.a(uVar.f191a);
                brVar.b();
            }
            if (uVar.f192b != null) {
                brVar.a(u.i);
                brVar.a(new bq((byte) 11, (byte) 12, uVar.f192b.size()));
                for (Map.Entry<String, ag> entry : uVar.f192b.entrySet()) {
                    brVar.a(entry.getKey());
                    entry.getValue().b(brVar);
                }
                brVar.d();
                brVar.b();
            }
            if (uVar.a()) {
                brVar.a(u.j);
                brVar.a(uVar.c);
                brVar.b();
            }
            if (uVar.b()) {
                brVar.a(u.k);
                brVar.a(uVar.d);
                brVar.b();
            }
            brVar.a(u.l);
            brVar.a(uVar.e);
            brVar.b();
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: Event.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: Event.java */
    private static class c extends cb<u> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, u uVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(uVar.f191a);
            bxVar.a(uVar.f192b.size());
            for (Map.Entry<String, ag> entry : uVar.f192b.entrySet()) {
                bxVar.a(entry.getKey());
                entry.getValue().b(bxVar);
            }
            bxVar.a(uVar.e);
            BitSet bitSet = new BitSet();
            if (uVar.a()) {
                bitSet.set(0);
            }
            if (uVar.b()) {
                bitSet.set(1);
            }
            bxVar.a(bitSet, 2);
            if (uVar.a()) {
                bxVar.a(uVar.c);
            }
            if (uVar.b()) {
                bxVar.a(uVar.d);
            }
        }

        @Override // b.a.by
        public void b(br brVar, u uVar) throws bb {
            bx bxVar = (bx) brVar;
            uVar.f191a = bxVar.v();
            uVar.a(true);
            bq bqVar = new bq((byte) 11, (byte) 12, bxVar.s());
            uVar.f192b = new HashMap(bqVar.c * 2);
            for (int i = 0; i < bqVar.c; i++) {
                String v = bxVar.v();
                ag agVar = new ag();
                agVar.a(bxVar);
                uVar.f192b.put(v, agVar);
            }
            uVar.b(true);
            uVar.e = bxVar.t();
            uVar.e(true);
            BitSet b2 = bxVar.b(2);
            if (b2.get(0)) {
                uVar.c = bxVar.t();
                uVar.c(true);
            }
            if (b2.get(1)) {
                uVar.d = bxVar.s();
                uVar.d(true);
            }
        }
    }
}
