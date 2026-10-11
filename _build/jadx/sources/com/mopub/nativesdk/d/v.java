package com.mopub.nativesdk.d;

import android.os.Handler;
import android.os.Looper;

/* compiled from: ThreadManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class v implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Runnable f4705a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Handler f4706b;
    final /* synthetic */ Runnable c;
    private /* synthetic */ boolean d;
    private /* synthetic */ Looper e;

    v(Runnable runnable, boolean z, Looper looper, Handler handler, Runnable runnable2) {
        this.f4705a = runnable;
        this.d = z;
        this.e = looper;
        this.f4706b = handler;
        this.c = runnable2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        Handler handler2;
        if (this.f4705a != null) {
            if (!this.d) {
                Looper looper = this.e;
                handler2 = s.c;
                if (looper != handler2.getLooper()) {
                    new Handler(this.e).post(new x(this));
                    return;
                }
            }
            handler = s.c;
            handler.post(new w(this));
            return;
        }
        this.c.run();
    }
}
