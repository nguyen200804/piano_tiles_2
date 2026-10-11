package com.mopub.nativesdk.d;

/* compiled from: ThreadManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class x implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ v f4708a;

    x(v vVar) {
        this.f4708a = vVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4708a.f4705a.run();
        this.f4708a.f4706b.post(this.f4708a.c);
    }
}
