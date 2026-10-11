package com.facebook.notifications.internal.utilities;

import android.graphics.Bitmap;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.MotionEventCompat;
import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;

/* compiled from: GifDecoder.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {
    private static final String C = b.class.getSimpleName();
    protected int A;
    protected int B;

    /* renamed from: a, reason: collision with root package name */
    protected int f3422a;

    /* renamed from: b, reason: collision with root package name */
    protected int f3423b;
    protected int c;
    protected boolean d;
    protected int e;
    protected int[] g;
    protected int[] h;
    protected int i;
    protected int j;
    protected int k;
    protected boolean l;
    protected int m;
    protected ByteBuffer n;
    protected short[] q;
    protected byte[] r;
    protected byte[] s;
    protected byte[] t;
    protected int[] u;
    protected int[] v;
    protected ArrayList<a> w;
    protected a x;
    protected Bitmap y;
    protected Bitmap z;
    protected int f = 1;
    protected byte[] o = new byte[256];
    protected int p = 0;

    /* compiled from: GifDecoder.java */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        public int f3424a;

        /* renamed from: b, reason: collision with root package name */
        public int f3425b;
        public int c;
        public int d;
        public boolean e;
        public boolean f;
        public int g;
        public int h;
        public int i;
        public int j;
        public int[] k;

        private a() {
        }
    }

    public void a() {
        this.A = (this.A + 1) % this.B;
    }

    public int a(int i) {
        if (i < 0 || i >= this.B) {
            return -1;
        }
        return this.w.get(i).i;
    }

    public int b() {
        if (this.B <= 0 || this.A < 0) {
            return -1;
        }
        return a(this.A);
    }

    public int c() {
        return this.f3423b;
    }

    public int d() {
        return this.c;
    }

    public Bitmap e() {
        int i;
        if (this.B <= 0 || this.A < 0 || this.z == null) {
            return null;
        }
        a aVar = this.w.get(this.A);
        if (aVar.k == null) {
            this.h = this.g;
        } else {
            this.h = aVar.k;
            if (this.i == aVar.h) {
                this.j = 0;
            }
        }
        if (aVar.f) {
            i = this.h[aVar.h];
            this.h[aVar.h] = 0;
        } else {
            i = 0;
        }
        if (this.h == null) {
            Log.w(C, "No Valid Color Table");
            this.f3422a = 1;
            return null;
        }
        b(this.A);
        if (aVar.f) {
            this.h[aVar.h] = i;
        }
        return this.z;
    }

    public int a(byte[] bArr) {
        g();
        if (bArr != null) {
            this.n = ByteBuffer.wrap(bArr);
            this.n.rewind();
            this.n.order(ByteOrder.LITTLE_ENDIAN);
            k();
            if (!f()) {
                j();
                if (this.B < 0) {
                    this.f3422a = 1;
                }
            }
        } else {
            this.f3422a = 2;
        }
        return this.f3422a;
    }

    protected void b(int i) {
        a aVar;
        int i2;
        a aVar2 = this.w.get(i);
        int i3 = i - 1;
        if (i3 < 0) {
            aVar = null;
        } else {
            aVar = this.w.get(i3);
        }
        int[] iArr = this.u;
        if (aVar != null && aVar.g > 0) {
            if (aVar.g == 1 && this.z != null) {
                this.z.getPixels(iArr, 0, this.f3423b, 0, 0, this.f3423b, this.c);
            }
            if (aVar.g == 2) {
                int i4 = 0;
                if (!aVar2.f) {
                    i4 = this.j;
                }
                for (int i5 = 0; i5 < aVar.d; i5++) {
                    int i6 = ((aVar.f3425b + i5) * this.f3423b) + aVar.f3424a;
                    int i7 = aVar.c + i6;
                    while (i6 < i7) {
                        iArr[i6] = i4;
                        i6++;
                    }
                }
            }
            if (aVar.g == 3 && this.y != null) {
                this.y.getPixels(iArr, 0, this.f3423b, 0, 0, this.f3423b, this.c);
            }
        }
        a(aVar2, this.t);
        int i8 = 1;
        int i9 = 8;
        int i10 = 0;
        for (int i11 = 0; i11 < aVar2.d; i11++) {
            if (aVar2.e) {
                if (i10 >= aVar2.d) {
                    i8++;
                    switch (i8) {
                        case 2:
                            i10 = 4;
                            break;
                        case 3:
                            i10 = 2;
                            i9 = 4;
                            break;
                        case 4:
                            i10 = 1;
                            i9 = 2;
                            break;
                    }
                }
                int i12 = i10;
                i10 += i9;
                i2 = i12;
            } else {
                i2 = i11;
            }
            int i13 = i2 + aVar2.f3425b;
            if (i13 < this.c) {
                int i14 = this.f3423b * i13;
                int i15 = i14 + aVar2.f3424a;
                int i16 = aVar2.c + i15;
                if (this.f3423b + i14 < i16) {
                    i16 = this.f3423b + i14;
                }
                int i17 = aVar2.c * i11;
                int i18 = i15;
                while (i18 < i16) {
                    int i19 = i17 + 1;
                    int i20 = this.h[this.t[i17] & 255];
                    if (i20 != 0) {
                        iArr[i18] = i20;
                    }
                    i18++;
                    i17 = i19;
                }
            }
        }
        this.z.getPixels(this.v, 0, this.f3423b, 0, 0, this.f3423b, this.c);
        this.y.setPixels(this.v, 0, this.f3423b, 0, 0, this.f3423b, this.c);
        this.z.setPixels(iArr, 0, this.f3423b, 0, 0, this.f3423b, this.c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v13, types: [short] */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    protected void a(a aVar, byte[] bArr) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        short s;
        System.currentTimeMillis();
        if (aVar != null) {
            this.n.position(aVar.j);
        }
        int i10 = aVar == null ? this.f3423b * this.c : aVar.c * aVar.d;
        if (bArr == null || bArr.length < i10) {
            bArr = new byte[i10];
        }
        if (this.q == null) {
            this.q = new short[4096];
        }
        if (this.r == null) {
            this.r = new byte[4096];
        }
        if (this.s == null) {
            this.s = new byte[FragmentTransaction.TRANSIT_FRAGMENT_OPEN];
        }
        int h = h();
        int i11 = 1 << h;
        int i12 = i11 + 1;
        int i13 = i11 + 2;
        int i14 = h + 1;
        int i15 = (1 << i14) - 1;
        for (int i16 = 0; i16 < i11; i16++) {
            this.q[i16] = 0;
            this.r[i16] = (byte) i16;
        }
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = -1;
        int i25 = 0;
        while (i21 < i10) {
            if (i18 != 0) {
                i = i15;
                i2 = i19;
                i3 = i23;
                i4 = i14;
                i5 = i18;
                i6 = i20;
                i7 = i24;
                i8 = i13;
            } else if (i23 < i14) {
                if (i22 == 0) {
                    i22 = i();
                    if (i22 <= 0) {
                        break;
                    } else {
                        i25 = 0;
                    }
                }
                i20 += (this.o[i25] & 255) << i23;
                i23 += 8;
                i25++;
                i22--;
            } else {
                int i26 = i20 & i15;
                i20 >>= i14;
                i23 -= i14;
                if (i26 > i13 || i26 == i12) {
                    break;
                }
                if (i26 == i11) {
                    i14 = h + 1;
                    i15 = (1 << i14) - 1;
                    i13 = i11 + 2;
                    i24 = -1;
                } else if (i24 == -1) {
                    this.s[i18] = this.r[i26];
                    i18++;
                    i24 = i26;
                    i19 = i26;
                } else {
                    if (i26 == i13) {
                        i9 = i18 + 1;
                        this.s[i18] = (byte) i19;
                        s = i24;
                    } else {
                        i9 = i18;
                        s = i26;
                    }
                    while (s > i11) {
                        this.s[i9] = this.r[s];
                        s = this.q[s];
                        i9++;
                    }
                    int i27 = this.r[s] & 255;
                    if (i13 >= 4096) {
                        break;
                    }
                    int i28 = i9 + 1;
                    this.s[i9] = (byte) i27;
                    this.q[i13] = (short) i24;
                    this.r[i13] = (byte) i27;
                    i8 = i13 + 1;
                    if ((i8 & i15) == 0 && i8 < 4096) {
                        i14++;
                        i15 += i8;
                    }
                    i6 = i20;
                    i7 = i26;
                    i = i15;
                    i2 = i27;
                    i3 = i23;
                    i4 = i14;
                    i5 = i28;
                }
            }
            int i29 = i5 - 1;
            bArr[i17] = this.s[i29];
            i21++;
            i17++;
            i14 = i4;
            i23 = i3;
            i19 = i2;
            i15 = i;
            int i30 = i7;
            i20 = i6;
            i18 = i29;
            i13 = i8;
            i24 = i30;
        }
        for (int i31 = i17; i31 < i10; i31++) {
            bArr[i31] = 0;
        }
    }

    protected boolean f() {
        return this.f3422a != 0;
    }

    protected void g() {
        this.f3422a = 0;
        this.B = 0;
        this.A = -1;
        this.w = new ArrayList<>();
        this.g = null;
    }

    protected int h() {
        try {
            return this.n.get() & 255;
        } catch (Exception e) {
            this.f3422a = 1;
            return 0;
        }
    }

    protected int i() {
        this.p = h();
        int i = 0;
        if (this.p > 0) {
            while (i < this.p) {
                try {
                    int i2 = this.p - i;
                    this.n.get(this.o, i, i2);
                    i += i2;
                } catch (Exception e) {
                    Log.w(C, "Error Reading Block", e);
                    this.f3422a = 1;
                }
            }
        }
        return i;
    }

    protected int[] c(int i) {
        int[] iArr;
        BufferUnderflowException e;
        int i2 = 0;
        byte[] bArr = new byte[i * 3];
        try {
            this.n.get(bArr);
            iArr = new int[256];
            int i3 = 0;
            while (i2 < i) {
                int i4 = i3 + 1;
                try {
                    int i5 = bArr[i3] & 255;
                    int i6 = i4 + 1;
                    int i7 = bArr[i4] & 255;
                    i3 = i6 + 1;
                    int i8 = i2 + 1;
                    iArr[i2] = (i5 << 16) | (-16777216) | (i7 << 8) | (bArr[i6] & 255);
                    i2 = i8;
                } catch (BufferUnderflowException e2) {
                    e = e2;
                    Log.w(C, "Format Error Reading Color Table", e);
                    this.f3422a = 1;
                    return iArr;
                }
            }
        } catch (BufferUnderflowException e3) {
            iArr = null;
            e = e3;
        }
        return iArr;
    }

    protected void j() {
        boolean z = false;
        while (!z && !f()) {
            switch (h()) {
                case MotionEventCompat.AXIS_GENERIC_2 /* 33 */:
                    switch (h()) {
                        case 1:
                            q();
                            break;
                        case 249:
                            this.x = new a();
                            l();
                            break;
                        case 254:
                            q();
                            break;
                        case 255:
                            i();
                            String str = "";
                            for (int i = 0; i < 11; i++) {
                                str = str + ((char) this.o[i]);
                            }
                            if (str.equals("NETSCAPE2.0")) {
                                o();
                                break;
                            } else {
                                q();
                                break;
                            }
                        default:
                            q();
                            break;
                    }
                case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                    m();
                    break;
                case 59:
                    z = true;
                    break;
                default:
                    this.f3422a = 1;
                    break;
            }
        }
    }

    protected void k() {
        String str = "";
        for (int i = 0; i < 6; i++) {
            str = str + ((char) h());
        }
        if (!str.startsWith("GIF")) {
            this.f3422a = 1;
            return;
        }
        n();
        if (this.d && !f()) {
            this.g = c(this.e);
            this.j = this.g[this.i];
        }
    }

    protected void l() {
        h();
        int h = h();
        this.x.g = (h & 28) >> 2;
        if (this.x.g == 0) {
            this.x.g = 1;
        }
        this.x.f = (h & 1) != 0;
        this.x.i = p() * 10;
        this.x.h = h();
        h();
    }

    protected void m() {
        this.x.f3424a = p();
        this.x.f3425b = p();
        this.x.c = p();
        this.x.d = p();
        int h = h();
        this.l = (h & 128) != 0;
        this.m = (int) Math.pow(2.0d, (h & 7) + 1);
        this.x.e = (h & 64) != 0;
        if (this.l) {
            this.x.k = c(this.m);
        } else {
            this.x.k = null;
        }
        this.x.j = this.n.position();
        a(null, this.t);
        q();
        if (!f()) {
            this.B++;
            this.w.add(this.x);
        }
    }

    protected void n() {
        this.f3423b = p();
        this.c = p();
        int h = h();
        this.d = (h & 128) != 0;
        this.e = 2 << (h & 7);
        this.i = h();
        this.k = h();
        this.t = new byte[this.f3423b * this.c];
        this.u = new int[this.f3423b * this.c];
        this.v = new int[this.f3423b * this.c];
        this.y = Bitmap.createBitmap(this.f3423b, this.c, Bitmap.Config.RGB_565);
        this.z = Bitmap.createBitmap(this.f3423b, this.c, Bitmap.Config.RGB_565);
    }

    protected void o() {
        do {
            i();
            if (this.o[0] == 1) {
                this.f = (this.o[1] & 255) | ((this.o[2] & 255) << 8);
            }
            if (this.p <= 0) {
                return;
            }
        } while (!f());
    }

    protected int p() {
        return this.n.getShort();
    }

    protected void q() {
        do {
            i();
            if (this.p <= 0) {
                return;
            }
        } while (!f());
    }
}
