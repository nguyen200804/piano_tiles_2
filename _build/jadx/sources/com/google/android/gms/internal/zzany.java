package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzany<E> extends zzanh<Object> {
    public static final zzani bfu = new zzani() { // from class: com.google.android.gms.internal.zzany.1
        @Override // com.google.android.gms.internal.zzani
        public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar) {
            Type n = zzaolVar.n();
            if (!(n instanceof GenericArrayType) && (!(n instanceof Class) || !((Class) n).isArray())) {
                return null;
            }
            Type zzh = zzano.zzh(n);
            return new zzany(zzampVar, zzampVar.zza(zzaol.zzl(zzh)), zzano.zzf(zzh));
        }
    };
    private final Class<E> bfv;
    private final zzanh<E> bfw;

    public zzany(zzamp zzampVar, zzanh<E> zzanhVar, Class<E> cls) {
        this.bfw = new zzaoj(zzampVar, zzanhVar, cls);
        this.bfv = cls;
    }

    @Override // com.google.android.gms.internal.zzanh
    public void zza(zzaoo zzaooVar, Object obj) throws IOException {
        if (obj == null) {
            zzaooVar.l();
            return;
        }
        zzaooVar.h();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.bfw.zza(zzaooVar, Array.get(obj, i));
        }
        zzaooVar.i();
    }

    @Override // com.google.android.gms.internal.zzanh
    public Object zzb(zzaom zzaomVar) throws IOException {
        if (zzaomVar.b() == zzaon.NULL) {
            zzaomVar.nextNull();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        zzaomVar.beginArray();
        while (zzaomVar.hasNext()) {
            arrayList.add(this.bfw.zzb(zzaomVar));
        }
        zzaomVar.endArray();
        Object newInstance = Array.newInstance((Class<?>) this.bfv, arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            Array.set(newInstance, i, arrayList.get(i));
        }
        return newInstance;
    }
}
