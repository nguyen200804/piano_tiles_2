package com.google.android.gms.internal;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzaog implements zzani {
    private final zzanp bdR;
    private final zzanq bea;
    private final zzamo bec;

    public static final class zza<T> extends zzanh<T> {
        private final Map<String, zzb> bfR;
        private final zzanu<T> bfy;

        private zza(zzanu<T> zzanuVar, Map<String, zzb> map) {
            this.bfy = zzanuVar;
            this.bfR = map;
        }

        @Override // com.google.android.gms.internal.zzanh
        public void zza(zzaoo zzaooVar, T t) throws IOException {
            if (t == null) {
                zzaooVar.l();
                return;
            }
            zzaooVar.j();
            try {
                for (zzb zzbVar : this.bfR.values()) {
                    if (zzbVar.zzco(t)) {
                        zzaooVar.zztr(zzbVar.name);
                        zzbVar.zza(zzaooVar, t);
                    }
                }
                zzaooVar.k();
            } catch (IllegalAccessException e) {
                throw new AssertionError();
            }
        }

        @Override // com.google.android.gms.internal.zzanh
        public T zzb(zzaom zzaomVar) throws IOException {
            if (zzaomVar.b() == zzaon.NULL) {
                zzaomVar.nextNull();
                return null;
            }
            T zzczu = this.bfy.zzczu();
            try {
                zzaomVar.beginObject();
                while (zzaomVar.hasNext()) {
                    zzb zzbVar = this.bfR.get(zzaomVar.nextName());
                    if (zzbVar == null || !zzbVar.bfT) {
                        zzaomVar.skipValue();
                    } else {
                        zzbVar.zza(zzaomVar, zzczu);
                    }
                }
                zzaomVar.endObject();
                return zzczu;
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (IllegalStateException e2) {
                throw new zzane(e2);
            }
        }
    }

    static abstract class zzb {
        final boolean bfS;
        final boolean bfT;
        final String name;

        protected zzb(String str, boolean z, boolean z2) {
            this.name = str;
            this.bfS = z;
            this.bfT = z2;
        }

        abstract void zza(zzaom zzaomVar, Object obj) throws IOException, IllegalAccessException;

        abstract void zza(zzaoo zzaooVar, Object obj) throws IOException, IllegalAccessException;

        abstract boolean zzco(Object obj) throws IOException, IllegalAccessException;
    }

    public zzaog(zzanp zzanpVar, zzamo zzamoVar, zzanq zzanqVar) {
        this.bdR = zzanpVar;
        this.bec = zzamoVar;
        this.bea = zzanqVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzanh<?> zza(zzamp zzampVar, Field field, zzaol<?> zzaolVar) {
        zzanh<?> zza2;
        zzanj zzanjVar = (zzanj) field.getAnnotation(zzanj.class);
        return (zzanjVar == null || (zza2 = zzaob.zza(this.bdR, zzampVar, zzaolVar, zzanjVar)) == null) ? zzampVar.zza(zzaolVar) : zza2;
    }

    private zzb zza(final zzamp zzampVar, final Field field, String str, final zzaol<?> zzaolVar, boolean z, boolean z2) {
        final boolean zzk = zzanv.zzk(zzaolVar.m());
        return new zzb(str, z, z2) { // from class: com.google.android.gms.internal.zzaog.1
            final zzanh<?> bfL;

            {
                this.bfL = zzaog.this.zza(zzampVar, field, (zzaol<?>) zzaolVar);
            }

            @Override // com.google.android.gms.internal.zzaog.zzb
            void zza(zzaom zzaomVar, Object obj) throws IOException, IllegalAccessException {
                Object zzb2 = this.bfL.zzb(zzaomVar);
                if (zzb2 == null && zzk) {
                    return;
                }
                field.set(obj, zzb2);
            }

            @Override // com.google.android.gms.internal.zzaog.zzb
            void zza(zzaoo zzaooVar, Object obj) throws IOException, IllegalAccessException {
                new zzaoj(zzampVar, this.bfL, zzaolVar.n()).zza(zzaooVar, field.get(obj));
            }

            @Override // com.google.android.gms.internal.zzaog.zzb
            public boolean zzco(Object obj) throws IOException, IllegalAccessException {
                return this.bfS && field.get(obj) != obj;
            }
        };
    }

    static List<String> zza(zzamo zzamoVar, Field field) {
        zzank zzankVar = (zzank) field.getAnnotation(zzank.class);
        LinkedList linkedList = new LinkedList();
        if (zzankVar == null) {
            linkedList.add(zzamoVar.zzc(field));
        } else {
            linkedList.add(zzankVar.value());
            String[] zzczs = zzankVar.zzczs();
            for (String str : zzczs) {
                linkedList.add(str);
            }
        }
        return linkedList;
    }

    private Map<String, zzb> zza(zzamp zzampVar, zzaol<?> zzaolVar, Class<?> cls) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (cls.isInterface()) {
            return linkedHashMap;
        }
        Type n = zzaolVar.n();
        while (cls != Object.class) {
            for (Field field : cls.getDeclaredFields()) {
                boolean zza2 = zza(field, true);
                boolean zza3 = zza(field, false);
                if (zza2 || zza3) {
                    field.setAccessible(true);
                    Type zza4 = zzano.zza(zzaolVar.n(), cls, field.getGenericType());
                    List<String> zzd = zzd(field);
                    zzb zzbVar = null;
                    int i = 0;
                    while (i < zzd.size()) {
                        String str = zzd.get(i);
                        if (i != 0) {
                            zza2 = false;
                        }
                        zzb zzbVar2 = (zzb) linkedHashMap.put(str, zza(zzampVar, field, str, zzaol.zzl(zza4), zza2, zza3));
                        if (zzbVar != null) {
                            zzbVar2 = zzbVar;
                        }
                        i++;
                        zzbVar = zzbVar2;
                    }
                    if (zzbVar != null) {
                        String valueOf = String.valueOf(n);
                        String str2 = zzbVar.name;
                        throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 37 + String.valueOf(str2).length()).append(valueOf).append(" declares multiple JSON fields named ").append(str2).toString());
                    }
                }
            }
            zzaolVar = zzaol.zzl(zzano.zza(zzaolVar.n(), cls, cls.getGenericSuperclass()));
            cls = zzaolVar.m();
        }
        return linkedHashMap;
    }

    static boolean zza(Field field, boolean z, zzanq zzanqVar) {
        return (zzanqVar.zza(field.getType(), z) || zzanqVar.zza(field, z)) ? false : true;
    }

    private List<String> zzd(Field field) {
        return zza(this.bec, field);
    }

    @Override // com.google.android.gms.internal.zzani
    public <T> zzanh<T> zza(zzamp zzampVar, zzaol<T> zzaolVar) {
        Class<? super T> m = zzaolVar.m();
        if (Object.class.isAssignableFrom(m)) {
            return new zza(this.bdR.zzb(zzaolVar), zza(zzampVar, (zzaol<?>) zzaolVar, (Class<?>) m));
        }
        return null;
    }

    public boolean zza(Field field, boolean z) {
        return zza(field, z, this.bea);
    }
}
