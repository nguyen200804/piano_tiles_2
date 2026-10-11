package b.a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: Traffic.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class al implements ay<al, e>, Serializable, Cloneable {
    public static final Map<e, bg> c;
    private static final bw d = new bw("Traffic");
    private static final bo e = new bo("upload_traffic", (byte) 8, 1);
    private static final bo f = new bo("download_traffic", (byte) 8, 2);
    private static final Map<Class<? extends by>, bz> g = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public int f54a;

    /* renamed from: b, reason: collision with root package name */
    public int f55b;
    private byte h = 0;

    static {
        g.put(ca.class, new b());
        g.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.UPLOAD_TRAFFIC, (e) new bg("upload_traffic", (byte) 1, new bh((byte) 8)));
        enumMap.put((EnumMap) e.DOWNLOAD_TRAFFIC, (e) new bg("download_traffic", (byte) 1, new bh((byte) 8)));
        c = Collections.unmodifiableMap(enumMap);
        bg.a(al.class, c);
    }

    /* compiled from: Traffic.java */
    public enum e implements bc {
        UPLOAD_TRAFFIC(1, "upload_traffic"),
        DOWNLOAD_TRAFFIC(2, "download_traffic");

        private static final Map<String, e> c = new HashMap();
        private final short d;
        private final String e;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                c.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.d = s;
            this.e = str;
        }

        @Override // b.a.bc
        public short a() {
            return this.d;
        }

        public String b() {
            return this.e;
        }
    }

    public al a(int i) {
        this.f54a = i;
        a(true);
        return this;
    }

    public boolean a() {
        return aw.a(this.h, 0);
    }

    public void a(boolean z) {
        this.h = aw.a(this.h, 0, z);
    }

    public al b(int i) {
        this.f55b = i;
        b(true);
        return this;
    }

    public boolean b() {
        return aw.a(this.h, 1);
    }

    public void b(boolean z) {
        this.h = aw.a(this.h, 1, z);
    }

    @Override // b.a.ay
    public void a(br brVar) throws bb {
        g.get(brVar.y()).b().b(brVar, this);
    }

    @Override // b.a.ay
    public void b(br brVar) throws bb {
        g.get(brVar.y()).b().a(brVar, this);
    }

    public String toString() {
        return "Traffic(upload_traffic:" + this.f54a + ", download_traffic:" + this.f55b + ")";
    }

    public void c() throws bb {
    }

    /* compiled from: Traffic.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: Traffic.java */
    private static class a extends ca<al> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, al alVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 8) {
                                alVar.f54a = brVar.s();
                                alVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 8) {
                                alVar.f55b = brVar.s();
                                alVar.b(true);
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
                    if (!alVar.a()) {
                        throw new bs("Required field 'upload_traffic' was not found in serialized data! Struct: " + toString());
                    }
                    if (!alVar.b()) {
                        throw new bs("Required field 'download_traffic' was not found in serialized data! Struct: " + toString());
                    }
                    alVar.c();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, al alVar) throws bb {
            alVar.c();
            brVar.a(al.d);
            brVar.a(al.e);
            brVar.a(alVar.f54a);
            brVar.b();
            brVar.a(al.f);
            brVar.a(alVar.f55b);
            brVar.b();
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: Traffic.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: Traffic.java */
    private static class c extends cb<al> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, al alVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(alVar.f54a);
            bxVar.a(alVar.f55b);
        }

        @Override // b.a.by
        public void b(br brVar, al alVar) throws bb {
            bx bxVar = (bx) brVar;
            alVar.f54a = bxVar.s();
            alVar.a(true);
            alVar.f55b = bxVar.s();
            alVar.b(true);
        }
    }
}
