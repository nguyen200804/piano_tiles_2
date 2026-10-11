package com.mopub.nativesdk.b;

import java.util.concurrent.Semaphore;

/* compiled from: WEngine.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class m {

    /* renamed from: a, reason: collision with root package name */
    private final Semaphore f4613a = new Semaphore(0);

    public final void a() {
        this.f4613a.acquireUninterruptibly();
    }

    public final void b() {
        this.f4613a.release();
    }
}
