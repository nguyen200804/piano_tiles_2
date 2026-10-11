package com.immersion.hapticmediasdk;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import com.immersion.hapticmediasdk.a;
import com.immersion.hapticmediasdk.a.f;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public static int f3652a = 37;

    /* renamed from: b, reason: collision with root package name */
    public static int f3653b = 1;
    public static int c = 2;
    public static int d;
    private final Object e;
    private final Object f;
    private long g;
    private long h;
    private Handler i;
    private volatile a.EnumC0204a j;
    private f k;
    private String l;
    private boolean m;
    private Context n;
    private com.immersion.hapticmediasdk.b.d o;

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f3654a = new int[a.EnumC0204a.values().length];

        /* renamed from: b, reason: collision with root package name */
        public static int f3655b = 88;
        public static int c = 1;
        public static int d = 2;

        static {
            try {
                f3654a[a.EnumC0204a.f3608a.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3654a[a.EnumC0204a.f3609b.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            while (true) {
                switch (1) {
                    case 0:
                        break;
                    default:
                        while (true) {
                            boolean z = false;
                            switch (z) {
                            }
                        }
                        break;
                    case 1:
                        try {
                            f3654a[a.EnumC0204a.c.ordinal()] = 3;
                        } catch (NoSuchFieldError e3) {
                        }
                        try {
                            f3654a[a.EnumC0204a.f.ordinal()] = 4;
                            int i = f3655b;
                            switch ((i * (c + i)) % d) {
                                case 0:
                                    break;
                                default:
                                    f3655b = 57;
                                    c = 26;
                                    break;
                            }
                        } catch (NoSuchFieldError e4) {
                        }
                        try {
                            f3654a[a.EnumC0204a.g.ordinal()] = 5;
                        } catch (NoSuchFieldError e5) {
                        }
                        try {
                            f3654a[a.EnumC0204a.h.ordinal()] = 6;
                        } catch (NoSuchFieldError e6) {
                        }
                        try {
                            f3654a[a.EnumC0204a.d.ordinal()] = 7;
                            return;
                        } catch (NoSuchFieldError e7) {
                            return;
                        }
                }
            }
        }
    }

    public d(Handler handler, Context context, com.immersion.hapticmediasdk.b.d dVar) {
        if (((f3652a + f3653b) * f3652a) % c != a()) {
            f3652a = 47;
            f3653b = b();
        }
        try {
            this.e = new Object();
            try {
                this.f = new Object();
                this.j = a.EnumC0204a.f3608a;
                this.i = handler;
                this.n = context;
                this.o = dVar;
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public static int a() {
        return 0;
    }

    public static int b() {
        return 54;
    }

    private int b(a.EnumC0204a enumC0204a) {
        int i = f3652a;
        switch ((i * (f3653b + i)) % c) {
            case 0:
                break;
            default:
                f3652a = 19;
                f3653b = b();
                break;
        }
        try {
            try {
                this.i.removeCallbacks(this);
                this.j = enumC0204a;
                if (this.l == null) {
                    return -4;
                }
                this.k = new f(this.i.getLooper(), this);
                Handler b2 = this.k.b();
                this.k.a(new com.immersion.hapticmediasdk.a.c(this.n, this.l, b2, this.m, this.o));
                return 0;
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public static int c() {
        return 1;
    }

    private int h() {
        try {
            this.i.removeCallbacks(this);
            if (this.k != null && k() != 0) {
                com.immersion.hapticmediasdk.b.b.d("MediaTaskManager", "Could not dispose haptics, reset anyway.");
            }
            try {
                this.l = null;
                this.g = 0L;
                this.j = a.EnumC0204a.f3608a;
                int i = f3652a;
                switch ((i * (c() + i)) % c) {
                    case 0:
                        return 0;
                    default:
                        f3652a = b();
                        f3653b = 55;
                        return 0;
                }
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    private int i() {
        this.i.removeCallbacks(this);
        int f = this.k.f();
        if (f == 0) {
            this.j = a.EnumC0204a.c;
            Handler handler = this.i;
            int i = f3652a;
            switch ((i * (f3653b + i)) % c) {
                case 0:
                    break;
                default:
                    f3652a = b();
                    d = 68;
                    break;
            }
            handler.postDelayed(this, 1500L);
        }
        return f;
    }

    private int j() {
        try {
            this.i.removeCallbacks(this);
            this.g = 0L;
            if (((f3652a + f3653b) * f3652a) % c != d) {
                f3652a = b();
                d = b();
            }
            try {
                int k = this.k.k();
                if (k == 0) {
                    this.j = a.EnumC0204a.d;
                }
                return k;
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    private int k() {
        int j = j();
        if (j == 0) {
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
            this.k.a(this.i);
            if (((f3652a + f3653b) * f3652a) % c != d) {
                f3652a = 80;
                d = 44;
            }
            this.k = null;
        }
        return j;
    }

    private int l() {
        int i = 2;
        try {
            this.i.removeCallbacks(this);
            try {
                int c2 = this.k.c();
                if (c2 == 0) {
                    while (true) {
                        try {
                            i /= 0;
                        } catch (Exception e) {
                            f3652a = b();
                            this.j = a.EnumC0204a.f;
                        }
                    }
                }
                return c2;
            } catch (Exception e2) {
                throw e2;
            }
        } catch (Exception e3) {
            throw e3;
        }
    }

    private int m() {
        boolean z = false;
        this.i.removeCallbacks(this);
        if (!this.i.postDelayed(this, 1500L)) {
            return -1;
        }
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
        if (((b() + f3653b) * b()) % c == d) {
            return 0;
        }
        f3652a = 70;
        d = 50;
        return 0;
    }

    private int n() {
        try {
            int c2 = this.k.c();
            if (c2 == 0) {
                if (((f3652a + f3653b) * f3652a) % c != a()) {
                    f3652a = 64;
                    d = 32;
                }
                this.j = a.EnumC0204a.g;
            }
            return c2;
        } catch (Exception e) {
            throw e;
        }
    }

    private int o() {
        try {
            int c2 = this.k.c();
            if (c2 == 0) {
                this.j = a.EnumC0204a.h;
            }
            if (((f3652a + f3653b) * f3652a) % c != d) {
                f3652a = 29;
                d = b();
            }
            return c2;
        } catch (Exception e) {
            throw e;
        }
    }

    private int p() {
        if (((f3652a + f3653b) * f3652a) % c != d) {
            f3652a = 78;
            d = 14;
        }
        int i = i();
        if (i == 0) {
            i = m();
        }
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
        return i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public int a(a.EnumC0204a enumC0204a) {
        boolean z = false;
        int i = -1;
        synchronized (this.e) {
            if (enumC0204a != a.EnumC0204a.f3608a) {
                switch (a.f3654a[this.j.ordinal()]) {
                    case 1:
                        if (enumC0204a == a.EnumC0204a.f3609b) {
                            i = b(enumC0204a);
                            break;
                        }
                        break;
                    case 2:
                        if (enumC0204a != a.EnumC0204a.c) {
                            if (enumC0204a != a.EnumC0204a.d) {
                                if (enumC0204a == a.EnumC0204a.e) {
                                    i = j();
                                    this.j = a.EnumC0204a.e;
                                    break;
                                }
                            } else {
                                i = j();
                                break;
                            }
                        } else {
                            i = p();
                            break;
                        }
                        break;
                    case 3:
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
                        if (enumC0204a != a.EnumC0204a.c) {
                            if (enumC0204a != a.EnumC0204a.f) {
                                if (enumC0204a != a.EnumC0204a.g) {
                                    if (enumC0204a != a.EnumC0204a.h) {
                                        if (enumC0204a != a.EnumC0204a.d) {
                                            if (enumC0204a == a.EnumC0204a.e) {
                                                i = j();
                                                this.j = a.EnumC0204a.e;
                                                break;
                                            }
                                        } else {
                                            i = j();
                                            break;
                                        }
                                    } else {
                                        i = o();
                                        com.immersion.hapticmediasdk.b.b.c("MediaTaskManager", "Haptic playback is paused due to slow data buffering...");
                                        break;
                                    }
                                } else {
                                    com.immersion.hapticmediasdk.b.b.c("MediaTaskManager", "Haptic playback is paused due to update time-out. Call update() to resume playback");
                                    i = n();
                                    break;
                                }
                            } else {
                                i = l();
                                break;
                            }
                        } else {
                            i = m();
                            break;
                        }
                        break;
                    case 4:
                        if (enumC0204a != a.EnumC0204a.c) {
                            if (enumC0204a != a.EnumC0204a.f) {
                                if (enumC0204a != a.EnumC0204a.d) {
                                    if (enumC0204a == a.EnumC0204a.e) {
                                        i = j();
                                        this.j = a.EnumC0204a.e;
                                        break;
                                    }
                                } else {
                                    i = j();
                                    break;
                                }
                            } else {
                                i = 0;
                                break;
                            }
                        } else {
                            this.k.a((int) this.g);
                            i = p();
                            break;
                        }
                        break;
                    case 5:
                        if (enumC0204a != a.EnumC0204a.g) {
                            if (enumC0204a != a.EnumC0204a.c) {
                                if (enumC0204a != a.EnumC0204a.f) {
                                    if (enumC0204a != a.EnumC0204a.d) {
                                        if (enumC0204a == a.EnumC0204a.e) {
                                            i = j();
                                            this.j = a.EnumC0204a.e;
                                            break;
                                        }
                                    } else {
                                        i = j();
                                        break;
                                    }
                                } else {
                                    this.j = a.EnumC0204a.f;
                                    i = 0;
                                    break;
                                }
                            } else {
                                this.k.a((int) this.g);
                                i = p();
                                break;
                            }
                        } else {
                            i = 0;
                            break;
                        }
                        break;
                    case 6:
                        if (enumC0204a != a.EnumC0204a.h) {
                            if (enumC0204a != a.EnumC0204a.c) {
                                if (enumC0204a != a.EnumC0204a.f) {
                                    if (enumC0204a != a.EnumC0204a.d) {
                                        if (enumC0204a == a.EnumC0204a.e) {
                                            i = j();
                                            this.j = a.EnumC0204a.e;
                                            break;
                                        }
                                    } else {
                                        i = j();
                                        break;
                                    }
                                } else {
                                    this.j = a.EnumC0204a.f;
                                    i = 0;
                                    break;
                                }
                            } else {
                                this.k.a((int) this.g);
                                i = p();
                                break;
                            }
                        } else {
                            i = 0;
                            break;
                        }
                        break;
                    case 7:
                        if (enumC0204a != a.EnumC0204a.c) {
                            if (enumC0204a == a.EnumC0204a.d) {
                                i = 0;
                                break;
                            }
                        } else {
                            i = p();
                            break;
                        }
                        break;
                }
            } else {
                i = h();
            }
        }
        return i;
    }

    public void a(long j) {
        synchronized (this.f) {
            if (this.j == a.EnumC0204a.d) {
                this.k.d();
            }
            this.h = SystemClock.uptimeMillis();
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
            this.g = j;
        }
    }

    public void a(String str, boolean z) {
        boolean z2 = false;
        synchronized (this.e) {
            try {
                this.l = str;
                this.m = z;
            } catch (Throwable th) {
                while (true) {
                    switch (z2) {
                        case false:
                            break;
                        case true:
                            break;
                        default:
                            while (true) {
                                switch (z2) {
                                }
                            }
                    }
                }
                throw th;
            }
        }
    }

    public long d() {
        long j;
        synchronized (this.f) {
            try {
                j = this.g;
            } catch (Throwable th) {
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
                    }
                }
                throw th;
            }
        }
        return j;
    }

    public long e() {
        long j;
        synchronized (this.f) {
            try {
                j = this.h;
            } catch (Throwable th) {
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
                throw th;
            }
        }
        return j;
    }

    public void f() {
        synchronized (this.f) {
            a.EnumC0204a enumC0204a = this.j;
            while (true) {
                switch (1) {
                    case 0:
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
            if (enumC0204a == a.EnumC0204a.d) {
                this.k.d();
            }
            this.h = SystemClock.uptimeMillis();
        }
    }

    public a.EnumC0204a g() {
        a.EnumC0204a enumC0204a;
        synchronized (this.e) {
            enumC0204a = this.j;
        }
        return enumC0204a;
    }

    @Override // java.lang.Runnable
    public void run() {
        System.currentTimeMillis();
        if (((f3652a + f3653b) * f3652a) % c != d) {
            f3652a = 91;
            d = 30;
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
        a(a.EnumC0204a.g);
    }
}
