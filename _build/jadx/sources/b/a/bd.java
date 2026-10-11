package b.a;

import b.a.bn;
import java.io.ByteArrayOutputStream;

/* compiled from: TSerializer.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class bd {

    /* renamed from: a, reason: collision with root package name */
    private final ByteArrayOutputStream f82a;

    /* renamed from: b, reason: collision with root package name */
    private final cc f83b;
    private br c;

    public bd() {
        this(new bn.a());
    }

    public bd(bt btVar) {
        this.f82a = new ByteArrayOutputStream();
        this.f83b = new cc(this.f82a);
        this.c = btVar.a(this.f83b);
    }

    public byte[] a(ay ayVar) throws bb {
        this.f82a.reset();
        ayVar.b(this.c);
        return this.f82a.toByteArray();
    }
}
