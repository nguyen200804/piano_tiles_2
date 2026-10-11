package com.mopub.volley;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VolleyLog {
    public static String TAG = "Volley";
    public static boolean DEBUG = Log.isLoggable(TAG, 2);

    public static void setTag(String tag) {
        d("Changing log tag to %s", tag);
        TAG = tag;
        DEBUG = Log.isLoggable(TAG, 2);
    }

    public static void v(String format, Object... args) {
        if (DEBUG) {
            Log.v(TAG, a(format, args));
        }
    }

    public static void d(String format, Object... args) {
        Log.d(TAG, a(format, args));
    }

    public static void e(String format, Object... args) {
        Log.e(TAG, a(format, args));
    }

    public static void e(Throwable tr, String format, Object... args) {
        Log.e(TAG, a(format, args), tr);
    }

    public static void wtf(String format, Object... args) {
        Log.wtf(TAG, a(format, args));
    }

    public static void wtf(Throwable tr, String format, Object... args) {
        Log.wtf(TAG, a(format, args), tr);
    }

    private static String a(String str, Object... objArr) {
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
            if (stackTrace[i].getClass().equals(VolleyLog.class)) {
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

    static class a {
        public static final boolean ENABLED = VolleyLog.DEBUG;

        /* renamed from: a, reason: collision with root package name */
        private final List<C0212a> f4771a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        private boolean f4772b = false;

        a() {
        }

        /* renamed from: com.mopub.volley.VolleyLog$a$a, reason: collision with other inner class name */
        private static class C0212a {
            public final String name;
            public final long thread;
            public final long time;

            public C0212a(String str, long j, long j2) {
                this.name = str;
                this.thread = j;
                this.time = j2;
            }
        }

        public synchronized void add(String name, long threadId) {
            if (this.f4772b) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.f4771a.add(new C0212a(name, threadId, SystemClock.elapsedRealtime()));
        }

        public synchronized void finish(String header) {
            this.f4772b = true;
            long a2 = a();
            if (a2 > 0) {
                long j = this.f4771a.get(0).time;
                VolleyLog.d("(%-4d ms) %s", Long.valueOf(a2), header);
                long j2 = j;
                for (C0212a c0212a : this.f4771a) {
                    long j3 = c0212a.time;
                    VolleyLog.d("(+%-4d) [%2d] %s", Long.valueOf(j3 - j2), Long.valueOf(c0212a.thread), c0212a.name);
                    j2 = j3;
                }
            }
        }

        protected void finalize() throws Throwable {
            if (!this.f4772b) {
                finish("Request on the loose");
                VolleyLog.e("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        private long a() {
            if (this.f4771a.size() == 0) {
                return 0L;
            }
            return this.f4771a.get(this.f4771a.size() - 1).time - this.f4771a.get(0).time;
        }
    }
}
