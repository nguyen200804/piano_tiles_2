package b.a;

import com.unity3d.ads.metadata.MediationMetaData;
import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: AppInfo.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class o implements ay<o, e>, Serializable, Cloneable {
    public static final Map<e, bg> k;
    private static final bw l = new bw("AppInfo");
    private static final bo m = new bo("key", (byte) 11, 1);
    private static final bo n = new bo(MediationMetaData.KEY_VERSION, (byte) 11, 2);
    private static final bo o = new bo("version_index", (byte) 8, 3);
    private static final bo p = new bo("package_name", (byte) 11, 4);
    private static final bo q = new bo("sdk_type", (byte) 8, 5);
    private static final bo r = new bo("sdk_version", (byte) 11, 6);
    private static final bo s = new bo("channel", (byte) 11, 7);
    private static final bo t = new bo("wrapper_type", (byte) 11, 8);
    private static final bo u = new bo("wrapper_version", (byte) 11, 9);
    private static final bo v = new bo("vertical_type", (byte) 8, 10);
    private static final Map<Class<? extends by>, bz> w = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public String f169a;

    /* renamed from: b, reason: collision with root package name */
    public String f170b;
    public int c;
    public String d;
    public aj e;
    public String f;
    public String g;
    public String h;
    public String i;
    public int j;
    private byte x = 0;
    private e[] y = {e.VERSION, e.VERSION_INDEX, e.PACKAGE_NAME, e.WRAPPER_TYPE, e.WRAPPER_VERSION, e.VERTICAL_TYPE};

    static {
        w.put(ca.class, new b());
        w.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.KEY, (e) new bg("key", (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.VERSION, (e) new bg(MediationMetaData.KEY_VERSION, (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.VERSION_INDEX, (e) new bg("version_index", (byte) 2, new bh((byte) 8)));
        enumMap.put((EnumMap) e.PACKAGE_NAME, (e) new bg("package_name", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.SDK_TYPE, (e) new bg("sdk_type", (byte) 1, new bf((byte) 16, aj.class)));
        enumMap.put((EnumMap) e.SDK_VERSION, (e) new bg("sdk_version", (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.CHANNEL, (e) new bg("channel", (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.WRAPPER_TYPE, (e) new bg("wrapper_type", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.WRAPPER_VERSION, (e) new bg("wrapper_version", (byte) 2, new bh((byte) 11)));
        enumMap.put((EnumMap) e.VERTICAL_TYPE, (e) new bg("vertical_type", (byte) 2, new bh((byte) 8)));
        k = Collections.unmodifiableMap(enumMap);
        bg.a(o.class, k);
    }

    /* compiled from: AppInfo.java */
    public enum e implements bc {
        KEY(1, "key"),
        VERSION(2, MediationMetaData.KEY_VERSION),
        VERSION_INDEX(3, "version_index"),
        PACKAGE_NAME(4, "package_name"),
        SDK_TYPE(5, "sdk_type"),
        SDK_VERSION(6, "sdk_version"),
        CHANNEL(7, "channel"),
        WRAPPER_TYPE(8, "wrapper_type"),
        WRAPPER_VERSION(9, "wrapper_version"),
        VERTICAL_TYPE(10, "vertical_type");

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

    public o a(String str) {
        this.f169a = str;
        return this;
    }

    public void a(boolean z) {
        if (!z) {
            this.f169a = null;
        }
    }

    public o b(String str) {
        this.f170b = str;
        return this;
    }

    public boolean a() {
        return this.f170b != null;
    }

    public void b(boolean z) {
        if (!z) {
            this.f170b = null;
        }
    }

    public o a(int i) {
        this.c = i;
        c(true);
        return this;
    }

    public boolean b() {
        return aw.a(this.x, 0);
    }

    public void c(boolean z) {
        this.x = aw.a(this.x, 0, z);
    }

    public o c(String str) {
        this.d = str;
        return this;
    }

    public boolean c() {
        return this.d != null;
    }

    public void d(boolean z) {
        if (!z) {
            this.d = null;
        }
    }

    public o a(aj ajVar) {
        this.e = ajVar;
        return this;
    }

    public void e(boolean z) {
        if (!z) {
            this.e = null;
        }
    }

    public o d(String str) {
        this.f = str;
        return this;
    }

    public void f(boolean z) {
        if (!z) {
            this.f = null;
        }
    }

    public o e(String str) {
        this.g = str;
        return this;
    }

    public void g(boolean z) {
        if (!z) {
            this.g = null;
        }
    }

    public o f(String str) {
        this.h = str;
        return this;
    }

    public boolean d() {
        return this.h != null;
    }

    public void h(boolean z) {
        if (!z) {
            this.h = null;
        }
    }

    public o g(String str) {
        this.i = str;
        return this;
    }

    public boolean e() {
        return this.i != null;
    }

    public void i(boolean z) {
        if (!z) {
            this.i = null;
        }
    }

    public o b(int i) {
        this.j = i;
        j(true);
        return this;
    }

    public boolean f() {
        return aw.a(this.x, 1);
    }

    public void j(boolean z) {
        this.x = aw.a(this.x, 1, z);
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
        StringBuilder sb = new StringBuilder("AppInfo(");
        sb.append("key:");
        if (this.f169a == null) {
            sb.append("null");
        } else {
            sb.append(this.f169a);
        }
        if (a()) {
            sb.append(", ");
            sb.append("version:");
            if (this.f170b == null) {
                sb.append("null");
            } else {
                sb.append(this.f170b);
            }
        }
        if (b()) {
            sb.append(", ");
            sb.append("version_index:");
            sb.append(this.c);
        }
        if (c()) {
            sb.append(", ");
            sb.append("package_name:");
            if (this.d == null) {
                sb.append("null");
            } else {
                sb.append(this.d);
            }
        }
        sb.append(", ");
        sb.append("sdk_type:");
        if (this.e == null) {
            sb.append("null");
        } else {
            sb.append(this.e);
        }
        sb.append(", ");
        sb.append("sdk_version:");
        if (this.f == null) {
            sb.append("null");
        } else {
            sb.append(this.f);
        }
        sb.append(", ");
        sb.append("channel:");
        if (this.g == null) {
            sb.append("null");
        } else {
            sb.append(this.g);
        }
        if (d()) {
            sb.append(", ");
            sb.append("wrapper_type:");
            if (this.h == null) {
                sb.append("null");
            } else {
                sb.append(this.h);
            }
        }
        if (e()) {
            sb.append(", ");
            sb.append("wrapper_version:");
            if (this.i == null) {
                sb.append("null");
            } else {
                sb.append(this.i);
            }
        }
        if (f()) {
            sb.append(", ");
            sb.append("vertical_type:");
            sb.append(this.j);
        }
        sb.append(")");
        return sb.toString();
    }

    public void g() throws bb {
        if (this.f169a == null) {
            throw new bs("Required field 'key' was not present! Struct: " + toString());
        }
        if (this.e == null) {
            throw new bs("Required field 'sdk_type' was not present! Struct: " + toString());
        }
        if (this.f == null) {
            throw new bs("Required field 'sdk_version' was not present! Struct: " + toString());
        }
        if (this.g == null) {
            throw new bs("Required field 'channel' was not present! Struct: " + toString());
        }
    }

    /* compiled from: AppInfo.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: AppInfo.java */
    private static class a extends ca<o> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, o oVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 11) {
                                oVar.f169a = brVar.v();
                                oVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 11) {
                                oVar.f170b = brVar.v();
                                oVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 8) {
                                oVar.c = brVar.s();
                                oVar.c(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 4:
                            if (h.f106b == 11) {
                                oVar.d = brVar.v();
                                oVar.d(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 5:
                            if (h.f106b == 8) {
                                oVar.e = aj.a(brVar.s());
                                oVar.e(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 6:
                            if (h.f106b == 11) {
                                oVar.f = brVar.v();
                                oVar.f(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 7:
                            if (h.f106b == 11) {
                                oVar.g = brVar.v();
                                oVar.g(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 8:
                            if (h.f106b == 11) {
                                oVar.h = brVar.v();
                                oVar.h(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 9:
                            if (h.f106b == 11) {
                                oVar.i = brVar.v();
                                oVar.i(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 10:
                            if (h.f106b == 8) {
                                oVar.j = brVar.s();
                                oVar.j(true);
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
                    oVar.g();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, o oVar) throws bb {
            oVar.g();
            brVar.a(o.l);
            if (oVar.f169a != null) {
                brVar.a(o.m);
                brVar.a(oVar.f169a);
                brVar.b();
            }
            if (oVar.f170b != null && oVar.a()) {
                brVar.a(o.n);
                brVar.a(oVar.f170b);
                brVar.b();
            }
            if (oVar.b()) {
                brVar.a(o.o);
                brVar.a(oVar.c);
                brVar.b();
            }
            if (oVar.d != null && oVar.c()) {
                brVar.a(o.p);
                brVar.a(oVar.d);
                brVar.b();
            }
            if (oVar.e != null) {
                brVar.a(o.q);
                brVar.a(oVar.e.a());
                brVar.b();
            }
            if (oVar.f != null) {
                brVar.a(o.r);
                brVar.a(oVar.f);
                brVar.b();
            }
            if (oVar.g != null) {
                brVar.a(o.s);
                brVar.a(oVar.g);
                brVar.b();
            }
            if (oVar.h != null && oVar.d()) {
                brVar.a(o.t);
                brVar.a(oVar.h);
                brVar.b();
            }
            if (oVar.i != null && oVar.e()) {
                brVar.a(o.u);
                brVar.a(oVar.i);
                brVar.b();
            }
            if (oVar.f()) {
                brVar.a(o.v);
                brVar.a(oVar.j);
                brVar.b();
            }
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: AppInfo.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: AppInfo.java */
    private static class c extends cb<o> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, o oVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(oVar.f169a);
            bxVar.a(oVar.e.a());
            bxVar.a(oVar.f);
            bxVar.a(oVar.g);
            BitSet bitSet = new BitSet();
            if (oVar.a()) {
                bitSet.set(0);
            }
            if (oVar.b()) {
                bitSet.set(1);
            }
            if (oVar.c()) {
                bitSet.set(2);
            }
            if (oVar.d()) {
                bitSet.set(3);
            }
            if (oVar.e()) {
                bitSet.set(4);
            }
            if (oVar.f()) {
                bitSet.set(5);
            }
            bxVar.a(bitSet, 6);
            if (oVar.a()) {
                bxVar.a(oVar.f170b);
            }
            if (oVar.b()) {
                bxVar.a(oVar.c);
            }
            if (oVar.c()) {
                bxVar.a(oVar.d);
            }
            if (oVar.d()) {
                bxVar.a(oVar.h);
            }
            if (oVar.e()) {
                bxVar.a(oVar.i);
            }
            if (oVar.f()) {
                bxVar.a(oVar.j);
            }
        }

        @Override // b.a.by
        public void b(br brVar, o oVar) throws bb {
            bx bxVar = (bx) brVar;
            oVar.f169a = bxVar.v();
            oVar.a(true);
            oVar.e = aj.a(bxVar.s());
            oVar.e(true);
            oVar.f = bxVar.v();
            oVar.f(true);
            oVar.g = bxVar.v();
            oVar.g(true);
            BitSet b2 = bxVar.b(6);
            if (b2.get(0)) {
                oVar.f170b = bxVar.v();
                oVar.b(true);
            }
            if (b2.get(1)) {
                oVar.c = bxVar.s();
                oVar.c(true);
            }
            if (b2.get(2)) {
                oVar.d = bxVar.v();
                oVar.d(true);
            }
            if (b2.get(3)) {
                oVar.h = bxVar.v();
                oVar.h(true);
            }
            if (b2.get(4)) {
                oVar.i = bxVar.v();
                oVar.i(true);
            }
            if (b2.get(5)) {
                oVar.j = bxVar.s();
                oVar.j(true);
            }
        }
    }
}
