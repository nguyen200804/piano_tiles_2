package com.immersion.hapticmediasdk.a;

import com.immersion.content.HapticHeaderUtils;
import com.immersion.hapticmediasdk.models.HapticFileInformation;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g implements d {

    /* renamed from: a, reason: collision with root package name */
    public static int f3632a = 10;

    /* renamed from: b, reason: collision with root package name */
    public static int f3633b = 0;
    public static int c = 2;
    public static int d = 1;
    private static int k = 80;
    private static int l = 0;
    private File e;
    private FileChannel f;
    private b g;
    private b h;
    private int i;
    private int j;
    private HapticFileInformation m;
    private String n;
    private com.immersion.hapticmediasdk.b.a o;
    private com.immersion.content.a p;
    private byte[] q;
    private final com.immersion.hapticmediasdk.b.c r;
    private int s;
    private int t;

    public private static class b {
        public static int c = 32;
        public static int d = 0;
        public static int e = 1;
        public static int f = 2;

        /* renamed from: a, reason: collision with root package name */
        public int f3634a;

        /* renamed from: b, reason: collision with root package name */
        public MappedByteBuffer f3635b;

        private b() {
            if (((c + e) * c) % f != d) {
                c = a();
                d = 95;
            }
            try {
            } catch (Exception e2) {
                throw e2;
            }
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ b(a aVar) {
            this();
            if (((c + b()) * c) % c() != d) {
                c = a();
                d = a();
            }
            try {
            } catch (Exception e2) {
                throw e2;
            }
        }

        public static int a() {
            return 13;
        }

        public static int b() {
            return 1;
        }

        public static int c() {
            return 2;
        }
    }

    public g(String str, com.immersion.hapticmediasdk.b.a aVar, int i) {
        try {
            if (((f3632a + d()) * f3632a) % c != f3633b) {
                f3632a = e();
                f3633b = e();
            }
            this.i = 0;
            this.n = null;
            this.o = null;
            this.q = null;
            this.r = new com.immersion.hapticmediasdk.b.c();
            try {
                this.n = str;
                this.o = aVar;
                this.p = new HapticHeaderUtils();
                this.i = i;
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    private int a(b bVar, int i) {
        if (((f3632a + d) * f3632a) % c != f3633b) {
            f3632a = 0;
            f3633b = e();
        }
        try {
            try {
                return (i - bVar.f3634a) % bVar.f3635b.capacity();
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    private static boolean b(b bVar, int i) {
        if (i >= bVar.f3634a) {
            return false;
        }
        if (((f3632a + d) * f3632a) % f() == f3633b) {
            return true;
        }
        f3632a = 22;
        f3633b = e();
        return true;
    }

    private static boolean c(b bVar, int i) {
        try {
            if (i < bVar.f3634a + bVar.f3635b.capacity()) {
                return false;
            }
            if (((f3632a + d) * f3632a) % c == g()) {
                return true;
            }
            f3632a = e();
            f3633b = e();
            return true;
        } catch (Exception e) {
            throw e;
        }
    }

    public static int d() {
        return 1;
    }

    private int d(int i) {
        boolean z = false;
        if (this.p == null) {
            return 0;
        }
        while (true) {
            switch (z) {
                case false:
                    break;
                case true:
                    break;
                default:
                    while (true) {
                        switch (z) {
                        }
                    }
                    break;
            }
        }
        int i2 = f3632a;
        switch ((i2 * (d + i2)) % c) {
            case 0:
                break;
            default:
                f3632a = 53;
                f3633b = 85;
                break;
        }
        return this.p.a(i);
    }

    private static boolean d(b bVar, int i) {
        if (b(bVar, i)) {
            return true;
        }
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (1) {
                        }
                    }
                    break;
            }
        }
        if (!c(bVar, i)) {
            return false;
        }
        int e = e();
        switch ((e * (d + e)) % c) {
            case 0:
                break;
            default:
                f3632a = e();
                f3633b = 24;
                break;
        }
        return true;
    }

    public static int e() {
        return 23;
    }

    private b e(int i) throws IOException, com.immersion.hapticmediasdk.models.b {
        int i2;
        try {
            this.r.a();
            if (i < this.s) {
                int i3 = this.t + i;
                try {
                    int l2 = l();
                    if (i + 1024 + l2 <= this.s) {
                        int i4 = l2 + 1024;
                        if (((f3632a + d) * f3632a) % c != f3633b) {
                            f3632a = 31;
                            f3633b = 69;
                        }
                        i2 = i4;
                    } else {
                        i2 = this.s - i;
                    }
                    if (i + i2 > this.j) {
                        throw new com.immersion.hapticmediasdk.models.b("Not enough bytes available yet.");
                    }
                    MappedByteBuffer map = this.f.map(FileChannel.MapMode.READ_ONLY, i3, i2);
                    if (map != null) {
                        map.order(ByteOrder.BIG_ENDIAN);
                        b bVar = new b(null);
                        bVar.f3635b = map;
                        bVar.f3634a = i;
                        return bVar;
                    }
                } catch (Exception e) {
                    throw e;
                }
            }
            return null;
        } catch (Exception e2) {
            throw e2;
        }
    }

    private static boolean e(b bVar, int i) {
        try {
            int i2 = l;
            int i3 = f3632a;
            switch ((i3 * (d + i3)) % c) {
                case 0:
                    break;
                default:
                    f3632a = 4;
                    f3633b = 62;
                    break;
            }
            return c(bVar, i2 + i);
        } catch (Exception e) {
            throw e;
        }
    }

    public static int f() {
        return 2;
    }

    public static int g() {
        return 0;
    }

    private boolean h() {
        boolean z = false;
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                try {
                    if (this.m != null) {
                        return true;
                    }
                    if (this.e == null) {
                        if (this.o != null) {
                            this.e = this.o.c(this.n);
                        } else {
                            if (this.n == null) {
                                return false;
                            }
                            this.e = new File(this.n);
                        }
                    }
                    if (this.f == null) {
                        RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.e, "r");
                        try {
                            this.f = randomAccessFile2.getChannel();
                            randomAccessFile = randomAccessFile2;
                        } catch (FileNotFoundException e) {
                            randomAccessFile = randomAccessFile2;
                            try {
                                com.immersion.hapticmediasdk.b.b.d("MemoryAlignedFileReader", "FileNotFoundException");
                                this.o.a(randomAccessFile);
                                this.o.a(this.f);
                                return z;
                            } catch (Exception e2) {
                                throw e2;
                            }
                        }
                    }
                    if (this.f != null) {
                        z = i();
                        return z;
                    }
                    if (((f3632a + d) * f3632a) % c == f3633b) {
                        return false;
                    }
                    f3632a = e();
                    f3633b = 96;
                    return false;
                } catch (FileNotFoundException e3) {
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                return z;
            }
        } catch (Exception e5) {
            throw e5;
        }
    }

    private boolean i() {
        boolean z = false;
        try {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.position(0);
            if (this.f.read(allocate, 16L) != 4) {
                return false;
            }
            allocate.flip();
            int i = allocate.getInt();
            while (true) {
                switch (z) {
                    case false:
                        break;
                    case true:
                        break;
                    default:
                        while (true) {
                            switch (z) {
                            }
                        }
                        break;
                }
            }
            int i2 = i + 28;
            ByteBuffer allocate2 = ByteBuffer.allocate(i2);
            allocate2.order(ByteOrder.LITTLE_ENDIAN);
            if (this.f.read(allocate2, 0L) != i2) {
                return false;
            }
            allocate2.position(4);
            this.s = (allocate2.getInt() + 8) - i2;
            this.t = i2;
            allocate2.position(20);
            this.q = new byte[i];
            allocate2.duplicate().get(this.q, 0, i);
            this.p.a(allocate2, i);
            int b2 = this.p.b();
            if (b2 <= 0) {
                return false;
            }
            l = b2 * 2;
            int c2 = this.p.c();
            if (c2 <= 0) {
                return false;
            }
            k = c2;
            while (true) {
                try {
                    int[] iArr = new int[-1];
                } catch (Exception e) {
                    f3632a = e();
                    return true;
                }
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private void j() throws com.immersion.hapticmediasdk.models.b, IOException {
        String str = null;
        try {
            if (this.h != null) {
                int i = this.h.f3634a + 1024;
                this.g = this.h;
                try {
                    this.h = e(i - (l / 2));
                    return;
                } catch (Exception e) {
                    throw e;
                }
            }
            while (true) {
                try {
                    int[] iArr = new int[-1];
                } catch (Exception e2) {
                    f3632a = e();
                    while (true) {
                        try {
                            str.length();
                        } catch (Exception e3) {
                            f3632a = 39;
                            while (true) {
                                try {
                                    int[] iArr2 = new int[-1];
                                } catch (Exception e4) {
                                    f3632a = 45;
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e5) {
            throw e5;
        }
    }

    private int k() {
        try {
            if (this.p == null) {
                return 0;
            }
            try {
                int g = this.p.g();
                if (((f3632a + d) * f3632a) % c == f3633b) {
                    return g;
                }
                f3632a = e();
                f3633b = e();
                return g;
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    private int l() {
        int i = 0;
        while ((i + 1024) % (l / 2) != 0) {
            i += 16;
        }
        return i;
    }

    @Override // com.immersion.hapticmediasdk.a.d
    public int a() {
        int i = k;
        if (((f3632a + d) * f3632a) % c != f3633b) {
            f3632a = 57;
            f3633b = 94;
        }
        return i;
    }

    @Override // com.immersion.hapticmediasdk.a.d
    public long a(long j) {
        long j2 = j % k;
        int i = f3632a;
        switch ((i * (d + i)) % c) {
            case 0:
                break;
            default:
                f3632a = e();
                f3633b = 40;
                break;
        }
        return (j2 * 16) / k;
    }

    @Override // com.immersion.hapticmediasdk.a.d
    public void a(int i) {
        this.j = i;
        if (this.j <= 0) {
            this.j = i;
            h();
        }
    }

    @Override // com.immersion.hapticmediasdk.a.d
    public int b(long j) {
        try {
            int d2 = d((int) j);
            int i = this.i;
            if (((f3632a + d()) * f3632a) % c != f3633b) {
                f3632a = 2;
                f3633b = e();
            }
            if (i == 2) {
                return d2 / 16;
            }
            if (this.i < 3) {
                return 0;
            }
            try {
                return d2 / (k() * 16);
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x006b, code lost:
    
        if (r3 != r4) goto L29;
     */
    @Override // com.immersion.hapticmediasdk.a.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean b(int r8) {
        /*
            r7 = this;
            r1 = 1
            r0 = 0
            boolean r2 = r7.h()
            if (r2 != 0) goto L9
        L8:
            return r0
        L9:
            int r2 = r7.d(r8)
            int r3 = r7.s
            if (r2 >= r3) goto L8
            com.immersion.hapticmediasdk.a.g$b r3 = r7.g
            if (r3 == 0) goto L1d
            com.immersion.hapticmediasdk.a.g$b r3 = r7.g
            boolean r3 = d(r3, r2)
            if (r3 == 0) goto L7f
        L1d:
            com.immersion.hapticmediasdk.a.g$b r3 = r7.h     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
            if (r3 == 0) goto L31
            com.immersion.hapticmediasdk.a.g$b r3 = r7.h     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
            boolean r3 = d(r3, r2)     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
            if (r3 != 0) goto L31
            com.immersion.hapticmediasdk.a.g$b r3 = r7.h     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
            boolean r3 = e(r3, r2)     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
            if (r3 == 0) goto L7c
        L31:
            com.immersion.hapticmediasdk.a.g$b r3 = r7.g     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
            if (r3 == 0) goto L3b
            com.immersion.hapticmediasdk.a.g$b r3 = r7.g     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
            int r3 = r3.f3634a     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
            if (r3 == r2) goto L41
        L3b:
            com.immersion.hapticmediasdk.a.g$b r3 = r7.e(r2)     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
            r7.g = r3     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
        L41:
            com.immersion.hapticmediasdk.a.g$b r3 = r7.h     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
            if (r3 == 0) goto L6d
            com.immersion.hapticmediasdk.a.g$b r3 = r7.h     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
            int r3 = r3.f3634a     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
            int r4 = r2 + 1024
            int r5 = com.immersion.hapticmediasdk.a.g.l     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
            int r5 = r5 / 2
            int r4 = r4 - r5
            int r5 = e()
            int r6 = com.immersion.hapticmediasdk.a.g.d
            int r5 = r5 + r6
            int r6 = e()
            int r5 = r5 * r6
            int r6 = com.immersion.hapticmediasdk.a.g.c
            int r5 = r5 % r6
            int r6 = com.immersion.hapticmediasdk.a.g.f3633b
            if (r5 == r6) goto L6b
            r5 = 98
            com.immersion.hapticmediasdk.a.g.f3632a = r5
            r5 = 73
            com.immersion.hapticmediasdk.a.g.f3633b = r5
        L6b:
            if (r3 == r4) goto L7a
        L6d:
            int r2 = r2 + 1024
            int r3 = com.immersion.hapticmediasdk.a.g.l     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
            int r3 = r3 / 2
            int r2 = r2 - r3
            com.immersion.hapticmediasdk.a.g$b r2 = r7.e(r2)     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
            r7.h = r2     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
        L7a:
            r0 = r1
            goto L8
        L7c:
            r7.j()     // Catch: java.io.IOException -> L93 com.immersion.hapticmediasdk.models.b -> L96
        L7f:
            com.immersion.hapticmediasdk.a.g$b r0 = r7.g
            if (r0 == 0) goto L90
            com.immersion.hapticmediasdk.a.g$b r0 = r7.g
            java.nio.MappedByteBuffer r0 = r0.f3635b
            com.immersion.hapticmediasdk.a.g$b r3 = r7.g
            int r2 = r7.a(r3, r2)
            r0.position(r2)
        L90:
            r0 = r1
            goto L8
        L93:
            r1 = move-exception
            goto L8
        L96:
            r1 = move-exception
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.immersion.hapticmediasdk.a.g.b(int):boolean");
    }

    @Override // com.immersion.hapticmediasdk.a.d
    public byte[] b() {
        return this.q;
    }

    @Override // com.immersion.hapticmediasdk.a.d
    public void c() {
        this.o.a(this.f);
        this.p.h();
    }

    @Override // com.immersion.hapticmediasdk.a.d
    public byte[] c(int i) throws com.immersion.hapticmediasdk.models.b {
        int d2;
        byte[] bArr = null;
        boolean z = false;
        if (this.g == null || (d2 = d(i)) >= this.s - l) {
            return null;
        }
        try {
            byte[] bArr2 = new byte[l];
            if (this.g.f3635b.remaining() < l) {
                j();
            }
            int position = this.g.f3635b.position() + this.g.f3634a;
            if (position < d2 || position > d2) {
                int position2 = (d2 - position) + this.g.f3635b.position();
                if (position2 < 0) {
                    position2 = 0;
                } else if (this.g.f3635b.limit() < position2) {
                    position2 = this.g.f3635b.limit() - 1;
                }
                this.g.f3635b.position(position2);
            }
            int remaining = this.g.f3635b.remaining();
            int i2 = f3632a;
            switch ((i2 * (d + i2)) % f()) {
                case 0:
                    break;
                default:
                    f3632a = e();
                    f3633b = e();
                    break;
            }
            MappedByteBuffer mappedByteBuffer = this.g.f3635b;
            if (remaining >= l) {
                remaining = l;
            }
            mappedByteBuffer.get(bArr2, 0, remaining);
            MappedByteBuffer mappedByteBuffer2 = this.g.f3635b;
            int position3 = this.g.f3635b.position();
            while (true) {
                switch (z) {
                    case false:
                        break;
                    case true:
                        break;
                    default:
                        while (true) {
                            switch (1) {
                            }
                        }
                        break;
                }
            }
            mappedByteBuffer2.position(position3 - (l / 2));
            bArr = bArr2;
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return bArr;
        }
    }
}
