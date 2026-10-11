package b.a;

import com.mopub.mobileads.VastIconXmlManager;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: Page.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class af implements ay<af, e>, Serializable, Cloneable {
    public static final Map<e, bg> c;
    private static final bw d = new bw("Page");
    private static final bo e = new bo("page_name", (byte) 11, 1);
    private static final bo f = new bo(VastIconXmlManager.DURATION, (byte) 10, 2);
    private static final Map<Class<? extends by>, bz> g = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public String f32a;

    /* renamed from: b, reason: collision with root package name */
    public long f33b;
    private byte h = 0;

    static {
        g.put(ca.class, new b());
        g.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.PAGE_NAME, (e) new bg("page_name", (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.DURATION, (e) new bg(VastIconXmlManager.DURATION, (byte) 1, new bh((byte) 10)));
        c = Collections.unmodifiableMap(enumMap);
        bg.a(af.class, c);
    }

    /* compiled from: Page.java */
    public enum e implements bc {
        PAGE_NAME(1, "page_name"),
        DURATION(2, VastIconXmlManager.DURATION);

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

    public af a(String str) {
        this.f32a = str;
        return this;
    }

    public void a(boolean z) {
        if (!z) {
            this.f32a = null;
        }
    }

    public af a(long j) {
        this.f33b = j;
        b(true);
        return this;
    }

    public boolean a() {
        return aw.a(this.h, 0);
    }

    public void b(boolean z) {
        this.h = aw.a(this.h, 0, z);
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
        StringBuilder sb = new StringBuilder("Page(");
        sb.append("page_name:");
        if (this.f32a == null) {
            sb.append("null");
        } else {
            sb.append(this.f32a);
        }
        sb.append(", ");
        sb.append("duration:");
        sb.append(this.f33b);
        sb.append(")");
        return sb.toString();
    }

    public void b() throws bb {
        if (this.f32a == null) {
            throw new bs("Required field 'page_name' was not present! Struct: " + toString());
        }
    }

    /* compiled from: Page.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: Page.java */
    private static class a extends ca<af> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, af afVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 11) {
                                afVar.f32a = brVar.v();
                                afVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 10) {
                                afVar.f33b = brVar.t();
                                afVar.b(true);
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
                    if (!afVar.a()) {
                        throw new bs("Required field 'duration' was not found in serialized data! Struct: " + toString());
                    }
                    afVar.b();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, af afVar) throws bb {
            afVar.b();
            brVar.a(af.d);
            if (afVar.f32a != null) {
                brVar.a(af.e);
                brVar.a(afVar.f32a);
                brVar.b();
            }
            brVar.a(af.f);
            brVar.a(afVar.f33b);
            brVar.b();
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: Page.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: Page.java */
    private static class c extends cb<af> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, af afVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(afVar.f32a);
            bxVar.a(afVar.f33b);
        }

        @Override // b.a.by
        public void b(br brVar, af afVar) throws bb {
            bx bxVar = (bx) brVar;
            afVar.f32a = bxVar.v();
            afVar.a(true);
            afVar.f33b = bxVar.t();
            afVar.b(true);
        }
    }
}
