package com.android.volley;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* compiled from: VolleyLog.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    public static String f257a = "Volley";

    /* renamed from: b, reason: collision with root package name */
    public static boolean f258b = Log.isLoggable(f257a, 2);

    public static void a(String str, Object... objArr) {
        if (f258b) {
            Log.v(f257a, d(str, objArr));
        }
    }

    public static void b(String str, Object... objArr) {
        Log.d(f257a, d(str, objArr));
    }

    public static void c(String str, Object... objArr) {
        Log.e(f257a, d(str, objArr));
    }

    public static void a(Throwable th, String str, Object... objArr) {
        Log.e(f257a, d(str, objArr), th);
    }

    private static String d(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            }
            if (stackTrace[i].getClass().equals(t.class)) {
                i++;
            } else {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                str2 = substring.substring(substring.lastIndexOf(36) + 1) + "." + stackTrace[i].getMethodName();
                break;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    /* compiled from: VolleyLog.java */
    static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final boolean f259a = t.f258b;

        /* renamed from: b, reason: collision with root package name */
        private final List<C0003a> f260b = new ArrayList();
        private boolean c = false;

        a() {
        }

        /* compiled from: VolleyLog.java */
        /* renamed from: com.android.volley.t$a$a, reason: collision with other inner class name */
        private static class C0003a {

            /* renamed from: a, reason: collision with root package name */
            public final String f261a;

            /* renamed from: b, reason: collision with root package name */
            public final long f262b;
            public final long c;

            public C0003a(String str, long j, long j2) {
                this.f261a = str;
                this.f262b = j;
                this.c = j2;
            }
        }

        public synchronized void a(String str, long j) {
            if (this.c) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.f260b.add(new C0003a(str, j, SystemClock.elapsedRealtime()));
        }

        public synchronized void a(String str) {
            this.c = true;
            long a2 = a();
            if (a2 > 0) {
                long j = this.f260b.get(0).c;
                t.b("(%-4d ms) %s", Long.valueOf(a2), str);
                long j2 = j;
                for (C0003a c0003a : this.f260b) {
                    long j3 = c0003a.c;
                    t.b("(+%-4d) [%2d] %s", Long.valueOf(j3 - j2), Long.valueOf(c0003a.f262b), c0003a.f261a);
                    j2 = j3;
                }
            }
        }

        protected void finalize() throws Throwable {
            if (!this.c) {
                a("Request on the loose");
                t.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        private long a() {
            if (this.f260b.size() == 0) {
                return 0L;
            }
            return this.f260b.get(this.f260b.size() - 1).c - this.f260b.get(0).c;
        }
    }
}
