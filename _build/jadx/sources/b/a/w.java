package b.a;

import com.unity3d.ads.metadata.MediationMetaData;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: IdSnapshot.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class w implements ay<w, e>, Serializable, Cloneable {
    public static final Map<e, bg> d;
    private static final bw e = new bw("IdSnapshot");
    private static final bo f = new bo("identity", (byte) 11, 1);
    private static final bo g = new bo("ts", (byte) 10, 2);
    private static final bo h = new bo(MediationMetaData.KEY_VERSION, (byte) 8, 3);
    private static final Map<Class<? extends by>, bz> i = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public String f199a;

    /* renamed from: b, reason: collision with root package name */
    public long f200b;
    public int c;
    private byte j = 0;

    static {
        i.put(ca.class, new b());
        i.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.IDENTITY, (e) new bg("identity", (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.TS, (e) new bg("ts", (byte) 1, new bh((byte) 10)));
        enumMap.put((EnumMap) e.VERSION, (e) new bg(MediationMetaData.KEY_VERSION, (byte) 1, new bh((byte) 8)));
        d = Collections.unmodifiableMap(enumMap);
        bg.a(w.class, d);
    }

    /* compiled from: IdSnapshot.java */
    public enum e implements bc {
        IDENTITY(1, "identity"),
        TS(2, "ts"),
        VERSION(3, MediationMetaData.KEY_VERSION);

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
        return this.f199a;
    }

    public w a(String str) {
        this.f199a = str;
        return this;
    }

    public void a(boolean z) {
        if (!z) {
            this.f199a = null;
        }
    }

    public long b() {
        return this.f200b;
    }

    public w a(long j) {
        this.f200b = j;
        b(true);
        return this;
    }

    public boolean c() {
        return aw.a(this.j, 0);
    }

    public void b(boolean z) {
        this.j = aw.a(this.j, 0, z);
    }

    public int d() {
        return this.c;
    }

    public w a(int i2) {
        this.c = i2;
        c(true);
        return this;
    }

    public boolean e() {
        return aw.a(this.j, 1);
    }

    public void c(boolean z) {
        this.j = aw.a(this.j, 1, z);
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
        StringBuilder sb = new StringBuilder("IdSnapshot(");
        sb.append("identity:");
        if (this.f199a == null) {
            sb.append("null");
        } else {
            sb.append(this.f199a);
        }
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.f200b);
        sb.append(", ");
        sb.append("version:");
        sb.append(this.c);
        sb.append(")");
        return sb.toString();
    }

    public void f() throws bb {
        if (this.f199a == null) {
            throw new bs("Required field 'identity' was not present! Struct: " + toString());
        }
    }

    /* compiled from: IdSnapshot.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: IdSnapshot.java */
    private static class a extends ca<w> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, w wVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 11) {
                                wVar.f199a = brVar.v();
                                wVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 10) {
                                wVar.f200b = brVar.t();
                                wVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 8) {
                                wVar.c = brVar.s();
                                wVar.c(true);
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
                    if (!wVar.c()) {
                        throw new bs("Required field 'ts' was not found in serialized data! Struct: " + toString());
                    }
                    if (!wVar.e()) {
                        throw new bs("Required field 'version' was not found in serialized data! Struct: " + toString());
                    }
                    wVar.f();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, w wVar) throws bb {
            wVar.f();
            brVar.a(w.e);
            if (wVar.f199a != null) {
                brVar.a(w.f);
                brVar.a(wVar.f199a);
                brVar.b();
            }
            brVar.a(w.g);
            brVar.a(wVar.f200b);
            brVar.b();
            brVar.a(w.h);
            brVar.a(wVar.c);
            brVar.b();
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: IdSnapshot.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: IdSnapshot.java */
    private static class c extends cb<w> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, w wVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(wVar.f199a);
            bxVar.a(wVar.f200b);
            bxVar.a(wVar.c);
        }

        @Override // b.a.by
        public void b(br brVar, w wVar) throws bb {
            bx bxVar = (bx) brVar;
            wVar.f199a = bxVar.v();
            wVar.a(true);
            wVar.f200b = bxVar.t();
            wVar.b(true);
            wVar.c = bxVar.s();
            wVar.c(true);
        }
    }
}
