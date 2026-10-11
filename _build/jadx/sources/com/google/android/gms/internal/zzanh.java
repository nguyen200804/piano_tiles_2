package com.google.android.gms.internal;

import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzanh<T> {
    public abstract void zza(zzaoo zzaooVar, T t) throws IOException;

    public abstract T zzb(zzaom zzaomVar) throws IOException;

    public final zzamv zzcj(T t) {
        try {
            zzaod zzaodVar = new zzaod();
            zza(zzaodVar, t);
            return zzaodVar.f();
        } catch (IOException e) {
            throw new zzamw(e);
        }
    }
}
