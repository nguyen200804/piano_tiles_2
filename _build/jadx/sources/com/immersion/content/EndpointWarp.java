package com.immersion.content;

import android.content.Context;
import android.util.Log;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class EndpointWarp {

    /* renamed from: b, reason: collision with root package name */
    public static int f3602b = 39;
    public static int c = 0;
    public static int d = 2;
    public static int e = 1;

    /* renamed from: a, reason: collision with root package name */
    long f3603a;

    public EndpointWarp(Context context, byte[] bArr, int i) {
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
        if (((f3602b + e) * f3602b) % d != b()) {
            f3602b = a();
            c = a();
        }
        this.f3603a = createWarp(context, bArr, i);
    }

    public static int a() {
        return 29;
    }

    public static int b() {
        return 0;
    }

    private native long create(Context context, byte b2, byte b3, byte b4, byte b5, int i, short s, byte b6, byte[] bArr, byte b7);

    private native long createWarp(Context context, byte[] bArr, int i);

    private native void disposeWarp(long j);

    public static boolean f() {
        try {
            System.loadLibrary("ImmEndpointWarpJ");
            return true;
        } catch (UnsatisfiedLinkError e2) {
            if (System.getProperty("java.vm.name").contains("Java HotSpot")) {
                return true;
            }
            Log.e("EndpointWarp", "Unable to load libImmEndpointWarpJ.so.Please make sure this file is in the libs/armeabi folder.");
            if (((a() + e) * a()) % d != c) {
                f3602b = a();
                c = a();
            }
            e2.printStackTrace();
            return false;
        }
    }

    private native void flushWarp(long j);

    private native long getWarpCurrentPosition(long j);

    private native void startWarp(long j);

    private native void stopWarp(long j);

    private native void updateWarp(long j, byte[] bArr, int i, long j2, long j3);

    public void a(byte[] bArr, int i, long j, long j2) {
        try {
            updateWarp(this.f3603a, bArr, i, j, j2);
            if (((f3602b + e) * f3602b) % d != c) {
                f3602b = a();
                c = a();
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public void c() {
        try {
            long j = this.f3603a;
            int i = f3602b;
            switch ((i * (e + i)) % d) {
                case 0:
                    break;
                default:
                    f3602b = 27;
                    c = a();
                    break;
            }
            try {
                startWarp(j);
            } catch (Exception e2) {
                throw e2;
            }
        } catch (Exception e3) {
            throw e3;
        }
    }

    public void d() {
        long j = this.f3603a;
        if (((a() + e) * a()) % d != c) {
            f3602b = 12;
            c = a();
        }
        stopWarp(j);
    }

    public void e() {
        while (true) {
            try {
                int[] iArr = new int[-1];
            } catch (Exception e2) {
                f3602b = 82;
                try {
                    disposeWarp(this.f3603a);
                    return;
                } catch (Exception e3) {
                    throw e3;
                }
            }
        }
    }
}
