package b.a;

import b.a.bc;
import b.a.be;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

/* compiled from: TUnion.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class be<T extends be<?, ?>, F extends bc> implements ay<T, F> {

    /* renamed from: a, reason: collision with root package name */
    private static final Map<Class<? extends by>, bz> f84a = new HashMap();
    protected F c = null;

    /* renamed from: b, reason: collision with root package name */
    protected Object f85b = null;

    protected abstract bo a(F f);

    protected abstract bw a();

    protected abstract Object a(br brVar, bo boVar) throws bb;

    protected abstract Object a(br brVar, short s) throws bb;

    protected abstract F b(short s);

    protected abstract void c(br brVar) throws bb;

    protected abstract void d(br brVar) throws bb;

    protected be() {
    }

    static {
        f84a.put(ca.class, new b());
        f84a.put(cb.class, new d());
    }

    public F b() {
        return this.c;
    }

    public Object c() {
        return this.f85b;
    }

    public boolean d() {
        return this.c != null;
    }

    @Override // b.a.ay
    public void a(br brVar) throws bb {
        f84a.get(brVar.y()).b().b(brVar, this);
    }

    @Override // b.a.ay
    public void b(br brVar) throws bb {
        f84a.get(brVar.y()).b().a(brVar, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<");
        sb.append(getClass().getSimpleName());
        sb.append(" ");
        if (b() != null) {
            Object c2 = c();
            sb.append(a((be<T, F>) b()).f105a);
            sb.append(":");
            if (c2 instanceof ByteBuffer) {
                az.a((ByteBuffer) c2, sb);
            } else {
                sb.append(c2.toString());
            }
        }
        sb.append(">");
        return sb.toString();
    }

    /* compiled from: TUnion.java */
    private static class b implements bz {
        private b() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a b() {
            return new a();
        }
    }

    /* compiled from: TUnion.java */
    private static class a extends ca<be> {
        private a() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, be beVar) throws bb {
            beVar.c = null;
            beVar.f85b = null;
            brVar.f();
            bo h = brVar.h();
            beVar.f85b = beVar.a(brVar, h);
            if (beVar.f85b != null) {
                beVar.c = (F) beVar.b(h.c);
            }
            brVar.i();
            brVar.h();
            brVar.g();
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, be beVar) throws bb {
            if (beVar.b() == null || beVar.c() == null) {
                throw new bs("Cannot write a TUnion with no set value!");
            }
            brVar.a(beVar.a());
            brVar.a(beVar.a((be) beVar.c));
            beVar.c(brVar);
            brVar.b();
            brVar.c();
            brVar.a();
        }
    }

    /* compiled from: TUnion.java */
    private static class d implements bz {
        private d() {
        }

        @Override // b.a.bz
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public c b() {
            return new c();
        }
    }

    /* compiled from: TUnion.java */
    private static class c extends cb<be> {
        private c() {
        }

        @Override // b.a.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(br brVar, be beVar) throws bb {
            beVar.c = null;
            beVar.f85b = null;
            short r = brVar.r();
            beVar.f85b = beVar.a(brVar, r);
            if (beVar.f85b != null) {
                beVar.c = (F) beVar.b(r);
            }
        }

        @Override // b.a.by
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(br brVar, be beVar) throws bb {
            if (beVar.b() == null || beVar.c() == null) {
                throw new bs("Cannot write a TUnion with no set value!");
            }
            brVar.a(beVar.c.a());
            beVar.d(brVar);
        }
    }
}
