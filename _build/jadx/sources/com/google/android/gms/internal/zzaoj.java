package com.google.android.gms.internal;

import com.google.android.gms.internal.zzaog;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class zzaoj<T> extends zzanh<T> {
    private final zzanh<T> bdZ;
    private final zzamp bfV;
    private final Type bfW;

    zzaoj(zzamp zzampVar, zzanh<T> zzanhVar, Type type) {
        this.bfV = zzampVar;
        this.bdZ = zzanhVar;
        this.bfW = type;
    }

    private Type zzb(Type type, Object obj) {
        return obj != null ? (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class)) ? obj.getClass() : type : type;
    }

    @Override // com.google.android.gms.internal.zzanh
    public void zza(zzaoo zzaooVar, T t) throws IOException {
        zzanh<T> zzanhVar = this.bdZ;
        Type zzb = zzb(this.bfW, t);
        if (zzb != this.bfW) {
            zzanhVar = this.bfV.zza(zzaol.zzl(zzb));
            if ((zzanhVar instanceof zzaog.zza) && !(this.bdZ instanceof zzaog.zza)) {
                zzanhVar = this.bdZ;
            }
        }
        zzanhVar.zza(zzaooVar, t);
    }

    @Override // com.google.android.gms.internal.zzanh
    public T zzb(zzaom zzaomVar) throws IOException {
        return this.bdZ.zzb(zzaomVar);
    }
}
