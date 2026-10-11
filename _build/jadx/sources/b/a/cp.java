package b.a;

import java.lang.Thread;

/* compiled from: CrashHandler.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class cp implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f142a;

    /* renamed from: b, reason: collision with root package name */
    private cx f143b;

    public cp() {
        if (Thread.getDefaultUncaughtExceptionHandler() != this) {
            this.f142a = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    public void a(cx cxVar) {
        this.f143b = cxVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        a(th);
        if (this.f142a != null && this.f142a != Thread.getDefaultUncaughtExceptionHandler()) {
            this.f142a.uncaughtException(thread, th);
        }
    }

    private void a(Throwable th) {
        if (com.b.a.a.k) {
            this.f143b.a(th);
        } else {
            this.f143b.a(null);
        }
    }
}
