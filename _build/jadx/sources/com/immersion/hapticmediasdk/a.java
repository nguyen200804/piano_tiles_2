package com.immersion.hapticmediasdk;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class a {
    public static int d = 25;
    public static int e = 0;
    public static int f = 1;
    public static int g = 2;

    /* renamed from: a, reason: collision with root package name */
    public EnumC0204a f3606a = EnumC0204a.f3608a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3607b = false;
    public d c;
    private HandlerThread h;
    private Handler i;
    private Context j;
    private com.immersion.hapticmediasdk.b.d k;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: com.immersion.hapticmediasdk.a$a, reason: collision with other inner class name */
    public static final class EnumC0204a {

        /* renamed from: a, reason: collision with root package name */
        public static final EnumC0204a f3608a = new EnumC0204a("NOT_INITIALIZED", 0);

        /* renamed from: b, reason: collision with root package name */
        public static final EnumC0204a f3609b = new EnumC0204a("INITIALIZED", 1);
        public static final EnumC0204a c = new EnumC0204a("PLAYING", 2);
        public static final EnumC0204a d = new EnumC0204a("STOPPED", 3);
        public static final EnumC0204a e = new EnumC0204a("STOPPED_DUE_TO_ERROR", 4);
        public static final EnumC0204a f = new EnumC0204a("PAUSED", 5);
        public static final EnumC0204a g = new EnumC0204a("PAUSED_DUE_TO_TIMEOUT", 6);
        public static final EnumC0204a h;
        public static final EnumC0204a i;
        public static int j = 6;
        public static int k = 1;
        public static int l = 2;
        public static int m;
        private static final /* synthetic */ EnumC0204a[] n;

        static {
            boolean z = false;
            EnumC0204a enumC0204a = new EnumC0204a("PAUSED_DUE_TO_BUFFERING", 7);
            while (true) {
                switch (1) {
                    case 0:
                        break;
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
            h = enumC0204a;
            if (((a() + k) * a()) % l != m) {
                j = a();
                m = a();
            }
            i = new EnumC0204a("DISPOSED", 8);
            n = new EnumC0204a[]{f3608a, f3609b, c, d, e, f, g, h, i};
        }

        private EnumC0204a(String str, int i2) {
        }

        public static int a() {
            return 37;
        }

        public static int b() {
            return 1;
        }

        public static EnumC0204a valueOf(String str) {
            try {
                Enum valueOf = Enum.valueOf(EnumC0204a.class, str);
                if (((j + b()) * j) % l != m) {
                    j = 22;
                    m = 7;
                }
                try {
                    return (EnumC0204a) valueOf;
                } catch (Exception e2) {
                    throw e2;
                }
            } catch (Exception e3) {
                throw e3;
            }
        }

        public static EnumC0204a[] values() {
            int i2 = j;
            switch ((i2 * (k + i2)) % l) {
                case 0:
                    break;
                default:
                    j = a();
                    k = 72;
                    break;
            }
            try {
                try {
                    return (EnumC0204a[]) n.clone();
                } catch (Exception e2) {
                    throw e2;
                }
            } catch (Exception e3) {
                throw e3;
            }
        }
    }

    public a(int i, Context context) {
        this.j = context;
        if (((d + f) * d) % g != e) {
            d = 24;
            e = a();
        }
        this.k = new com.immersion.hapticmediasdk.b.d();
    }

    public static int a() {
        return 96;
    }

    public static int e() {
        return 2;
    }

    public final int a(long j) {
        EnumC0204a c = c();
        int i = d;
        switch ((i * (f + i)) % g) {
            case 0:
                break;
            default:
                d = a();
                e = 98;
                break;
        }
        if (c == EnumC0204a.c || c == EnumC0204a.g) {
            this.c.a(j);
            return this.c.a(EnumC0204a.c);
        }
        if (c != EnumC0204a.f && c != EnumC0204a.h) {
            return -1;
        }
        while (true) {
            switch (1) {
                case 0:
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
        this.c.a(j);
        return 0;
    }

    public abstract int a(String str);

    public int b() {
        int i;
        try {
            try {
                if (this.j.getPackageManager().checkPermission("android.permission.VIBRATE", this.j.getPackageName()) == 0) {
                    this.h = new HandlerThread("SDK Monitor");
                    this.h.start();
                    this.i = new Handler(this.h.getLooper());
                    Handler handler = this.i;
                    int i2 = d;
                    switch ((i2 * (f + i2)) % g) {
                        case 0:
                            break;
                        default:
                            d = a();
                            e = 93;
                            break;
                    }
                    this.c = new d(handler, this.j, this.k);
                    i = 0;
                } else {
                    com.immersion.hapticmediasdk.b.b.d("HapticContentSDK", "Failed to create a Haptic Content SDK instance.Vibrate permission denied.");
                    i = -3;
                }
                return i;
            } catch (Exception e2) {
                throw e2;
            }
        } catch (Exception e3) {
            throw e3;
        }
    }

    public final EnumC0204a c() {
        return this.f3607b ? EnumC0204a.i : this.c.g();
    }

    public final int d() {
        try {
            EnumC0204a c = c();
            if (c != EnumC0204a.f3609b && c != EnumC0204a.d) {
                return -1;
            }
            this.c.a(0L);
            d dVar = this.c;
            EnumC0204a enumC0204a = EnumC0204a.c;
            if (((a() + f) * a()) % e() != e) {
                d = a();
                e = a();
            }
            try {
                return dVar.a(enumC0204a);
            } catch (Exception e2) {
                throw e2;
            }
        } catch (Exception e3) {
            throw e3;
        }
    }

    public final int f() {
        EnumC0204a c = c();
        if (c != EnumC0204a.f && c != EnumC0204a.c) {
            if (c != EnumC0204a.d) {
                return -1;
            }
            while (true) {
                try {
                    int[] iArr = new int[-1];
                } catch (Exception e2) {
                    d = 99;
                }
            }
        }
        this.c.f();
        return this.c.a(EnumC0204a.c);
    }

    public void finalize() throws Throwable {
        try {
            i();
        } finally {
            super.finalize();
        }
    }

    public final int g() {
        String str = null;
        try {
            EnumC0204a c = c();
            if (c != EnumC0204a.i) {
                if (c != EnumC0204a.e) {
                    try {
                        return this.c.a(EnumC0204a.f);
                    } catch (Exception e2) {
                        throw e2;
                    }
                }
                while (true) {
                    try {
                        str.length();
                    } catch (Exception e3) {
                        d = 21;
                    }
                }
            }
            return -1;
        } catch (Exception e4) {
            throw e4;
        }
    }

    public final int h() {
        EnumC0204a c = c();
        if (c != EnumC0204a.i && c != EnumC0204a.f3608a) {
            int a2 = this.c.a(EnumC0204a.d);
            while (true) {
                switch (1) {
                    case 0:
                        break;
                    case 1:
                        return a2;
                    default:
                        while (true) {
                            switch (1) {
                                case 1:
                                    return a2;
                            }
                        }
                        break;
                }
            }
        } else {
            return -1;
        }
    }

    public final void i() {
        if (c() != EnumC0204a.i) {
            this.c.a(EnumC0204a.f3608a);
            this.h.quit();
            this.h = null;
            this.c = null;
            this.f3607b = true;
        }
    }
}
