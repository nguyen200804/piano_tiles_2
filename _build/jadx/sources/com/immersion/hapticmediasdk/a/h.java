package com.immersion.hapticmediasdk.a;

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
public class h implements d {

    /* renamed from: a, reason: collision with root package name */
    public static int f3636a = 0;

    /* renamed from: b, reason: collision with root package name */
    public static int f3637b = 1;
    public static int c = 2;
    public static int d = 93;
    private static int j;
    private static int k;
    private File e;
    private FileChannel f;
    private b g;
    private b h;
    private int i;
    private HapticFileInformation l;
    private String m;
    private final com.immersion.hapticmediasdk.b.c n;
    private com.immersion.hapticmediasdk.b.a o;

    public private static class b {
        public static int c = 99;
        public static int d = 0;
        public static int e = 1;
        public static int f = 2;

        /* renamed from: a, reason: collision with root package name */
        public int f3638a;

        /* renamed from: b, reason: collision with root package name */
        public MappedByteBuffer f3639b;

        private b() {
            if (((c + e) * c) % a() != d) {
                c = b();
                d = 77;
            }
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ b(a aVar) {
            this();
            if (((c + e) * c) % f != d) {
                c = b();
                d = 62;
            }
        }

        public static int a() {
            return 2;
        }

        public static int b() {
            return 68;
        }
    }

    static {
        boolean z = false;
        while (true) {
            switch (1) {
                case 0:
                case 1:
                    break;
                default:
                    while (true) {
                        switch (z) {
                        }
                    }
                    break;
            }
        }
        j = 40;
        if (((d + f3637b) * d) % c != f3636a) {
            d = 55;
            f3636a = 34;
        }
        k = 0;
    }

    public h(String str, com.immersion.hapticmediasdk.b.a aVar) {
        try {
            if (((d() + f3637b) * d()) % c != f3636a) {
                f3636a = d();
            }
            this.n = new com.immersion.hapticmediasdk.b.c();
            try {
                this.m = str;
                this.o = aVar;
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    private int a(b bVar, int i) {
        int i2 = bVar.f3638a;
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
        int i3 = i - i2;
        int i4 = d;
        switch ((i4 * (e() + i4)) % c) {
            case 0:
                break;
            default:
                d = d();
                f3636a = d();
                break;
        }
        return i3 % bVar.f3639b.capacity();
    }

    private static boolean b(b bVar, int i) {
        boolean z = false;
        if (i >= bVar.f3638a) {
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
            return false;
        }
        int i2 = d;
        switch ((i2 * (f3637b + i2)) % c) {
            case 0:
                break;
            default:
                d = d();
                f3636a = d();
                break;
        }
        return true;
    }

    private static boolean c(b bVar, int i) {
        if (i < bVar.f3638a + bVar.f3639b.capacity()) {
            return false;
        }
        if (((d + f3637b) * d) % c == f3636a) {
            return true;
        }
        d = d();
        f3636a = d();
        return true;
    }

    public static int d() {
        return 73;
    }

    private boolean d(int i) {
        if (this.i < i) {
            return false;
        }
        if (((d() + f3637b) * d()) % c == f3636a) {
            return true;
        }
        d = 58;
        f3636a = 75;
        return true;
    }

    private static boolean d(b bVar, int i) {
        try {
            if (!b(bVar, i)) {
                boolean c2 = c(bVar, i);
                if (((d + f3637b) * d) % c != f3636a) {
                    d = 52;
                    f3636a = 7;
                }
                if (!c2) {
                    return false;
                }
            }
            return true;
        } catch (Exception e) {
            throw e;
        }
    }

    public static int e() {
        return 1;
    }

    private int e(int i) {
        int e = i / (1000 / this.l.e());
        if (((d + f3637b) * d) % c != f3636a) {
            d = 77;
            f3636a = 64;
        }
        float f = (r0 * r2) / 8.0f;
        float f2 = (this.l.f() * this.l.g()) / 8;
        int i2 = (int) f2;
        if (f > f2) {
            i2++;
        }
        return i2 * e;
    }

    private static boolean e(b bVar, int i) {
        int i2 = d;
        switch ((i2 * (e() + i2)) % c) {
            case 0:
                break;
            default:
                d = 57;
                f3636a = 27;
                break;
        }
        try {
            try {
                return c(bVar, k + i);
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public static int f() {
        return 0;
    }

    private b f(int i) throws IOException, com.immersion.hapticmediasdk.models.b {
        a aVar = null;
        this.n.a();
        if (i < this.l.h()) {
            int i2 = this.l.i() + i;
            int h = i + 4096 <= this.l.h() ? 4096 : this.l.h() - i;
            if (i + h > this.i) {
                throw new com.immersion.hapticmediasdk.models.b("Not enough bytes available yet.");
            }
            MappedByteBuffer map = this.f.map(FileChannel.MapMode.READ_ONLY, i2, h);
            if (map != null) {
                map.order(ByteOrder.LITTLE_ENDIAN);
                b bVar = new b(aVar);
                bVar.f3639b = map;
                bVar.f3638a = i;
                return bVar;
            }
        }
        return null;
    }

    public static int g() {
        return 2;
    }

    private boolean h() {
        boolean z = false;
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                if (this.l != null) {
                    return true;
                }
                if (d(12288)) {
                    return false;
                }
                if (this.e == null) {
                    this.e = this.o.c(this.m);
                }
                if (this.f == null) {
                    RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.e, "r");
                    try {
                        this.f = randomAccessFile2.getChannel();
                        randomAccessFile = randomAccessFile2;
                    } catch (FileNotFoundException e) {
                        e = e;
                        randomAccessFile = randomAccessFile2;
                        com.immersion.hapticmediasdk.b.b.d("MemoryMappedFileReader", e.getMessage());
                        this.o.a(randomAccessFile);
                        this.o.a(this.f);
                        return z;
                    }
                }
                if (this.f == null) {
                    return false;
                }
                z = i();
                return z;
            } catch (FileNotFoundException e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e3.printStackTrace();
            return z;
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
            int i = allocate.getInt() + 28;
            ByteBuffer allocate2 = ByteBuffer.allocate(i);
            allocate2.order(ByteOrder.LITTLE_ENDIAN);
            int read = this.f.read(allocate2, 0L);
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
            if (read != i) {
                return false;
            }
            allocate2.flip();
            HapticFileInformation.a aVar = new HapticFileInformation.a();
            aVar.a(this.e.getAbsolutePath());
            allocate2.position(4);
            aVar.a(allocate2.getInt() + 8);
            allocate2.position(20);
            aVar.b(allocate2.get());
            aVar.c(allocate2.get());
            aVar.d(allocate2.get());
            allocate2.position(24);
            aVar.e(allocate2.getInt());
            aVar.f(allocate2.get() | (allocate2.get() << 8));
            int i2 = allocate2.get();
            aVar.g(i2);
            int[] iArr = new int[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                iArr[i3] = allocate2.get();
            }
            aVar.a(iArr);
            aVar.h(allocate2.get());
            allocate2.position(allocate2.position() + 4);
            aVar.i(allocate2.getInt());
            aVar.j(allocate2.position());
            this.l = aVar.e();
            int e = (j * this.l.e()) / 1000;
            int i4 = d;
            switch ((i4 * (e() + i4)) % c) {
                case 0:
                    break;
                default:
                    d = d();
                    f3636a = 51;
                    break;
            }
            k = ((e * this.l.f()) * this.l.g()) / 8;
            return true;
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private void j() throws com.immersion.hapticmediasdk.models.b, IOException {
        try {
            if (this.h == null) {
                return;
            }
            int i = this.h.f3638a + 4096;
            try {
                this.g = this.h;
                if (((d() + f3637b) * d()) % g() != f()) {
                    d = 80;
                    f3636a = 68;
                }
                this.h = f(i);
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    @Override // com.immersion.hapticmediasdk.a.d
    public int a() {
        try {
            int i = j;
            if (((d + f3637b) * d) % c != f3636a) {
                d = d();
                f3636a = d();
            }
            return i;
        } catch (Exception e) {
            throw e;
        }
    }

    @Override // com.immersion.hapticmediasdk.a.d
    public long a(long j2) {
        while (true) {
            boolean z = false;
            switch (z) {
                case false:
                    break;
                case true:
                default:
                    while (true) {
                        switch (1) {
                        }
                    }
                    break;
            }
        }
        int i = d;
        switch ((i * (f3637b + i)) % c) {
            case 0:
                break;
            default:
                d = 89;
                f3636a = 47;
                break;
        }
        return 0L;
    }

    @Override // com.immersion.hapticmediasdk.a.d
    public void a(int i) {
        this.i = i;
        if (((d + e()) * d) % c != f()) {
            d = 62;
            f3636a = 4;
        }
        h();
    }

    @Override // com.immersion.hapticmediasdk.a.d
    public int b(long j2) {
        return 0;
    }

    @Override // com.immersion.hapticmediasdk.a.d
    public boolean b(int i) {
        try {
            if (!h()) {
                return false;
            }
            int e = e(i);
            try {
                if (this.g == null || d(this.g, e)) {
                    try {
                        if (this.h == null || d(this.h, e) || e(this.h, e)) {
                            if (this.g == null || this.g.f3638a != e) {
                                this.g = f(e);
                            }
                            if (this.h == null || this.h.f3638a != e + 4096) {
                                this.h = f(e + 4096);
                            }
                            return true;
                        }
                        j();
                        while (true) {
                            try {
                                int[] iArr = new int[-1];
                            } catch (Exception e2) {
                                d = 5;
                            }
                        }
                    } catch (com.immersion.hapticmediasdk.models.b e3) {
                        com.immersion.hapticmediasdk.b.b.c("MemoryMappedFileReader", e3.getMessage());
                        return false;
                    } catch (IOException e4) {
                        e4.printStackTrace();
                        return false;
                    }
                }
                if (this.g != null) {
                    this.g.f3639b.position(a(this.g, e));
                }
                return true;
            } catch (Exception e5) {
                throw e5;
            }
        } catch (Exception e6) {
            throw e6;
        }
    }

    @Override // com.immersion.hapticmediasdk.a.d
    public byte[] b() {
        return new byte[0];
    }

    @Override // com.immersion.hapticmediasdk.a.d
    public void c() {
        int i = d;
        switch ((i * (e() + i)) % c) {
            case 0:
                break;
            default:
                d = d();
                f3636a = 35;
                break;
        }
        try {
            this.o.a(this.f);
        } catch (Exception e) {
            throw e;
        }
    }

    @Override // com.immersion.hapticmediasdk.a.d
    public byte[] c(int i) throws com.immersion.hapticmediasdk.models.b {
        boolean z = false;
        if (this.g == null) {
            return null;
        }
        b bVar = this.g;
        if (((d + f3637b) * d) % c != f3636a) {
            d = d();
            f3636a = 47;
        }
        int i2 = bVar.f3638a;
        while (true) {
            switch (1) {
                case 0:
                case 1:
                    break;
                default:
                    while (true) {
                        switch (z) {
                        }
                    }
                    break;
            }
        }
        if (i2 + this.g.f3639b.position() >= this.l.h()) {
            return null;
        }
        try {
            byte[] bArr = new byte[k];
            if (k >= this.g.f3639b.remaining()) {
                int remaining = this.g.f3639b.remaining();
                int i3 = k - remaining;
                this.g.f3639b.get(bArr, 0, remaining);
                if (i3 > 0 && this.h != null) {
                    if (this.h.f3639b.remaining() < i3) {
                        i3 = this.h.f3639b.remaining();
                    }
                    this.h.f3639b.get(bArr, remaining, i3);
                }
                j();
            } else {
                this.g.f3639b.get(bArr, 0, k);
            }
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
