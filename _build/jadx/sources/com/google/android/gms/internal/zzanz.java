package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzanz implements zzani {
    private final zzanp bdR;

    private static final class zza<E> extends zzanh<Collection<E>> {
        private final zzanh<E> bfx;
        private final zzanu<? extends Collection<E>> bfy;

        public zza(zzamp zzampVar, Type type, zzanh<E> zzanhVar, zzanu<? extends Collection<E>> zzanuVar) {
            this.bfx = new zzaoj(zzampVar, zzanhVar, type);
            this.bfy = zzanuVar;
        }

        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, Collection<E> collection) throws IOException {
            if (collection == null) {
                zzaooVar.l();
                return;
            }
            zzaooVar.h();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.bfx.zza(zzaooVar, it.next());
            }
            zzaooVar.i();
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzj, reason: merged with bridge method [inline-methods] */
        public Collection<E> zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() == zzaon.NULL) {
                zzaomVar.nextNull();
                return null;
            }
            Collection<E> zzczu = this.bfy.zzczu();
            zzaomVar.beginArray();
            while (zzaomVar.hasNext()) {
                zzczu.add(this.bfx.zzb(zzaomVar));
            }
            zzaomVar.endArray();
            return zzczu;
        }
    }

    public zzanz(zzanp zzanpVar) {
        this.bdR = zzanpVar;
    }

    @Override // com.google.android.gms.internal.zzani
    public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar) {
        Type n = zzaolVar.n();
        Class<? super T> m = zzaolVar.m();
        if (!Collection.class.isAssignableFrom(m)) {
            return null;
        }
        Type zza2 = zzano.zza(n, (Class<?>) m);
        return new zza(zzampVar, zza2, zzampVar.zza(zzaol.zzl(zza2)), this.bdR.zzb(zzaolVar));
    }
}
