package com.mopub.dg.d.a;

import java.util.concurrent.ThreadFactory;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    private final int f4283a = 10;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(new d(this, runnable));
    }
}
