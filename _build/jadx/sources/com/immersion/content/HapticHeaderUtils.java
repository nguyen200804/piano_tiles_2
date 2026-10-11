package com.immersion.content;

import java.nio.ByteBuffer;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class HapticHeaderUtils extends a {

    /* renamed from: b, reason: collision with root package name */
    public static int f3604b = 33;
    public static int c = 1;
    public static int d = 2;
    public static int e;

    /* renamed from: a, reason: collision with root package name */
    long f3605a;
    private byte[] i;
    private int j;

    public HapticHeaderUtils() {
        int i = f3604b;
        switch ((i * (c + i)) % d) {
            case 0:
                break;
            default:
                f3604b = 43;
                c = a();
                break;
        }
        try {
        } catch (Exception e2) {
            throw e2;
        }
    }

    public static int a() {
        return 80;
    }

    private native int calculateBlockRateNative(long j);

    private native int calculateBlockSizeNative(long j);

    private native int calculateByteOffsetIntoHapticDataNative(long j, int i);

    public static int d() {
        return 0;
    }

    private native void disposeNative(long j);

    public static int e() {
        return 1;
    }

    private native String getContentIdNative(long j);

    private native int getEncryptionNative(long j);

    private native int getMajorVersionNumberNative(long j);

    private native int getMinorVersionNumberNative(long j);

    private native int getNumChannelsNative(long j);

    private native long init(byte[] bArr, int i);

    @Override // com.immersion.content.a
    public int a(int i) {
        long j = this.f3605a;
        int a2 = a();
        switch ((a2 * (c + a2)) % d) {
            case 0:
                break;
            default:
                f3604b = 89;
                e = a();
                break;
        }
        return calculateByteOffsetIntoHapticDataNative(j, i);
    }

    @Override // com.immersion.content.a
    public void a(ByteBuffer byteBuffer, int i) {
        this.j = i;
        this.i = new byte[this.j];
        byteBuffer.get(this.i, 0, this.j);
        this.f3605a = init(this.i, this.j);
    }

    @Override // com.immersion.content.a
    public int b() {
        if (((f3604b + c) * f3604b) % d != e) {
            f3604b = a();
            e = 84;
        }
        int calculateBlockSizeNative = calculateBlockSizeNative(this.f3605a);
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        boolean z = false;
                        switch (z) {
                        }
                    }
                    break;
            }
        }
        return calculateBlockSizeNative;
    }

    @Override // com.immersion.content.a
    public int c() {
        if (((f3604b + e()) * f3604b) % d != d()) {
            f3604b = a();
            e = 12;
        }
        return calculateBlockRateNative(this.f3605a);
    }

    @Override // com.immersion.content.a
    public int f() {
        return getMajorVersionNumberNative(this.f3605a);
    }

    @Override // com.immersion.content.a
    public int g() {
        if (((f3604b + e()) * f3604b) % d != e) {
            f3604b = 92;
            e = a();
        }
        try {
            return getNumChannelsNative(this.f3605a);
        } catch (Exception e2) {
            throw e2;
        }
    }

    @Override // com.immersion.content.a
    public void h() {
        boolean z = false;
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
        if (((f3604b + e()) * f3604b) % d != e) {
            f3604b = a();
            e = 92;
        }
        disposeNative(this.f3605a);
    }
}
