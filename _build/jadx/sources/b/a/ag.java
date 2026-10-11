package b.a;

import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: PropertyValue.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ag extends be<ag, a> {

    /* renamed from: a, reason: collision with root package name */
    public static final Map<a, bg> f36a;
    private static final bw d = new bw("PropertyValue");
    private static final bo e = new bo("string_value", (byte) 11, 1);
    private static final bo f = new bo("long_value", (byte) 10, 2);

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put((EnumMap) a.STRING_VALUE, (a) new bg("string_value", (byte) 3, new bh((byte) 11)));
        enumMap.put((EnumMap) a.LONG_VALUE, (a) new bg("long_value", (byte) 3, new bh((byte) 10)));
        f36a = Collections.unmodifiableMap(enumMap);
        bg.a(ag.class, f36a);
    }

    /* compiled from: PropertyValue.java */
    public enum a implements bc {
        STRING_VALUE(1, "string_value"),
        LONG_VALUE(2, "long_value");

        private static final Map<String, a> c = new HashMap();
        private final short d;
        private final String e;

        static {
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                c.put(aVar.b(), aVar);
            }
        }

        public static a a(int i) {
            switch (i) {
                case 1:
                    return STRING_VALUE;
                case 2:
                    return LONG_VALUE;
                default:
                    return null;
            }
        }

        public static a b(int i) {
            a a2 = a(i);
            if (a2 == null) {
                throw new IllegalArgumentException("Field " + i + " doesn't exist!");
            }
            return a2;
        }

        a(short s, String str) {
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

    @Override // b.a.be
    protected Object a(br brVar, bo boVar) throws bb {
        a a2 = a.a(boVar.c);
        if (a2 == null) {
            return null;
        }
        switch (a2) {
            case STRING_VALUE:
                if (boVar.f106b == e.f106b) {
                    return brVar.v();
                }
                bu.a(brVar, boVar.f106b);
                return null;
            case LONG_VALUE:
                if (boVar.f106b == f.f106b) {
                    return Long.valueOf(brVar.t());
                }
                bu.a(brVar, boVar.f106b);
                return null;
            default:
                throw new IllegalStateException("setField wasn't null, but didn't match any of the case statements!");
        }
    }

    @Override // b.a.be
    protected void c(br brVar) throws bb {
        switch ((a) this.c) {
            case STRING_VALUE:
                brVar.a((String) this.f85b);
                return;
            case LONG_VALUE:
                brVar.a(((Long) this.f85b).longValue());
                return;
            default:
                throw new IllegalStateException("Cannot write union with unknown field " + this.c);
        }
    }

    @Override // b.a.be
    protected Object a(br brVar, short s) throws bb {
        a a2 = a.a(s);
        if (a2 != null) {
            switch (a2) {
                case STRING_VALUE:
                    return brVar.v();
                case LONG_VALUE:
                    return Long.valueOf(brVar.t());
                default:
                    throw new IllegalStateException("setField wasn't null, but didn't match any of the case statements!");
            }
        }
        throw new bs("Couldn't find a field with field id " + ((int) s));
    }

    @Override // b.a.be
    protected void d(br brVar) throws bb {
        switch ((a) this.c) {
            case STRING_VALUE:
                brVar.a((String) this.f85b);
                return;
            case LONG_VALUE:
                brVar.a(((Long) this.f85b).longValue());
                return;
            default:
                throw new IllegalStateException("Cannot write union with unknown field " + this.c);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // b.a.be
    public bo a(a aVar) {
        switch (aVar) {
            case STRING_VALUE:
                return e;
            case LONG_VALUE:
                return f;
            default:
                throw new IllegalArgumentException("Unknown field id " + aVar);
        }
    }

    @Override // b.a.be
    protected bw a() {
        return d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // b.a.be
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public a b(short s) {
        return a.b(s);
    }

    public void a(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.c = a.STRING_VALUE;
        this.f85b = str;
    }

    public void a(long j) {
        this.c = a.LONG_VALUE;
        this.f85b = Long.valueOf(j);
    }

    public boolean equals(Object obj) {
        if (obj instanceof ag) {
            return a((ag) obj);
        }
        return false;
    }

    public boolean a(ag agVar) {
        return agVar != null && b() == agVar.b() && c().equals(agVar.c());
    }

    public int hashCode() {
        return 0;
    }
}
