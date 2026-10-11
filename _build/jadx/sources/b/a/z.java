package b.a;

import com.unity3d.ads.metadata.MediationMetaData;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: Imprint.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class z implements ay<z, e>, Serializable, Cloneable {
    public static final Map<e, bg> d;
    private static final bw e = new bw("Imprint");
    private static final bo f = new bo("property", (byte) 13, 1);
    private static final bo g = new bo(MediationMetaData.KEY_VERSION, (byte) 8, 2);
    private static final bo h = new bo("checksum", (byte) 11, 3);
    private static final Map<Class<? extends by>, bz> i = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public Map<String, aa> f208a;

    /* renamed from: b, reason: collision with root package name */
    public int f209b;
    public String c;
    private byte j = 0;

    static {
        i.put(ca.class, new b());
        i.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.PROPERTY, (e) new bg("property", (byte) 1, new bj((byte) 13, new bh((byte) 11), new bk((byte) 12, aa.class))));
        enumMap.put((EnumMap) e.VERSION, (e) new bg(MediationMetaData.KEY_VERSION, (byte) 1, new bh((byte) 8)));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new bg("checksum", (byte) 1, new bh((byte) 11)));
        d = Collections.unmodifiableMap(enumMap);
        bg.a(z.class, d);
    }

    /* compiled from: Imprint.java */
    public enum e implements bc {
        PROPERTY(1, "property"),
        VERSION(2, MediationMetaData.KEY_VERSION),
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

    public Map<String, aa> a() {
        return this.f208a;
    }

    public boolean b() {
        return this.f208a != null;
    }

    public void a(boolean z) {
        if (!z) {
            this.f208a = null;
        }
    }

    public int c() {
        return this.f209b;
    }

    public z a(int i2) {
        this.f209b = i2;
        b(true);
        return this;
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

    public z a(String str) {
        this.c = str;
        return this;
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
        StringBuilder sb = new StringBuilder("Imprint(");
        sb.append("property:");
        if (this.f208a == null) {
            sb.append("null");
        } else {
            sb.append(this.f208a);
        }
        sb.append(", ");
        sb.append("version:");
        sb.append(this.f209b);
        sb.append(", ");
        sb.append("checksum:");
        if (this.c == null) {
            sb.append("null");
        } else {
            sb.append(this.c);
        }
        sb.append(")");
        return sb.toString();
    }

    public void f() throws bb {
        if (this.f208a == null) {
            throw new bs("Required field 'property' was not present! Struct: " + toString());
        }
        if (this.c == null) {
            throw new bs("Required field 'checksum' was not present! Struct: " + toString());
        }
    }

    /* compiled from: Imprint.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: Imprint.java */
    private static class a extends ca<z> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, z zVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 13) {
                                bq j = brVar.j();
                                zVar.f208a = new HashMap(j.c * 2);
                                for (int i = 0; i < j.c; i++) {
                                    String v = brVar.v();
                                    aa aaVar = new aa();
                                    aaVar.a(brVar);
                                    zVar.f208a.put(v, aaVar);
                                }
                                brVar.k();
                                zVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 8) {
                                zVar.f209b = brVar.s();
                                zVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 11) {
                                zVar.c = brVar.v();
                                zVar.c(true);
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
                    if (!zVar.d()) {
                        throw new bs("Required field 'version' was not found in serialized data! Struct: " + toString());
                    }
                    zVar.f();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, z zVar) throws bb {
            zVar.f();
            brVar.a(z.e);
            if (zVar.f208a != null) {
                brVar.a(z.f);
                brVar.a(new bq((byte) 11, (byte) 12, zVar.f208a.size()));
                for (Map.Entry<String, aa> entry : zVar.f208a.entrySet()) {
                    brVar.a(entry.getKey());
                    entry.getValue().b(brVar);
                }
                brVar.d();
                brVar.b();
            }
            brVar.a(z.g);
            brVar.a(zVar.f209b);
            brVar.b();
            if (zVar.c != null) {
                brVar.a(z.h);
                brVar.a(zVar.c);
                brVar.b();
            }
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: Imprint.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: Imprint.java */
    private static class c extends cb<z> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, z zVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(zVar.f208a.size());
            for (Map.Entry<String, aa> entry : zVar.f208a.entrySet()) {
                bxVar.a(entry.getKey());
                entry.getValue().b(bxVar);
            }
            bxVar.a(zVar.f209b);
            bxVar.a(zVar.c);
        }

        @Override // b.a.by
        public void b(br brVar, z zVar) throws bb {
            bx bxVar = (bx) brVar;
            bq bqVar = new bq((byte) 11, (byte) 12, bxVar.s());
            zVar.f208a = new HashMap(bqVar.c * 2);
            for (int i = 0; i < bqVar.c; i++) {
                String v = bxVar.v();
                aa aaVar = new aa();
                aaVar.a(bxVar);
                zVar.f208a.put(v, aaVar);
            }
            zVar.a(true);
            zVar.f209b = bxVar.s();
            zVar.b(true);
            zVar.c = bxVar.v();
            zVar.c(true);
        }
    }
}
