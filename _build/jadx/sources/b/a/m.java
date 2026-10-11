package b.a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: ActivateMsg.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class m implements ay<m, e>, Serializable, Cloneable {

    /* renamed from: b, reason: collision with root package name */
    public static final Map<e, bg> f161b;
    private static final bw c = new bw("ActivateMsg");
    private static final bo d = new bo("ts", (byte) 10, 1);
    private static final Map<Class<? extends by>, bz> e = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public long f162a;
    private byte f;

    static {
        e.put(ca.class, new b());
        e.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.TS, (e) new bg("ts", (byte) 1, new bh((byte) 10)));
        f161b = Collections.unmodifiableMap(enumMap);
        bg.a(m.class, f161b);
    }

    /* compiled from: ActivateMsg.java */
    public enum e implements bc {
        TS(1, "ts");


        /* renamed from: b, reason: collision with root package name */
        private static final Map<String, e> f164b = new HashMap();
        private final short c;
        private final String d;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                f164b.put(eVar.b(), eVar);
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

    public m() {
        this.f = (byte) 0;
    }

    public m(long j) {
        this();
        this.f162a = j;
        a(true);
    }

    public boolean a() {
        return aw.a(this.f, 0);
    }

    public void a(boolean z) {
        this.f = aw.a(this.f, 0, z);
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
        return "ActivateMsg(ts:" + this.f162a + ")";
    }

    public void b() throws bb {
    }

    /* compiled from: ActivateMsg.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: ActivateMsg.java */
    private static class a extends ca<m> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, m mVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 10) {
                                mVar.f162a = brVar.t();
                                mVar.a(true);
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
                    if (!mVar.a()) {
                        throw new bs("Required field 'ts' was not found in serialized data! Struct: " + toString());
                    }
                    mVar.b();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, m mVar) throws bb {
            mVar.b();
            brVar.a(m.c);
            brVar.a(m.d);
            brVar.a(mVar.f162a);
            brVar.b();
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: ActivateMsg.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: ActivateMsg.java */
    private static class c extends cb<m> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, m mVar) throws bb {
            ((bx) brVar).a(mVar.f162a);
        }

        @Override // b.a.by
        public void b(br brVar, m mVar) throws bb {
            mVar.f162a = ((bx) brVar).t();
            mVar.a(true);
        }
    }
}
