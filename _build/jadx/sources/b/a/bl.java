package b.a;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* compiled from: TBinaryProtocol.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class bl extends br {
    private static final bw f = new bw();

    /* renamed from: a, reason: collision with root package name */
    protected boolean f94a;

    /* renamed from: b, reason: collision with root package name */
    protected boolean f95b;
    protected int c;
    protected boolean d;
    private byte[] g;
    private byte[] h;
    private byte[] i;
    private byte[] j;
    private byte[] k;
    private byte[] l;
    private byte[] m;
    private byte[] n;

    /* compiled from: TBinaryProtocol.java */
    public static class a implements bt {

        /* renamed from: a, reason: collision with root package name */
        protected boolean f96a;

        /* renamed from: b, reason: collision with root package name */
        protected boolean f97b;
        protected int c;

        public a() {
            this(false, true);
        }

        public a(boolean z, boolean z2) {
            this(z, z2, 0);
        }

        public a(boolean z, boolean z2, int i) {
            this.f96a = false;
            this.f97b = true;
            this.f96a = z;
            this.f97b = z2;
            this.c = i;
        }

        @Override // b.a.bt
        public br a(ce ceVar) {
            bl blVar = new bl(ceVar, this.f96a, this.f97b);
            if (this.c != 0) {
                blVar.c(this.c);
            }
            return blVar;
        }
    }

    public bl(ce ceVar, boolean z, boolean z2) {
        super(ceVar);
        this.f94a = false;
        this.f95b = true;
        this.d = false;
        this.g = new byte[1];
        this.h = new byte[2];
        this.i = new byte[4];
        this.j = new byte[8];
        this.k = new byte[1];
        this.l = new byte[2];
        this.m = new byte[4];
        this.n = new byte[8];
        this.f94a = z;
        this.f95b = z2;
    }

    @Override // b.a.br
    public void a(bw bwVar) {
    }

    @Override // b.a.br
    public void a() {
    }

    @Override // b.a.br
    public void a(bo boVar) throws bb {
        a(boVar.f106b);
        a(boVar.c);
    }

    @Override // b.a.br
    public void b() {
    }

    @Override // b.a.br
    public void c() throws bb {
        a((byte) 0);
    }

    @Override // b.a.br
    public void a(bq bqVar) throws bb {
        a(bqVar.f109a);
        a(bqVar.f110b);
        a(bqVar.c);
    }

    @Override // b.a.br
    public void d() {
    }

    @Override // b.a.br
    public void a(bp bpVar) throws bb {
        a(bpVar.f107a);
        a(bpVar.f108b);
    }

    @Override // b.a.br
    public void e() {
    }

    @Override // b.a.br
    public void a(boolean z) throws bb {
        a(z ? (byte) 1 : (byte) 0);
    }

    public void a(byte b2) throws bb {
        this.g[0] = b2;
        this.e.b(this.g, 0, 1);
    }

    @Override // b.a.br
    public void a(short s) throws bb {
        this.h[0] = (byte) ((s >> 8) & 255);
        this.h[1] = (byte) (s & 255);
        this.e.b(this.h, 0, 2);
    }

    @Override // b.a.br
    public void a(int i) throws bb {
        this.i[0] = (byte) ((i >> 24) & 255);
        this.i[1] = (byte) ((i >> 16) & 255);
        this.i[2] = (byte) ((i >> 8) & 255);
        this.i[3] = (byte) (i & 255);
        this.e.b(this.i, 0, 4);
    }

    @Override // b.a.br
    public void a(long j) throws bb {
        this.j[0] = (byte) ((j >> 56) & 255);
        this.j[1] = (byte) ((j >> 48) & 255);
        this.j[2] = (byte) ((j >> 40) & 255);
        this.j[3] = (byte) ((j >> 32) & 255);
        this.j[4] = (byte) ((j >> 24) & 255);
        this.j[5] = (byte) ((j >> 16) & 255);
        this.j[6] = (byte) ((j >> 8) & 255);
        this.j[7] = (byte) (255 & j);
        this.e.b(this.j, 0, 8);
    }

    @Override // b.a.br
    public void a(double d) throws bb {
        a(Double.doubleToLongBits(d));
    }

    @Override // b.a.br
    public void a(String str) throws bb {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            a(bytes.length);
            this.e.b(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException e) {
            throw new bb("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // b.a.br
    public void a(ByteBuffer byteBuffer) throws bb {
        int limit = byteBuffer.limit() - byteBuffer.position();
        a(limit);
        this.e.b(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), limit);
    }

    @Override // b.a.br
    public bw f() {
        return f;
    }

    @Override // b.a.br
    public void g() {
    }

    @Override // b.a.br
    public bo h() throws bb {
        byte q = q();
        return new bo("", q, q == 0 ? (short) 0 : r());
    }

    @Override // b.a.br
    public void i() {
    }

    @Override // b.a.br
    public bq j() throws bb {
        return new bq(q(), q(), s());
    }

    @Override // b.a.br
    public void k() {
    }

    @Override // b.a.br
    public bp l() throws bb {
        return new bp(q(), s());
    }

    @Override // b.a.br
    public void m() {
    }

    @Override // b.a.br
    public bv n() throws bb {
        return new bv(q(), s());
    }

    @Override // b.a.br
    public void o() {
    }

    @Override // b.a.br
    public boolean p() throws bb {
        return q() == 1;
    }

    @Override // b.a.br
    public byte q() throws bb {
        if (this.e.d() >= 1) {
            byte b2 = this.e.b()[this.e.c()];
            this.e.a(1);
            return b2;
        }
        a(this.k, 0, 1);
        return this.k[0];
    }

    @Override // b.a.br
    public short r() throws bb {
        int i = 0;
        byte[] bArr = this.l;
        if (this.e.d() >= 2) {
            bArr = this.e.b();
            i = this.e.c();
            this.e.a(2);
        } else {
            a(this.l, 0, 2);
        }
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    @Override // b.a.br
    public int s() throws bb {
        int i = 0;
        byte[] bArr = this.m;
        if (this.e.d() >= 4) {
            bArr = this.e.b();
            i = this.e.c();
            this.e.a(4);
        } else {
            a(this.m, 0, 4);
        }
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    @Override // b.a.br
    public long t() throws bb {
        int i = 0;
        byte[] bArr = this.n;
        if (this.e.d() >= 8) {
            bArr = this.e.b();
            i = this.e.c();
            this.e.a(8);
        } else {
            a(this.n, 0, 8);
        }
        return (bArr[i + 7] & 255) | ((bArr[i] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
    }

    @Override // b.a.br
    public double u() throws bb {
        return Double.longBitsToDouble(t());
    }

    @Override // b.a.br
    public String v() throws bb {
        int s = s();
        if (this.e.d() >= s) {
            try {
                String str = new String(this.e.b(), this.e.c(), s, "UTF-8");
                this.e.a(s);
                return str;
            } catch (UnsupportedEncodingException e) {
                throw new bb("JVM DOES NOT SUPPORT UTF-8");
            }
        }
        return b(s);
    }

    public String b(int i) throws bb {
        try {
            d(i);
            byte[] bArr = new byte[i];
            this.e.d(bArr, 0, i);
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new bb("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // b.a.br
    public ByteBuffer w() throws bb {
        int s = s();
        d(s);
        if (this.e.d() >= s) {
            ByteBuffer wrap = ByteBuffer.wrap(this.e.b(), this.e.c(), s);
            this.e.a(s);
            return wrap;
        }
        byte[] bArr = new byte[s];
        this.e.d(bArr, 0, s);
        return ByteBuffer.wrap(bArr);
    }

    private int a(byte[] bArr, int i, int i2) throws bb {
        d(i2);
        return this.e.d(bArr, i, i2);
    }

    public void c(int i) {
        this.c = i;
        this.d = true;
    }

    protected void d(int i) throws bb {
        if (i < 0) {
            throw new bs("Negative length: " + i);
        }
        if (this.d) {
            this.c -= i;
            if (this.c < 0) {
                throw new bs("Message length exceeded: " + i);
            }
        }
    }
}
