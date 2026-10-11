package com.mopub.nativesdk.d;

import android.os.Handler;
import android.os.Looper;

/* compiled from: ThreadManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Runnable f4696a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ Runnable f4697b;
    private /* synthetic */ boolean c;
    private /* synthetic */ Looper d;

    g(Runnable runnable, Runnable runnable2, boolean z, Looper looper) {
        this.f4696a = runnable;
        this.f4697b = runnable2;
        this.c = z;
        this.d = looper;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        Handler handler2;
        t tVar = null;
        if (s.a() != null) {
            tVar = new t(this);
        }
        if (s.a() != null) {
            s.a().postDelayed(tVar, 30000L);
        }
        try {
            this.f4696a.run();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (s.a() != null) {
            s.a().removeCallbacks(tVar);
        }
        if (this.f4697b != null) {
            if (!this.c) {
                Looper looper = this.d;
                handler2 = s.c;
                if (looper != handler2.getLooper()) {
                    new Handler(this.d).post(this.f4697b);
                }
            }
            handler = s.c;
            handler.post(this.f4697b);
        }
        try {
            s.f4701a.remove(this.f4696a);
        } catch (Throwable th2) {
        }
    }
}
