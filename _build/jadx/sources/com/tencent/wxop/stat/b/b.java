package com.tencent.wxop.stat.b;

import android.util.Log;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    private String f4823a;
    private boolean ch;
    private int cp;

    public b() {
        this.f4823a = "default";
        this.ch = true;
        this.cp = 2;
    }

    public b(String str) {
        this.f4823a = "default";
        this.ch = true;
        this.cp = 2;
        this.f4823a = str;
    }

    private String c() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace == null) {
            return null;
        }
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (!stackTraceElement.isNativeMethod() && !stackTraceElement.getClassName().equals(Thread.class.getName()) && !stackTraceElement.getClassName().equals(getClass().getName())) {
                return "[" + Thread.currentThread().getName() + "(" + Thread.currentThread().getId() + "): " + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + "]";
            }
        }
        return null;
    }

    public final void a(Throwable th) {
        if (this.cp <= 6) {
            Log.e(this.f4823a, "", th);
            com.tencent.wxop.stat.c.F();
        }
    }

    public final void ap() {
        this.ch = false;
    }

    public final void b(Object obj) {
        if (!this.ch || this.cp > 4) {
            return;
        }
        String c = c();
        Log.i(this.f4823a, c == null ? obj.toString() : c + " - " + obj);
        com.tencent.wxop.stat.c.F();
    }

    public final void b(Throwable th) {
        if (this.ch) {
            a(th);
        }
    }

    public final void c(Object obj) {
        if (this.ch) {
            warn(obj);
        }
    }

    public final void d(Object obj) {
        if (this.ch) {
            error(obj);
        }
    }

    public final void debug(Object obj) {
        if (this.cp <= 3) {
            String c = c();
            Log.d(this.f4823a, c == null ? obj.toString() : c + " - " + obj);
            com.tencent.wxop.stat.c.F();
        }
    }

    public final void e(Object obj) {
        if (this.ch) {
            debug(obj);
        }
    }

    public final void error(Object obj) {
        if (this.cp <= 6) {
            String c = c();
            Log.e(this.f4823a, c == null ? obj.toString() : c + " - " + obj);
            com.tencent.wxop.stat.c.F();
        }
    }

    public final void warn(Object obj) {
        if (this.cp <= 5) {
            String c = c();
            Log.w(this.f4823a, c == null ? obj.toString() : c + " - " + obj);
            com.tencent.wxop.stat.c.F();
        }
    }
}
