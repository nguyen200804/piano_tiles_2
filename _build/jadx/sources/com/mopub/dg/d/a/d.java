package com.mopub.dg.d.a;

import android.os.Process;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Runnable f4284a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f4285b;

    d(c cVar, Runnable runnable) {
        this.f4285b = cVar;
        this.f4284a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        try {
            i = this.f4285b.f4283a;
            Process.setThreadPriority(i);
        } catch (Throwable th) {
        }
        this.f4284a.run();
    }
}
