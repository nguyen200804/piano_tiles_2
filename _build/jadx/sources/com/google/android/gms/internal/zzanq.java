package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzanq implements zzani, Cloneable {
    public static final zzanq beK = new zzanq();
    private double beL = -1.0d;
    private int beM = 136;
    private boolean beN = true;
    private List<zzaml> beO = Collections.emptyList();
    private List<zzaml> beP = Collections.emptyList();

    private boolean zza(zzanl zzanlVar) {
        return zzanlVar == null || zzanlVar.zzczt() <= this.beL;
    }

    private boolean zza(zzanl zzanlVar, zzanm zzanmVar) {
        return zza(zzanlVar) && zza(zzanmVar);
    }

    private boolean zza(zzanm zzanmVar) {
        return zzanmVar == null || zzanmVar.zzczt() > this.beL;
    }

    private boolean zzm(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }

    private boolean zzn(Class<?> cls) {
        return cls.isMemberClass() && !zzo(cls);
    }

    private boolean zzo(Class<?> cls) {
        return (cls.getModifiers() & 8) != 0;
    }

    @Override // com.google.android.gms.internal.zzani
    public <T> zzanh<T> zza(final zzamp zzampVar, final zzaol<T> zzaolVar) {
        Class<? super T> m = zzaolVar.m();
        final boolean zza = zza((Class<?>) m, true);
        final boolean zza2 = zza((Class<?>) m, false);
        if (zza || zza2) {
            return new zzanh<T>() { // from class: com.google.android.gms.internal.zzanq.1
                private zzanh<T> bdZ;

                private zzanh<T> zzczr() {
                    zzanh<T> zzanhVar = this.bdZ;
                    if (zzanhVar != null) {
                        return zzanhVar;
                    }
                    zzanh<T> zza3 = zzampVar.zza(zzanq.this, zzaolVar);
                    this.bdZ = zza3;
                    return zza3;
                }

                @Override // com.google.android.gms.internal.zzanh
                public void zza(zzaoo zzaooVar, T t) throws IOException {
                    if (zza) {
                        zzaooVar.l();
                    } else {
                        zzczr().zza(zzaooVar, t);
                    }
                }

                @Override // com.google.android.gms.internal.zzanh
                public T zzb(zzaom zzaomVar) throws IOException {
                    if (!zza2) {
                        return zzczr().zzb(zzaomVar);
                    }
                    zzaomVar.skipValue();
                    return null;
                }
            };
        }
        return null;
    }

    public zzanq zza(zzaml zzamlVar, boolean z, boolean z2) {
        zzanq clone = clone();
        if (z) {
            clone.beO = new ArrayList(this.beO);
            clone.beO.add(zzamlVar);
        }
        if (z2) {
            clone.beP = new ArrayList(this.beP);
            clone.beP.add(zzamlVar);
        }
        return clone;
    }

    public boolean zza(Class<?> cls, boolean z) {
        if (this.beL != -1.0d && !zza((zzanl) cls.getAnnotation(zzanl.class), (zzanm) cls.getAnnotation(zzanm.class))) {
            return true;
        }
        if ((this.beN || !zzn(cls)) && !zzm(cls)) {
            Iterator<zzaml> it = (z ? this.beO : this.beP).iterator();
            while (it.hasNext()) {
                if (it.next().zzh(cls)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public boolean zza(Field field, boolean z) {
        if ((this.beM & field.getModifiers()) != 0) {
            return true;
        }
        if ((this.beL == -1.0d || zza((zzanl) field.getAnnotation(zzanl.class), (zzanm) field.getAnnotation(zzanm.class))) && !field.isSynthetic()) {
            if ((this.beN || !zzn(field.getType())) && !zzm(field.getType())) {
                List<zzaml> list = z ? this.beO : this.beP;
                if (!list.isEmpty()) {
                    zzamm zzammVar = new zzamm(field);
                    Iterator<zzaml> it = list.iterator();
                    while (it.hasNext()) {
                        if (it.next().zza(zzammVar)) {
                            return true;
                        }
                    }
                }
                return false;
            }
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: zzczv, reason: merged with bridge method [inline-methods] */
    public zzanq clone() {
        try {
            return (zzanq) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    public zzanq zzg(int... iArr) {
        zzanq clone = clone();
        clone.beM = 0;
        for (int i : iArr) {
            clone.beM = i | clone.beM;
        }
        return clone;
    }
}
