package com.mopub.nativesdk.d;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: ThreadManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class s {
    private static Handler c;
    private static HandlerThread d;
    private static Handler e;
    private static HandlerThread f;
    private static Handler g;
    private static HandlerThread h;
    private static Handler i;
    private static HandlerThread j;
    private static Handler k;

    /* renamed from: b, reason: collision with root package name */
    private static ExecutorService f4702b = Executors.newFixedThreadPool(3);

    /* renamed from: a, reason: collision with root package name */
    static HashMap<Object, f> f4701a = new HashMap<>();

    static /* synthetic */ Handler a() {
        return null;
    }

    private s() {
    }

    private static void a(int i2, Runnable runnable, Runnable runnable2, Runnable runnable3, boolean z, long j2) {
        Handler handler;
        if (runnable2 != null) {
            if (c == null) {
                f();
            }
            switch (i2) {
                case 0:
                    if (d == null) {
                        c();
                    }
                    handler = e;
                    break;
                case 1:
                    if (f == null) {
                        d();
                    }
                    handler = g;
                    break;
                case 2:
                    handler = c;
                    break;
                case 3:
                    if (h == null) {
                        e();
                    }
                    handler = i;
                    break;
                case 4:
                    if (j == null) {
                        g();
                    }
                    handler = k;
                    break;
                default:
                    handler = c;
                    break;
            }
            if (handler != null) {
                Looper looper = null;
                if (!z && (looper = Looper.myLooper()) == null) {
                    looper = c.getLooper();
                }
                g gVar = new g(runnable2, runnable3, z, looper);
                v vVar = new v(runnable, z, looper, handler, gVar);
                handler.postDelayed(vVar, j2);
                synchronized (f4701a) {
                    if (runnable == null) {
                        f4701a.put(runnable2, new f(vVar, Integer.valueOf(i2)));
                    } else {
                        f4701a.put(runnable2, new f(gVar, Integer.valueOf(i2)));
                    }
                }
            }
        }
    }

    public static void a(int i2, Runnable runnable) {
        a(i2, null, runnable, null, false, 0L);
    }

    public static void a(int i2, Runnable runnable, long j2) {
        a(i2, null, runnable, null, false, j2);
    }

    public static void a(Runnable runnable) {
        f fVar;
        Runnable d2;
        if (runnable != null && (fVar = f4701a.get(runnable)) != null && (d2 = fVar.d()) != null) {
            switch (fVar.e()) {
                case 0:
                    if (e != null) {
                        e.removeCallbacks(d2);
                        break;
                    }
                    break;
                case 1:
                    if (g != null) {
                        g.removeCallbacks(d2);
                        break;
                    }
                    break;
                case 2:
                    if (c != null) {
                        c.removeCallbacks(d2);
                        break;
                    }
                    break;
                case 3:
                    if (i != null) {
                        i.removeCallbacks(d2);
                        break;
                    }
                    break;
                case 4:
                    if (k != null) {
                        k.removeCallbacks(d2);
                        break;
                    }
                    break;
            }
            try {
                f4701a.remove(runnable);
            } catch (Throwable th) {
            }
        }
    }

    private static synchronized void c() {
        synchronized (s.class) {
            if (d == null) {
                HandlerThread handlerThread = new HandlerThread("BackgroundHandler", 10);
                d = handlerThread;
                handlerThread.start();
                e = new Handler(d.getLooper());
            }
        }
    }

    private static synchronized void d() {
        synchronized (s.class) {
            if (f == null) {
                HandlerThread handlerThread = new HandlerThread("WorkHandler", 5);
                f = handlerThread;
                handlerThread.start();
                g = new Handler(f.getLooper());
            }
        }
    }

    private static synchronized void e() {
        synchronized (s.class) {
            if (h == null) {
                HandlerThread handlerThread = new HandlerThread("sNormalHandler", 0);
                h = handlerThread;
                handlerThread.start();
                i = new Handler(h.getLooper());
            }
        }
    }

    private static synchronized void f() {
        synchronized (s.class) {
            if (c == null) {
                c = new Handler(Looper.getMainLooper());
            }
        }
    }

    private static synchronized void g() {
        synchronized (s.class) {
            if (j == null) {
                HandlerThread handlerThread = new HandlerThread("sSharedPreferencesHandler", 0);
                j = handlerThread;
                handlerThread.start();
                k = new Handler(j.getLooper());
            }
        }
    }

    public static void b(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            a(2, runnable);
        }
    }
}
