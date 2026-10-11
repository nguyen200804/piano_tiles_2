package com.google.android.gms.internal;

import java.util.concurrent.TimeUnit;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzkw<T> implements zzky<T> {
    private final T zzcnn;
    private final zzkz zzcnp = new zzkz();

    public zzkw(T t) {
        this.zzcnn = t;
        this.zzcnp.zztz();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public T get() {
        return this.zzcnn;
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) {
        return this.zzcnn;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }

    @Override // com.google.android.gms.internal.zzky
    public void zzc(Runnable runnable) {
        this.zzcnp.zzc(runnable);
    }
}
