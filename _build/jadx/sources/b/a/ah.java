package b.a;

import com.mopub.mobileads.VastIconXmlManager;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: Resolution.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ah implements ay<ah, e>, Serializable, Cloneable {
    public static final Map<e, bg> c;
    private static final bw d = new bw("Resolution");
    private static final bo e = new bo(VastIconXmlManager.HEIGHT, (byte) 8, 1);
    private static final bo f = new bo(VastIconXmlManager.WIDTH, (byte) 8, 2);
    private static final Map<Class<? extends by>, bz> g = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public int f40a;

    /* renamed from: b, reason: collision with root package name */
    public int f41b;
    private byte h;

    static {
        g.put(ca.class, new b());
        g.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.HEIGHT, (e) new bg(VastIconXmlManager.HEIGHT, (byte) 1, new bh((byte) 8)));
        enumMap.put((EnumMap) e.WIDTH, (e) new bg(VastIconXmlManager.WIDTH, (byte) 1, new bh((byte) 8)));
        c = Collections.unmodifiableMap(enumMap);
        bg.a(ah.class, c);
    }

    /* compiled from: Resolution.java */
    public enum e implements bc {
        HEIGHT(1, VastIconXmlManager.HEIGHT),
        WIDTH(2, VastIconXmlManager.WIDTH);

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

    public ah() {
        this.h = (byte) 0;
    }

    public ah(int i, int i2) {
        this();
        this.f40a = i;
        a(true);
        this.f41b = i2;
        b(true);
    }

    public boolean a() {
        return aw.a(this.h, 0);
    }

    public void a(boolean z) {
        this.h = aw.a(this.h, 0, z);
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
        return "Resolution(height:" + this.f40a + ", width:" + this.f41b + ")";
    }

    public void c() throws bb {
    }

    /* compiled from: Resolution.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: Resolution.java */
    private static class a extends ca<ah> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, ah ahVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 8) {
                                ahVar.f40a = brVar.s();
                                ahVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 8) {
                                ahVar.f41b = brVar.s();
                                ahVar.b(true);
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
                    if (!ahVar.a()) {
                        throw new bs("Required field 'height' was not found in serialized data! Struct: " + toString());
                    }
                    if (!ahVar.b()) {
                        throw new bs("Required field 'width' was not found in serialized data! Struct: " + toString());
                    }
                    ahVar.c();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, ah ahVar) throws bb {
            ahVar.c();
            brVar.a(ah.d);
            brVar.a(ah.e);
            brVar.a(ahVar.f40a);
            brVar.b();
            brVar.a(ah.f);
            brVar.a(ahVar.f41b);
            brVar.b();
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: Resolution.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: Resolution.java */
    private static class c extends cb<ah> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, ah ahVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(ahVar.f40a);
            bxVar.a(ahVar.f41b);
        }

        @Override // b.a.by
        public void b(br brVar, ah ahVar) throws bb {
            bx bxVar = (bx) brVar;
            ahVar.f40a = bxVar.s();
            ahVar.a(true);
            ahVar.f41b = bxVar.s();
            ahVar.b(true);
        }
    }
}
