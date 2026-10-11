package b.a;

import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.unity3d.ads.metadata.MediationMetaData;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: UMEnvelope.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class an implements ay<an, e>, Serializable, Cloneable {
    public static final Map<e, bg> k;
    private static final bw l = new bw("UMEnvelope");
    private static final bo m = new bo(MediationMetaData.KEY_VERSION, (byte) 11, 1);
    private static final bo n = new bo("address", (byte) 11, 2);
    private static final bo o = new bo(InAppPurchaseMetaData.KEY_SIGNATURE, (byte) 11, 3);
    private static final bo p = new bo("serial_num", (byte) 8, 4);
    private static final bo q = new bo("ts_secs", (byte) 8, 5);
    private static final bo r = new bo("length", (byte) 8, 6);
    private static final bo s = new bo("entity", (byte) 11, 7);
    private static final bo t = new bo("guid", (byte) 11, 8);
    private static final bo u = new bo("checksum", (byte) 11, 9);
    private static final bo v = new bo("codex", (byte) 8, 10);
    private static final Map<Class<? extends by>, bz> w = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public String f62a;

    /* renamed from: b, reason: collision with root package name */
    public String f63b;
    public String c;
    public int d;
    public int e;
    public int f;
    public ByteBuffer g;
    public String h;
    public String i;
    public int j;
    private byte x = 0;
    private e[] y = {e.CODEX};

    static {
        w.put(ca.class, new b());
        w.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.VERSION, (e) new bg(MediationMetaData.KEY_VERSION, (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.ADDRESS, (e) new bg("address", (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.SIGNATURE, (e) new bg(InAppPurchaseMetaData.KEY_SIGNATURE, (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.SERIAL_NUM, (e) new bg("serial_num", (byte) 1, new bh((byte) 8)));
        enumMap.put((EnumMap) e.TS_SECS, (e) new bg("ts_secs", (byte) 1, new bh((byte) 8)));
        enumMap.put((EnumMap) e.LENGTH, (e) new bg("length", (byte) 1, new bh((byte) 8)));
        enumMap.put((EnumMap) e.ENTITY, (e) new bg("entity", (byte) 1, new bh((byte) 11, true)));
        enumMap.put((EnumMap) e.GUID, (e) new bg("guid", (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.CHECKSUM, (e) new bg("checksum", (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.CODEX, (e) new bg("codex", (byte) 2, new bh((byte) 8)));
        k = Collections.unmodifiableMap(enumMap);
        bg.a(an.class, k);
    }

    /* compiled from: UMEnvelope.java */
    public enum e implements bc {
        VERSION(1, MediationMetaData.KEY_VERSION),
        ADDRESS(2, "address"),
        SIGNATURE(3, InAppPurchaseMetaData.KEY_SIGNATURE),
        SERIAL_NUM(4, "serial_num"),
        TS_SECS(5, "ts_secs"),
        LENGTH(6, "length"),
        ENTITY(7, "entity"),
        GUID(8, "guid"),
        CHECKSUM(9, "checksum"),
        CODEX(10, "codex");

        private static final Map<String, e> k = new HashMap();
        private final short l;
        private final String m;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                k.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.l = s;
            this.m = str;
        }

        @Override // b.a.bc
        public short a() {
            return this.l;
        }

        public String b() {
            return this.m;
        }
    }

    public an a(String str) {
        this.f62a = str;
        return this;
    }

    public void a(boolean z) {
        if (!z) {
            this.f62a = null;
        }
    }

    public an b(String str) {
        this.f63b = str;
        return this;
    }

    public void b(boolean z) {
        if (!z) {
            this.f63b = null;
        }
    }

    public an c(String str) {
        this.c = str;
        return this;
    }

    public void c(boolean z) {
        if (!z) {
            this.c = null;
        }
    }

    public an a(int i) {
        this.d = i;
        d(true);
        return this;
    }

    public boolean a() {
        return aw.a(this.x, 0);
    }

    public void d(boolean z) {
        this.x = aw.a(this.x, 0, z);
    }

    public an b(int i) {
        this.e = i;
        e(true);
        return this;
    }

    public boolean b() {
        return aw.a(this.x, 1);
    }

    public void e(boolean z) {
        this.x = aw.a(this.x, 1, z);
    }

    public an c(int i) {
        this.f = i;
        f(true);
        return this;
    }

    public boolean c() {
        return aw.a(this.x, 2);
    }

    public void f(boolean z) {
        this.x = aw.a(this.x, 2, z);
    }

    public an a(byte[] bArr) {
        a(bArr == null ? (ByteBuffer) null : ByteBuffer.wrap(bArr));
        return this;
    }

    public an a(ByteBuffer byteBuffer) {
        this.g = byteBuffer;
        return this;
    }

    public void g(boolean z) {
        if (!z) {
            this.g = null;
        }
    }

    public an d(String str) {
        this.h = str;
        return this;
    }

    public void h(boolean z) {
        if (!z) {
            this.h = null;
        }
    }

    public an e(String str) {
        this.i = str;
        return this;
    }

    public void i(boolean z) {
        if (!z) {
            this.i = null;
        }
    }

    public an d(int i) {
        this.j = i;
        j(true);
        return this;
    }

    public boolean d() {
        return aw.a(this.x, 3);
    }

    public void j(boolean z) {
        this.x = aw.a(this.x, 3, z);
    }

    @Override // b.a.ay
    public void a(br brVar) throws bb {
        w.get(brVar.y()).b().b(brVar, this);
    }

    @Override // b.a.ay
    public void b(br brVar) throws bb {
        w.get(brVar.y()).b().a(brVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UMEnvelope(");
        sb.append("version:");
        if (this.f62a == null) {
            sb.append("null");
        } else {
            sb.append(this.f62a);
        }
        sb.append(", ");
        sb.append("address:");
        if (this.f63b == null) {
            sb.append("null");
        } else {
            sb.append(this.f63b);
        }
        sb.append(", ");
        sb.append("signature:");
        if (this.c == null) {
            sb.append("null");
        } else {
            sb.append(this.c);
        }
        sb.append(", ");
        sb.append("serial_num:");
        sb.append(this.d);
        sb.append(", ");
        sb.append("ts_secs:");
        sb.append(this.e);
        sb.append(", ");
        sb.append("length:");
        sb.append(this.f);
        sb.append(", ");
        sb.append("entity:");
        if (this.g == null) {
            sb.append("null");
        } else {
            az.a(this.g, sb);
        }
        sb.append(", ");
        sb.append("guid:");
        if (this.h == null) {
            sb.append("null");
        } else {
            sb.append(this.h);
        }
        sb.append(", ");
        sb.append("checksum:");
        if (this.i == null) {
            sb.append("null");
        } else {
            sb.append(this.i);
        }
        if (d()) {
            sb.append(", ");
            sb.append("codex:");
            sb.append(this.j);
        }
        sb.append(")");
        return sb.toString();
    }

    public void e() throws bb {
        if (this.f62a == null) {
            throw new bs("Required field 'version' was not present! Struct: " + toString());
        }
        if (this.f63b == null) {
            throw new bs("Required field 'address' was not present! Struct: " + toString());
        }
        if (this.c == null) {
            throw new bs("Required field 'signature' was not present! Struct: " + toString());
        }
        if (this.g == null) {
            throw new bs("Required field 'entity' was not present! Struct: " + toString());
        }
        if (this.h == null) {
            throw new bs("Required field 'guid' was not present! Struct: " + toString());
        }
        if (this.i == null) {
            throw new bs("Required field 'checksum' was not present! Struct: " + toString());
        }
    }

    /* compiled from: UMEnvelope.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: UMEnvelope.java */
    private static class a extends ca<an> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, an anVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 11) {
                                anVar.f62a = brVar.v();
                                anVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 11) {
                                anVar.f63b = brVar.v();
                                anVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 11) {
                                anVar.c = brVar.v();
                                anVar.c(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 4:
                            if (h.f106b == 8) {
                                anVar.d = brVar.s();
                                anVar.d(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 5:
                            if (h.f106b == 8) {
                                anVar.e = brVar.s();
                                anVar.e(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 6:
                            if (h.f106b == 8) {
                                anVar.f = brVar.s();
                                anVar.f(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 7:
                            if (h.f106b == 11) {
                                anVar.g = brVar.w();
                                anVar.g(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 8:
                            if (h.f106b == 11) {
                                anVar.h = brVar.v();
                                anVar.h(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 9:
                            if (h.f106b == 11) {
                                anVar.i = brVar.v();
                                anVar.i(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 10:
                            if (h.f106b == 8) {
                                anVar.j = brVar.s();
                                anVar.j(true);
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
                    if (!anVar.a()) {
                        throw new bs("Required field 'serial_num' was not found in serialized data! Struct: " + toString());
                    }
                    if (!anVar.b()) {
                        throw new bs("Required field 'ts_secs' was not found in serialized data! Struct: " + toString());
                    }
                    if (!anVar.c()) {
                        throw new bs("Required field 'length' was not found in serialized data! Struct: " + toString());
                    }
                    anVar.e();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, an anVar) throws bb {
            anVar.e();
            brVar.a(an.l);
            if (anVar.f62a != null) {
                brVar.a(an.m);
                brVar.a(anVar.f62a);
                brVar.b();
            }
            if (anVar.f63b != null) {
                brVar.a(an.n);
                brVar.a(anVar.f63b);
                brVar.b();
            }
            if (anVar.c != null) {
                brVar.a(an.o);
                brVar.a(anVar.c);
                brVar.b();
            }
            brVar.a(an.p);
            brVar.a(anVar.d);
            brVar.b();
            brVar.a(an.q);
            brVar.a(anVar.e);
            brVar.b();
            brVar.a(an.r);
            brVar.a(anVar.f);
            brVar.b();
            if (anVar.g != null) {
                brVar.a(an.s);
                brVar.a(anVar.g);
                brVar.b();
            }
            if (anVar.h != null) {
                brVar.a(an.t);
                brVar.a(anVar.h);
                brVar.b();
            }
            if (anVar.i != null) {
                brVar.a(an.u);
                brVar.a(anVar.i);
                brVar.b();
            }
            if (anVar.d()) {
                brVar.a(an.v);
                brVar.a(anVar.j);
                brVar.b();
            }
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: UMEnvelope.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: UMEnvelope.java */
    private static class c extends cb<an> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, an anVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(anVar.f62a);
            bxVar.a(anVar.f63b);
            bxVar.a(anVar.c);
            bxVar.a(anVar.d);
            bxVar.a(anVar.e);
            bxVar.a(anVar.f);
            bxVar.a(anVar.g);
            bxVar.a(anVar.h);
            bxVar.a(anVar.i);
            BitSet bitSet = new BitSet();
            if (anVar.d()) {
                bitSet.set(0);
            }
            bxVar.a(bitSet, 1);
            if (anVar.d()) {
                bxVar.a(anVar.j);
            }
        }

        @Override // b.a.by
        public void b(br brVar, an anVar) throws bb {
            bx bxVar = (bx) brVar;
            anVar.f62a = bxVar.v();
            anVar.a(true);
            anVar.f63b = bxVar.v();
            anVar.b(true);
            anVar.c = bxVar.v();
            anVar.c(true);
            anVar.d = bxVar.s();
            anVar.d(true);
            anVar.e = bxVar.s();
            anVar.e(true);
            anVar.f = bxVar.s();
            anVar.f(true);
            anVar.g = bxVar.w();
            anVar.g(true);
            anVar.h = bxVar.v();
            anVar.h(true);
            anVar.i = bxVar.v();
            anVar.i(true);
            if (bxVar.b(1).get(0)) {
                anVar.j = bxVar.s();
                anVar.j(true);
            }
        }
    }
}
