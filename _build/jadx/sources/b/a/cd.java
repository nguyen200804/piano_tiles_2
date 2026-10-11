package b.a;

/* compiled from: TMemoryInputTransport.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class cd extends ce {

    /* renamed from: a, reason: collision with root package name */
    private byte[] f120a;

    /* renamed from: b, reason: collision with root package name */
    private int f121b;
    private int c;

    public void a(byte[] bArr) {
        c(bArr, 0, bArr.length);
    }

    public void c(byte[] bArr, int i, int i2) {
        this.f120a = bArr;
        this.f121b = i;
        this.c = i + i2;
    }

    public void a() {
        this.f120a = null;
    }

    @Override // b.a.ce
    public int a(byte[] bArr, int i, int i2) throws cf {
        int d = d();
        if (i2 > d) {
            i2 = d;
        }
        if (i2 > 0) {
            System.arraycopy(this.f120a, this.f121b, bArr, i, i2);
            a(i2);
        }
        return i2;
    }

    @Override // b.a.ce
    public void b(byte[] bArr, int i, int i2) throws cf {
        throw new UnsupportedOperationException("No writing allowed!");
    }

    @Override // b.a.ce
    public byte[] b() {
        return this.f120a;
    }

    @Override // b.a.ce
    public int c() {
        return this.f121b;
    }

    @Override // b.a.ce
    public int d() {
        return this.c - this.f121b;
    }

    @Override // b.a.ce
    public void a(int i) {
        this.f121b += i;
    }
}
