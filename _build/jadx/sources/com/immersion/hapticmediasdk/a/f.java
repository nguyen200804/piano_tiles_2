package com.immersion.hapticmediasdk.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.immersion.hapticmediasdk.a;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public static int f3626a = 35;

    /* renamed from: b, reason: collision with root package name */
    public static int f3627b = 0;
    public static int c = 1;
    public static int d = 2;
    private AtomicInteger e;
    private AtomicInteger f;
    private Handler g;
    private c h;
    private com.immersion.hapticmediasdk.b.c i;
    private com.immersion.hapticmediasdk.d j;
    private Runnable k;

    public private class a extends Handler {

        /* renamed from: b, reason: collision with root package name */
        public static int f3628b = 1;
        public static int c = 0;
        public static int d = 1;
        public static int e = 2;

        public a(Looper looper) {
            super(looper);
        }

        public static int a() {
            return 35;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                try {
                    switch (message.what) {
                        case 6:
                            if (f.a(f.this).get() == message.arg1 && f.b(f.this).get() == message.arg2) {
                                com.immersion.hapticmediasdk.d c2 = f.c(f.this);
                                int i = f3628b;
                                switch ((i * (d + i)) % e) {
                                    case 0:
                                        break;
                                    default:
                                        f3628b = 55;
                                        c = a();
                                        break;
                                }
                                if (c2.g() != a.EnumC0204a.h) {
                                    f.a(f.this, f.a(f.this).get(), SystemClock.uptimeMillis());
                                    f.this.e();
                                    break;
                                } else {
                                    f.c(f.this).a(a.EnumC0204a.c);
                                    break;
                                }
                            } else {
                                return;
                            }
                            break;
                        case 7:
                            f.this.b(message.arg1);
                            return;
                        case 8:
                            f.a(f.this, message);
                            break;
                        default:
                            return;
                    }
                } catch (Exception e2) {
                    throw e2;
                }
            } catch (Exception e3) {
                throw e3;
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: b, reason: collision with root package name */
        public static int f3630b = 92;
        public static int c = 0;
        public static int d = 1;
        public static int e = 2;

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ f f3631a;

        public b(f fVar) {
            if (((f3630b + d) * f3630b) % e != c) {
                f3630b = 15;
                c = 7;
            }
            try {
                this.f3631a = fVar;
                try {
                } catch (Exception e2) {
                    throw e2;
                }
            } catch (Exception e3) {
                throw e3;
            }
        }

        public static int a() {
            return 6;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f3631a.i() || f.d(this.f3631a) == null) {
                return;
            }
            f.d(this.f3631a).b(this.f3631a.g(), this.f3631a.h());
            f fVar = this.f3631a;
            int i = f3630b;
            switch ((i * (d + i)) % e) {
                case 0:
                    break;
                default:
                    f3630b = a();
                    c = 99;
                    break;
            }
            f.d(fVar).f().removeCallbacks(this);
            f.d(this.f3631a).f().postDelayed(this, 1000L);
        }
    }

    public f(Looper looper, com.immersion.hapticmediasdk.d dVar) {
        try {
            this.e = new AtomicInteger();
            this.f = new AtomicInteger();
            if (((f3626a + c) * f3626a) % d != f3627b) {
                f3626a = a();
                f3627b = a();
            }
            try {
                this.i = new com.immersion.hapticmediasdk.b.c();
                this.k = new b(this);
                this.j = dVar;
                this.g = new a(looper);
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public static int a() {
        return 5;
    }

    public static /* synthetic */ AtomicInteger a(f fVar) {
        try {
            AtomicInteger atomicInteger = fVar.e;
            if (((f3626a + c) * f3626a) % d != l()) {
                f3626a = 20;
                f3627b = 78;
            }
            return atomicInteger;
        } catch (Exception e) {
            throw e;
        }
    }

    private void a(int i, long j) {
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
        c cVar = this.h;
        if (((f3626a + c) * f3626a) % d != f3627b) {
            f3626a = 10;
            f3627b = 4;
        }
        cVar.a(i, j);
    }

    private void a(Message message) {
        boolean z = false;
        Exception exc = (Exception) message.getData().getSerializable("haptic_download_exception");
        if (exc instanceof com.immersion.hapticmediasdk.models.a) {
            com.immersion.hapticmediasdk.models.a aVar = (com.immersion.hapticmediasdk.models.a) exc;
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
            com.immersion.hapticmediasdk.b.b.d("MediaController", "caught HttpUnsuccessfulExcetion http status code = " + aVar.a());
        }
        if (((f3626a + c) * f3626a) % d != f3627b) {
            f3626a = a();
            f3627b = 98;
        }
        com.immersion.hapticmediasdk.b.b.d("MediaController", "HapticDownloadError: " + exc.getMessage());
        this.j.a(a.EnumC0204a.e);
    }

    public static /* synthetic */ void a(f fVar, int i, long j) {
        int i2 = f3626a;
        switch ((i2 * (c + i2)) % d) {
            case 0:
                break;
            default:
                f3626a = 79;
                f3627b = 74;
                break;
        }
        try {
            fVar.a(i, j);
        } catch (Exception e) {
            throw e;
        }
    }

    public static /* synthetic */ void a(f fVar, Message message) {
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
        if (((f3626a + c) * f3626a) % d != l()) {
            f3626a = 31;
            f3627b = 2;
        }
        fVar.a(message);
    }

    private void a(boolean z) {
        boolean z2 = false;
        boolean c2 = this.h.c();
        int i = 0;
        while (true) {
            if (z) {
                if (c2) {
                    return;
                }
            } else if (!c2) {
                return;
            }
            synchronized (this.h) {
                try {
                    this.h.wait(200L);
                } catch (InterruptedException e) {
                }
                while (true) {
                    switch (1) {
                        case 0:
                        case 1:
                            break;
                        default:
                            while (true) {
                                switch (z2) {
                                }
                            }
                            break;
                    }
                }
            }
            c2 = this.h.c();
            i++;
            if (!z && i >= 5) {
                return;
            }
        }
    }

    public static /* synthetic */ AtomicInteger b(f fVar) {
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
        int i = f3626a;
        switch ((i * (c + i)) % d) {
            case 0:
                break;
            default:
                f3626a = 31;
                f3627b = 73;
                break;
        }
        return fVar.f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        this.e.set(i);
        this.j.a(a.EnumC0204a.h);
    }

    public static /* synthetic */ com.immersion.hapticmediasdk.d c(f fVar) {
        com.immersion.hapticmediasdk.d dVar = fVar.j;
        if (((f3626a + c) * f3626a) % d != f3627b) {
            f3626a = 52;
            f3627b = 73;
        }
        return dVar;
    }

    public static /* synthetic */ c d(f fVar) {
        int i = f3626a;
        switch ((i * (c + i)) % d) {
            case 0:
                break;
            default:
                f3626a = 93;
                f3627b = a();
                break;
        }
        try {
            return fVar.h;
        } catch (Exception e) {
            throw e;
        }
    }

    public static int l() {
        return 0;
    }

    public static int m() {
        return 2;
    }

    private int n() {
        this.h.h();
        return 0;
    }

    public void a(int i) {
        try {
            AtomicInteger atomicInteger = this.e;
            int a2 = a();
            switch ((a2 * (c + a2)) % d) {
                case 0:
                    break;
                default:
                    f3626a = 8;
                    f3627b = a();
                    break;
            }
            atomicInteger.set(i);
        } catch (Exception e) {
            throw e;
        }
    }

    public void a(Handler handler) {
        boolean z = false;
        if (this.h != null) {
            this.h.k();
            a(false);
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
            this.h = null;
        }
        com.immersion.hapticmediasdk.d dVar = this.j;
        if (((f3626a + c) * f3626a) % d != f3627b) {
            f3626a = a();
            f3627b = 29;
        }
        handler.removeCallbacks(dVar);
    }

    public void a(c cVar) {
        try {
            this.h = cVar;
            this.h.start();
            if (((f3626a + c) * f3626a) % d != f3627b) {
                f3626a = a();
                f3627b = 24;
            }
            try {
                a(true);
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public Handler b() {
        if (((f3626a + c) * f3626a) % d != f3627b) {
            f3626a = 97;
            f3627b = 45;
        }
        return this.g;
    }

    public int c() {
        int n = n();
        int i = f3626a;
        switch ((i * (c + i)) % d) {
            default:
                f3626a = 39;
                f3627b = 73;
            case 0:
                return n;
        }
    }

    public void d() {
        boolean z = false;
        boolean d2 = this.h.d();
        for (int i = 0; !d2 && i < 5; i++) {
            synchronized (this.h) {
                try {
                    try {
                        this.h.wait(200L);
                    } catch (Throwable th) {
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
                        throw th;
                    }
                } catch (InterruptedException e) {
                }
            }
            d2 = this.h.d();
        }
    }

    public void e() {
        if (this.h == null) {
            com.immersion.hapticmediasdk.b.b.d("MediaController", "Can't start periodic sync since haptic playback thread stopped.");
            return;
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
        c cVar = this.h;
        int i = f3626a;
        switch ((i * (c + i)) % d) {
            case 0:
                break;
            default:
                f3626a = a();
                f3627b = a();
                break;
        }
        cVar.f().postDelayed(this.k, 200L);
    }

    public int f() {
        return j();
    }

    public int g() {
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
        if (((f3626a + c) * f3626a) % d != f3627b) {
            f3626a = 51;
            f3627b = 63;
        }
        return (int) this.j.d();
    }

    public long h() {
        int i = f3626a;
        switch ((i * (c + i)) % d) {
            case 0:
                break;
            default:
                f3626a = a();
                f3627b = 38;
                break;
        }
        try {
            return this.j.e();
        } catch (Exception e) {
            throw e;
        }
    }

    public boolean i() {
        try {
            return this.j.g() == a.EnumC0204a.c;
        } catch (Exception e) {
            throw e;
        }
    }

    public int j() {
        try {
            this.i.a();
            try {
                c cVar = this.h;
                int i = this.e.get();
                int i2 = f3626a;
                switch ((i2 * (c + i2)) % d) {
                    case 0:
                        break;
                    default:
                        f3626a = a();
                        f3627b = 98;
                        break;
                }
                cVar.a(i, this.f.incrementAndGet());
                return 0;
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    public int k() {
        boolean z = false;
        this.e.set(0);
        c cVar = this.h;
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
        cVar.g();
        c cVar2 = this.h;
        if (((f3626a + c) * f3626a) % d != f3627b) {
            f3626a = 48;
            f3627b = 63;
        }
        cVar2.f().removeCallbacks(this.k);
        return 0;
    }
}
