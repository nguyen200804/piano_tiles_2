package b.a;

import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.common.Constants;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: InstantMsg.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ab implements ay<ab, e>, Serializable, Cloneable {
    public static final Map<e, bg> e;
    private static final bw f = new bw("InstantMsg");
    private static final bo g = new bo(FacebookAdapter.KEY_ID, (byte) 11, 1);
    private static final bo h = new bo("errors", (byte) 15, 2);
    private static final bo i = new bo(Constants.VIDEO_TRACKING_EVENTS_KEY, (byte) 15, 3);
    private static final bo j = new bo("game_events", (byte) 15, 4);
    private static final Map<Class<? extends by>, bz> k = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public String f16a;

    /* renamed from: b, reason: collision with root package name */
    public List<s> f17b;
    public List<u> c;
    public List<u> d;
    private e[] l = {e.ERRORS, e.EVENTS, e.GAME_EVENTS};

    static {
        k.put(ca.class, new b());
        k.put(cb.class, new d());
        EnumMap enumMap = new EnumMap(e.class);
        enumMap.put((EnumMap) e.ID, (e) new bg(FacebookAdapter.KEY_ID, (byte) 1, new bh((byte) 11)));
        enumMap.put((EnumMap) e.ERRORS, (e) new bg("errors", (byte) 2, new bi((byte) 15, new bk((byte) 12, s.class))));
        enumMap.put((EnumMap) e.EVENTS, (e) new bg(Constants.VIDEO_TRACKING_EVENTS_KEY, (byte) 2, new bi((byte) 15, new bk((byte) 12, u.class))));
        enumMap.put((EnumMap) e.GAME_EVENTS, (e) new bg("game_events", (byte) 2, new bi((byte) 15, new bk((byte) 12, u.class))));
        e = Collections.unmodifiableMap(enumMap);
        bg.a(ab.class, e);
    }

    /* compiled from: InstantMsg.java */
    public enum e implements bc {
        ID(1, FacebookAdapter.KEY_ID),
        ERRORS(2, "errors"),
        EVENTS(3, Constants.VIDEO_TRACKING_EVENTS_KEY),
        GAME_EVENTS(4, "game_events");

        private static final Map<String, e> e = new HashMap();
        private final short f;
        private final String g;

        static {
            Iterator it = EnumSet.allOf(e.class).iterator();
            while (it.hasNext()) {
                e eVar = (e) it.next();
                e.put(eVar.b(), eVar);
            }
        }

        e(short s, String str) {
            this.f = s;
            this.g = str;
        }

        @Override // b.a.bc
        public short a() {
            return this.f;
        }

        public String b() {
            return this.g;
        }
    }

    public String a() {
        return this.f16a;
    }

    public ab a(String str) {
        this.f16a = str;
        return this;
    }

    public void a(boolean z) {
        if (!z) {
            this.f16a = null;
        }
    }

    public void a(s sVar) {
        if (this.f17b == null) {
            this.f17b = new ArrayList();
        }
        this.f17b.add(sVar);
    }

    public boolean b() {
        return this.f17b != null;
    }

    public void b(boolean z) {
        if (!z) {
            this.f17b = null;
        }
    }

    public void a(u uVar) {
        if (this.c == null) {
            this.c = new ArrayList();
        }
        this.c.add(uVar);
    }

    public boolean c() {
        return this.c != null;
    }

    public void c(boolean z) {
        if (!z) {
            this.c = null;
        }
    }

    public void b(u uVar) {
        if (this.d == null) {
            this.d = new ArrayList();
        }
        this.d.add(uVar);
    }

    public boolean d() {
        return this.d != null;
    }

    public void d(boolean z) {
        if (!z) {
            this.d = null;
        }
    }

    @Override // b.a.ay
    public void a(br brVar) throws bb {
        k.get(brVar.y()).b().b(brVar, this);
    }

    @Override // b.a.ay
    public void b(br brVar) throws bb {
        k.get(brVar.y()).b().a(brVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("InstantMsg(");
        sb.append("id:");
        if (this.f16a == null) {
            sb.append("null");
        } else {
            sb.append(this.f16a);
        }
        if (b()) {
            sb.append(", ");
            sb.append("errors:");
            if (this.f17b == null) {
                sb.append("null");
            } else {
                sb.append(this.f17b);
            }
        }
        if (c()) {
            sb.append(", ");
            sb.append("events:");
            if (this.c == null) {
                sb.append("null");
            } else {
                sb.append(this.c);
            }
        }
        if (d()) {
            sb.append(", ");
            sb.append("game_events:");
            if (this.d == null) {
                sb.append("null");
            } else {
                sb.append(this.d);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void e() throws bb {
        if (this.f16a == null) {
            throw new bs("Required field 'id' was not present! Struct: " + toString());
        }
    }

    /* compiled from: InstantMsg.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: InstantMsg.java */
    private static class a extends ca<ab> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, ab abVar) throws bb {
            brVar.f();
            while (true) {
                bo h = brVar.h();
                if (h.f106b != 0) {
                    switch (h.c) {
                        case 1:
                            if (h.f106b == 11) {
                                abVar.f16a = brVar.v();
                                abVar.a(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 2:
                            if (h.f106b == 15) {
                                bp l = brVar.l();
                                abVar.f17b = new ArrayList(l.f108b);
                                for (int i = 0; i < l.f108b; i++) {
                                    s sVar = new s();
                                    sVar.a(brVar);
                                    abVar.f17b.add(sVar);
                                }
                                brVar.m();
                                abVar.b(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 3:
                            if (h.f106b == 15) {
                                bp l2 = brVar.l();
                                abVar.c = new ArrayList(l2.f108b);
                                for (int i2 = 0; i2 < l2.f108b; i2++) {
                                    u uVar = new u();
                                    uVar.a(brVar);
                                    abVar.c.add(uVar);
                                }
                                brVar.m();
                                abVar.c(true);
                                break;
                            } else {
                                bu.a(brVar, h.f106b);
                                break;
                            }
                        case 4:
                            if (h.f106b == 15) {
                                bp l3 = brVar.l();
                                abVar.d = new ArrayList(l3.f108b);
                                for (int i3 = 0; i3 < l3.f108b; i3++) {
                                    u uVar2 = new u();
                                    uVar2.a(brVar);
                                    abVar.d.add(uVar2);
                                }
                                brVar.m();
                                abVar.d(true);
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
                    abVar.e();
                    return;
                }
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, ab abVar) throws bb {
            abVar.e();
            brVar.a(ab.f);
            if (abVar.f16a != null) {
                brVar.a(ab.g);
                brVar.a(abVar.f16a);
                brVar.b();
            }
            if (abVar.f17b != null && abVar.b()) {
                brVar.a(ab.h);
                brVar.a(new bp((byte) 12, abVar.f17b.size()));
                Iterator<s> it = abVar.f17b.iterator();
                while (it.hasNext()) {
                    it.next().b(brVar);
                }
                brVar.e();
                brVar.b();
            }
            if (abVar.c != null && abVar.c()) {
                brVar.a(ab.i);
                brVar.a(new bp((byte) 12, abVar.c.size()));
                Iterator<u> it2 = abVar.c.iterator();
                while (it2.hasNext()) {
                    it2.next().b(brVar);
                }
                brVar.e();
                brVar.b();
            }
            if (abVar.d != null && abVar.d()) {
                brVar.a(ab.j);
                brVar.a(new bp((byte) 12, abVar.d.size()));
                Iterator<u> it3 = abVar.d.iterator();
                while (it3.hasNext()) {
                    it3.next().b(brVar);
                }
                brVar.e();
                brVar.b();
            }
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: InstantMsg.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: InstantMsg.java */
    private static class c extends cb<ab> {
        private c() {
        }

        @Override // b.a.by
        public void a(br brVar, ab abVar) throws bb {
            bx bxVar = (bx) brVar;
            bxVar.a(abVar.f16a);
            BitSet bitSet = new BitSet();
            if (abVar.b()) {
                bitSet.set(0);
            }
            if (abVar.c()) {
                bitSet.set(1);
            }
            if (abVar.d()) {
                bitSet.set(2);
            }
            bxVar.a(bitSet, 3);
            if (abVar.b()) {
                bxVar.a(abVar.f17b.size());
                Iterator<s> it = abVar.f17b.iterator();
                while (it.hasNext()) {
                    it.next().b(bxVar);
                }
            }
            if (abVar.c()) {
                bxVar.a(abVar.c.size());
                Iterator<u> it2 = abVar.c.iterator();
                while (it2.hasNext()) {
                    it2.next().b(bxVar);
                }
            }
            if (abVar.d()) {
                bxVar.a(abVar.d.size());
                Iterator<u> it3 = abVar.d.iterator();
                while (it3.hasNext()) {
                    it3.next().b(bxVar);
                }
            }
        }

        @Override // b.a.by
        public void b(br brVar, ab abVar) throws bb {
            bx bxVar = (bx) brVar;
            abVar.f16a = bxVar.v();
            abVar.a(true);
            BitSet b2 = bxVar.b(3);
            if (b2.get(0)) {
                bp bpVar = new bp((byte) 12, bxVar.s());
                abVar.f17b = new ArrayList(bpVar.f108b);
                for (int i = 0; i < bpVar.f108b; i++) {
                    s sVar = new s();
                    sVar.a(bxVar);
                    abVar.f17b.add(sVar);
                }
                abVar.b(true);
            }
            if (b2.get(1)) {
                bp bpVar2 = new bp((byte) 12, bxVar.s());
                abVar.c = new ArrayList(bpVar2.f108b);
                for (int i2 = 0; i2 < bpVar2.f108b; i2++) {
                    u uVar = new u();
                    uVar.a(bxVar);
                    abVar.c.add(uVar);
                }
                abVar.c(true);
            }
            if (b2.get(2)) {
                bp bpVar3 = new bp((byte) 12, bxVar.s());
                abVar.d = new ArrayList(bpVar3.f108b);
                for (int i3 = 0; i3 < bpVar3.f108b; i3++) {
                    u uVar2 = new u();
                    uVar2.a(bxVar);
                    abVar.d.add(uVar2);
                }
                abVar.d(true);
            }
        }
    }
}
