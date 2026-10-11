package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzaoe implements zzani {
    private final zzanp bdR;
    private final boolean bfG;

    private final class zza<K, V> extends zzanh<Map<K, V>> {
        private final zzanh<K> bfH;
        private final zzanh<V> bfI;
        private final zzanu<? extends Map<K, V>> bfy;

        public zza(zzamp zzampVar, Type type, zzanh<K> zzanhVar, Type type2, zzanh<V> zzanhVar2, zzanu<? extends Map<K, V>> zzanuVar) {
            this.bfH = new zzaoj(zzampVar, zzanhVar, type);
            this.bfI = new zzaoj(zzampVar, zzanhVar2, type2);
            this.bfy = zzanuVar;
        }

        private String zze(zzamv zzamvVar) {
            if (!zzamvVar.zzczi()) {
                if (zzamvVar.zzczj()) {
                    return "null";
                }
                throw new AssertionError();
            }
            zzanb zzczm = zzamvVar.zzczm();
            if (zzczm.zzczp()) {
                return String.valueOf(zzczm.zzcze());
            }
            if (zzczm.zzczo()) {
                return Boolean.toString(zzczm.getAsBoolean());
            }
            if (zzczm.zzczq()) {
                return zzczm.zzczf();
            }
            throw new AssertionError();
        }

        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, Map<K, V> map) throws IOException {
            int i = 0;
            if (map == null) {
                zzaooVar.l();
                return;
            }
            if (!zzaoe.this.bfG) {
                zzaooVar.j();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    zzaooVar.zztr(String.valueOf(entry.getKey()));
                    this.bfI.zza(zzaooVar, entry.getValue());
                }
                zzaooVar.k();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            boolean z = false;
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                zzamv zzcj = this.bfH.zzcj(entry2.getKey());
                arrayList.add(zzcj);
                arrayList2.add(entry2.getValue());
                z = (zzcj.zzczg() || zzcj.zzczh()) | z;
            }
            if (!z) {
                zzaooVar.j();
                while (i < arrayList.size()) {
                    zzaooVar.zztr(zze((zzamv) arrayList.get(i)));
                    this.bfI.zza(zzaooVar, arrayList2.get(i));
                    i++;
                }
                zzaooVar.k();
                return;
            }
            zzaooVar.h();
            while (i < arrayList.size()) {
                zzaooVar.h();
                zzanw.zzb((zzamv) arrayList.get(i), zzaooVar);
                this.bfI.zza(zzaooVar, arrayList2.get(i));
                zzaooVar.i();
                i++;
            }
            zzaooVar.i();
        }

        @Override // com.google.android.gms.internal.zzanh
        /* renamed from: zzl, reason: merged with bridge method [inline-methods] */
        public Map<K, V> zzb(zzaom zzaomVar) throws IOException {
            zzaon b2 = zzaomVar.b();
            if (b2 == zzaon.NULL) {
                zzaomVar.nextNull();
                return null;
            }
            Map<K, V> zzczu = this.bfy.zzczu();
            if (b2 != zzaon.BEGIN_ARRAY) {
                zzaomVar.beginObject();
                while (zzaomVar.hasNext()) {
                    zzanr.beV.zzi(zzaomVar);
                    K zzb = this.bfH.zzb(zzaomVar);
                    if (zzczu.put(zzb, this.bfI.zzb(zzaomVar)) != null) {
                        String valueOf = String.valueOf(zzb);
                        throw new zzane(new StringBuilder(String.valueOf(valueOf).length() + 15).append("duplicate key: ").append(valueOf).toString());
                    }
                }
                zzaomVar.endObject();
                return zzczu;
            }
            zzaomVar.beginArray();
            while (zzaomVar.hasNext()) {
                zzaomVar.beginArray();
                K zzb2 = this.bfH.zzb(zzaomVar);
                if (zzczu.put(zzb2, this.bfI.zzb(zzaomVar)) != null) {
                    String valueOf2 = String.valueOf(zzb2);
                    throw new zzane(new StringBuilder(String.valueOf(valueOf2).length() + 15).append("duplicate key: ").append(valueOf2).toString());
                }
                zzaomVar.endArray();
            }
            zzaomVar.endArray();
            return zzczu;
        }
    }

    public zzaoe(zzanp zzanpVar, boolean z) {
        this.bdR = zzanpVar;
        this.bfG = z;
    }

    private zzanh<?> zza(zzamp zzampVar, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? zzaok.bgc : zzampVar.zza(zzaol.zzl(type));
    }

    @Override // com.google.android.gms.internal.zzani
    public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar) {
        Type n = zzaolVar.n();
        if (!Map.class.isAssignableFrom(zzaolVar.m())) {
            return null;
        }
        Type[] zzb = zzano.zzb(n, zzano.zzf(n));
        return new zza(zzampVar, zzb[0], zza(zzampVar, zzb[0]), zzb[1], zzampVar.zza(zzaol.zzl(zzb[1])), this.bdR.zzb(zzaolVar));
    }
}
