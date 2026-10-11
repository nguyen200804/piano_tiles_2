package com.mopub.dg.d.a;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b implements Executor {

    /* renamed from: a, reason: collision with root package name */
    private final Handler f4282a = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f4282a.post(runnable);
    }
}
