package b.a;

import b.a.bn;

/* compiled from: TDeserializer.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ba {

    /* renamed from: a, reason: collision with root package name */
    private final br f80a;

    /* renamed from: b, reason: collision with root package name */
    private final cd f81b;

    public ba() {
        this(new bn.a());
    }

    public ba(bt btVar) {
        this.f81b = new cd();
        this.f80a = btVar.a(this.f81b);
    }

    public void a(ay ayVar, byte[] bArr) throws bb {
        try {
            this.f81b.a(bArr);
            ayVar.a(this.f80a);
        } finally {
            this.f81b.a();
            this.f80a.x();
        }
    }
}
