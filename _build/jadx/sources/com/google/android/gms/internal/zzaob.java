package com.google.android.gms.internal;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzaob implements zzani {
    private final zzanp bdR;

    public zzaob(zzanp zzanpVar) {
        this.bdR = zzanpVar;
    }

    static zzanh<?> zza(zzanp zzanpVar, zzamp zzampVar, zzaol<?> zzaolVar, zzanj zzanjVar) {
        Class<?> value = zzanjVar.value();
        if (zzanh.class.isAssignableFrom(value)) {
            return (zzanh) zzanpVar.zzb(zzaol.zzr(value)).zzczu();
        }
        if (zzani.class.isAssignableFrom(value)) {
            return ((zzani) zzanpVar.zzb(zzaol.zzr(value)).zzczu()).zza(zzampVar, zzaolVar);
        }
        throw new IllegalArgumentException("@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference.");
    }

    @Override // com.google.android.gms.internal.zzani
    public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar) {
        zzanj zzanjVar = (zzanj) zzaolVar.m().getAnnotation(zzanj.class);
        if (zzanjVar == null) {
            return null;
        }
        return (zzanh<T>) zza(this.bdR, zzampVar, zzaolVar, zzanjVar);
    }
}
