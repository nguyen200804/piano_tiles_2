package b.a;

import android.support.v4.media.TransportMediator;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* compiled from: TCompactProtocol.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class bn extends br {
    private static final bw d = new bw("");
    private static final bo f = new bo("", (byte) 0, 0);
    private static final byte[] g = new byte[16];

    /* renamed from: a, reason: collision with root package name */
    byte[] f102a;

    /* renamed from: b, reason: collision with root package name */
    byte[] f103b;
    byte[] c;
    private ax h;
    private short i;
    private bo j;
    private Boolean k;
    private final long l;
    private byte[] m;

    static {
        g[0] = 0;
        g[2] = 1;
        g[3] = 3;
        g[6] = 4;
        g[8] = 5;
        g[10] = 6;
        g[4] = 7;
        g[11] = 8;
        g[15] = 9;
        g[14] = 10;
        g[13] = 11;
        g[12] = 12;
    }

    /* compiled from: TCompactProtocol.java */
    public static class a implements bt {

        /* renamed from: a, reason: collision with root package name */
        private final long f104a = -1;

        @Override // b.a.bt
        public br a(ce ceVar) {
            return new bn(ceVar, this.f104a);
        }
    }

    public bn(ce ceVar, long j) {
        super(ceVar);
        this.h = new ax(15);
        this.i = (short) 0;
        this.j = null;
        this.k = null;
        this.f102a = new byte[5];
        this.f103b = new byte[10];
        this.m = new byte[1];
        this.c = new byte[1];
        this.l = j;
    }

    @Override // b.a.br
    public void x() {
        this.h.b();
        this.i = (short) 0;
    }

    @Override // b.a.br
    public void a(bw bwVar) throws bb {
        this.h.a(this.i);
        this.i = (short) 0;
    }

    @Override // b.a.br
    public void a() throws bb {
        this.i = this.h.a();
    }

    @Override // b.a.br
    public void a(bo boVar) throws bb {
        if (boVar.f106b == 2) {
            this.j = boVar;
        } else {
            a(boVar, (byte) -1);
        }
    }

    private void a(bo boVar, byte b2) throws bb {
        if (b2 == -1) {
            b2 = e(boVar.f106b);
        }
        if (boVar.c > this.i && boVar.c - this.i <= 15) {
            d(((boVar.c - this.i) << 4) | b2);
        } else {
            b(b2);
            a(boVar.c);
        }
        this.i = boVar.c;
    }

    @Override // b.a.br
    public void c() throws bb {
        b((byte) 0);
    }

    @Override // b.a.br
    public void a(bq bqVar) throws bb {
        if (bqVar.c == 0) {
            d(0);
        } else {
            b(bqVar.c);
            d((e(bqVar.f109a) << 4) | e(bqVar.f110b));
        }
    }

    @Override // b.a.br
    public void a(bp bpVar) throws bb {
        a(bpVar.f107a, bpVar.f108b);
    }

    @Override // b.a.br
    public void a(boolean z) throws bb {
        if (this.j != null) {
            a(this.j, z ? (byte) 1 : (byte) 2);
            this.j = null;
        } else {
            b(z ? (byte) 1 : (byte) 2);
        }
    }

    public void a(byte b2) throws bb {
        b(b2);
    }

    @Override // b.a.br
    public void a(short s) throws bb {
        b(c((int) s));
    }

    @Override // b.a.br
    public void a(int i) throws bb {
        b(c(i));
    }

    @Override // b.a.br
    public void a(long j) throws bb {
        b(c(j));
    }

    @Override // b.a.br
    public void a(double d2) throws bb {
        byte[] bArr = {0, 0, 0, 0, 0, 0, 0, 0};
        a(Double.doubleToLongBits(d2), bArr, 0);
        this.e.b(bArr);
    }

    @Override // b.a.br
    public void a(String str) throws bb {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            a(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException e) {
            throw new bb("UTF-8 not supported!");
        }
    }

    @Override // b.a.br
    public void a(ByteBuffer byteBuffer) throws bb {
        a(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.limit() - byteBuffer.position());
    }

    private void a(byte[] bArr, int i, int i2) throws bb {
        b(i2);
        this.e.b(bArr, i, i2);
    }

    @Override // b.a.br
    public void d() throws bb {
    }

    @Override // b.a.br
    public void e() throws bb {
    }

    @Override // b.a.br
    public void b() throws bb {
    }

    protected void a(byte b2, int i) throws bb {
        if (i <= 14) {
            d((i << 4) | e(b2));
        } else {
            d(e(b2) | 240);
            b(i);
        }
    }

    private void b(int i) throws bb {
        int i2 = 0;
        while ((i & (-128)) != 0) {
            this.f102a[i2] = (byte) ((i & TransportMediator.KEYCODE_MEDIA_PAUSE) | 128);
            i >>>= 7;
            i2++;
        }
        this.f102a[i2] = (byte) i;
        this.e.b(this.f102a, 0, i2 + 1);
    }

    private void b(long j) throws bb {
        int i = 0;
        while (((-128) & j) != 0) {
            this.f103b[i] = (byte) ((127 & j) | 128);
            j >>>= 7;
            i++;
        }
        this.f103b[i] = (byte) j;
        this.e.b(this.f103b, 0, i + 1);
    }

    private long c(long j) {
        return (j << 1) ^ (j >> 63);
    }

    private int c(int i) {
        return (i << 1) ^ (i >> 31);
    }

    private void a(long j, byte[] bArr, int i) {
        bArr[i + 0] = (byte) (j & 255);
        bArr[i + 1] = (byte) ((j >> 8) & 255);
        bArr[i + 2] = (byte) ((j >> 16) & 255);
        bArr[i + 3] = (byte) ((j >> 24) & 255);
        bArr[i + 4] = (byte) ((j >> 32) & 255);
        bArr[i + 5] = (byte) ((j >> 40) & 255);
        bArr[i + 6] = (byte) ((j >> 48) & 255);
        bArr[i + 7] = (byte) ((j >> 56) & 255);
    }

    private void b(byte b2) throws bb {
        this.m[0] = b2;
        this.e.b(this.m);
    }

    private void d(int i) throws bb {
        b((byte) i);
    }

    @Override // b.a.br
    public bw f() throws bb {
        this.h.a(this.i);
        this.i = (short) 0;
        return d;
    }

    @Override // b.a.br
    public void g() throws bb {
        this.i = this.h.a();
    }

    @Override // b.a.br
    public bo h() throws bb {
        short s;
        byte q = q();
        if (q == 0) {
            return f;
        }
        short s2 = (short) ((q & 240) >> 4);
        if (s2 == 0) {
            s = r();
        } else {
            s = (short) (s2 + this.i);
        }
        bo boVar = new bo("", d((byte) (q & 15)), s);
        if (c(q)) {
            this.k = ((byte) (q & 15)) == 1 ? Boolean.TRUE : Boolean.FALSE;
        }
        this.i = boVar.c;
        return boVar;
    }

    @Override // b.a.br
    public bq j() throws bb {
        int z = z();
        byte q = z == 0 ? (byte) 0 : q();
        return new bq(d((byte) (q >> 4)), d((byte) (q & 15)), z);
    }

    @Override // b.a.br
    public bp l() throws bb {
        byte q = q();
        int i = (q >> 4) & 15;
        if (i == 15) {
            i = z();
        }
        return new bp(d(q), i);
    }

    @Override // b.a.br
    public bv n() throws bb {
        return new bv(l());
    }

    @Override // b.a.br
    public boolean p() throws bb {
        if (this.k == null) {
            return q() == 1;
        }
        boolean booleanValue = this.k.booleanValue();
        this.k = null;
        return booleanValue;
    }

    @Override // b.a.br
    public byte q() throws bb {
        if (this.e.d() > 0) {
            byte b2 = this.e.b()[this.e.c()];
            this.e.a(1);
            return b2;
        }
        this.e.d(this.c, 0, 1);
        return this.c[0];
    }

    @Override // b.a.br
    public short r() throws bb {
        return (short) g(z());
    }

    @Override // b.a.br
    public int s() throws bb {
        return g(z());
    }

    @Override // b.a.br
    public long t() throws bb {
        return d(A());
    }

    @Override // b.a.br
    public double u() throws bb {
        byte[] bArr = new byte[8];
        this.e.d(bArr, 0, 8);
        return Double.longBitsToDouble(a(bArr));
    }

    @Override // b.a.br
    public String v() throws bb {
        String str;
        int z = z();
        f(z);
        if (z == 0) {
            return "";
        }
        try {
            if (this.e.d() >= z) {
                str = new String(this.e.b(), this.e.c(), z, "UTF-8");
                this.e.a(z);
            } else {
                str = new String(e(z), "UTF-8");
            }
            return str;
        } catch (UnsupportedEncodingException e) {
            throw new bb("UTF-8 not supported!");
        }
    }

    @Override // b.a.br
    public ByteBuffer w() throws bb {
        int z = z();
        f(z);
        if (z == 0) {
            return ByteBuffer.wrap(new byte[0]);
        }
        byte[] bArr = new byte[z];
        this.e.d(bArr, 0, z);
        return ByteBuffer.wrap(bArr);
    }

    private byte[] e(int i) throws bb {
        if (i == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i];
        this.e.d(bArr, 0, i);
        return bArr;
    }

    private void f(int i) throws bs {
        if (i < 0) {
            throw new bs("Negative length: " + i);
        }
        if (this.l != -1 && i > this.l) {
            throw new bs("Length exceeded max allowed: " + i);
        }
    }

    @Override // b.a.br
    public void i() throws bb {
    }

    @Override // b.a.br
    public void k() throws bb {
    }

    @Override // b.a.br
    public void m() throws bb {
    }

    @Override // b.a.br
    public void o() throws bb {
    }

    private int z() throws bb {
        int i = 0;
        if (this.e.d() >= 5) {
            byte[] b2 = this.e.b();
            int c = this.e.c();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                byte b3 = b2[c + i];
                i3 |= (b3 & Byte.MAX_VALUE) << i2;
                if ((b3 & 128) == 128) {
                    i2 += 7;
                    i++;
                } else {
                    this.e.a(i + 1);
                    return i3;
                }
            }
        } else {
            int i4 = 0;
            while (true) {
                byte q = q();
                i4 |= (q & Byte.MAX_VALUE) << i;
                if ((q & 128) != 128) {
                    return i4;
                }
                i += 7;
            }
        }
    }

    private long A() throws bb {
        int i = 0;
        long j = 0;
        if (this.e.d() >= 10) {
            byte[] b2 = this.e.b();
            int c = this.e.c();
            int i2 = 0;
            while (true) {
                j |= (r6 & Byte.MAX_VALUE) << i2;
                if ((b2[c + i] & 128) != 128) {
                    break;
                }
                i2 += 7;
                i++;
            }
            this.e.a(i + 1);
        } else {
            while (true) {
                j |= (r1 & Byte.MAX_VALUE) << i;
                if ((q() & 128) != 128) {
                    break;
                }
                i += 7;
            }
        }
        return j;
    }

    private int g(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    private long d(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    private long a(byte[] bArr) {
        return ((bArr[7] & 255) << 56) | ((bArr[6] & 255) << 48) | ((bArr[5] & 255) << 40) | ((bArr[4] & 255) << 32) | ((bArr[3] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[1] & 255) << 8) | (bArr[0] & 255);
    }

    private boolean c(byte b2) {
        int i = b2 & 15;
        return i == 1 || i == 2;
    }

    private byte d(byte b2) throws bs {
        switch ((byte) (b2 & 15)) {
            case 0:
                return (byte) 0;
            case 1:
            case 2:
                return (byte) 2;
            case 3:
                return (byte) 3;
            case 4:
                return (byte) 6;
            case 5:
                return (byte) 8;
            case 6:
                return (byte) 10;
            case 7:
                return (byte) 4;
            case 8:
                return (byte) 11;
            case 9:
                return (byte) 15;
            case 10:
                return (byte) 14;
            case 11:
                return (byte) 13;
            case 12:
                return (byte) 12;
            default:
                throw new bs("don't know what type: " + ((int) ((byte) (b2 & 15))));
        }
    }

    private byte e(byte b2) {
        return g[b2];
    }
}
