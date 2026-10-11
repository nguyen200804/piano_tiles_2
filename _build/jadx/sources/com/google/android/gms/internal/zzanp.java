package com.google.android.gms.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzanp {
    private final Map<Type, zzamr<?>> bed;

    public zzanp(Map<Type, zzamr<?>> map) {
        this.bed = map;
    }

    private <T> zzanu<T> zzc(final Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            return SortedSet.class.isAssignableFrom(cls) ? new zzanu<T>() { // from class: com.google.android.gms.internal.zzanp.7
                @Override // com.google.android.gms.internal.zzanu
                public T zzczu() {
                    return (T) new TreeSet();
                }
            } : EnumSet.class.isAssignableFrom(cls) ? new zzanu<T>() { // from class: com.google.android.gms.internal.zzanp.8
                @Override // com.google.android.gms.internal.zzanu
                public T zzczu() {
                    if (!(type instanceof ParameterizedType)) {
                        String valueOf = String.valueOf(type.toString());
                        throw new zzamw(valueOf.length() != 0 ? "Invalid EnumSet type: ".concat(valueOf) : new String("Invalid EnumSet type: "));
                    }
                    Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                    if (type2 instanceof Class) {
                        return (T) EnumSet.noneOf((Class) type2);
                    }
                    String valueOf2 = String.valueOf(type.toString());
                    throw new zzamw(valueOf2.length() != 0 ? "Invalid EnumSet type: ".concat(valueOf2) : new String("Invalid EnumSet type: "));
                }
            } : Set.class.isAssignableFrom(cls) ? new zzanu<T>() { // from class: com.google.android.gms.internal.zzanp.9
                @Override // com.google.android.gms.internal.zzanu
                public T zzczu() {
                    return (T) new LinkedHashSet();
                }
            } : Queue.class.isAssignableFrom(cls) ? new zzanu<T>() { // from class: com.google.android.gms.internal.zzanp.10
                @Override // com.google.android.gms.internal.zzanu
                public T zzczu() {
                    return (T) new LinkedList();
                }
            } : new zzanu<T>() { // from class: com.google.android.gms.internal.zzanp.11
                @Override // com.google.android.gms.internal.zzanu
                public T zzczu() {
                    return (T) new ArrayList();
                }
            };
        }
        if (Map.class.isAssignableFrom(cls)) {
            return SortedMap.class.isAssignableFrom(cls) ? new zzanu<T>() { // from class: com.google.android.gms.internal.zzanp.12
                @Override // com.google.android.gms.internal.zzanu
                public T zzczu() {
                    return (T) new TreeMap();
                }
            } : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(zzaol.zzl(((ParameterizedType) type).getActualTypeArguments()[0]).m())) ? new zzanu<T>() { // from class: com.google.android.gms.internal.zzanp.3
                @Override // com.google.android.gms.internal.zzanu
                public T zzczu() {
                    return (T) new zzant();
                }
            } : new zzanu<T>() { // from class: com.google.android.gms.internal.zzanp.2
                @Override // com.google.android.gms.internal.zzanu
                public T zzczu() {
                    return (T) new LinkedHashMap();
                }
            };
        }
        return null;
    }

    private <T> zzanu<T> zzd(final Type type, final Class<? super T> cls) {
        return new zzanu<T>() { // from class: com.google.android.gms.internal.zzanp.4
            private final zzanx beG = zzanx.zzczz();

            @Override // com.google.android.gms.internal.zzanu
            public T zzczu() {
                try {
                    return (T) this.beG.zzf(cls);
                } catch (Exception e) {
                    String valueOf = String.valueOf(type);
                    throw new RuntimeException(new StringBuilder(String.valueOf(valueOf).length() + 116).append("Unable to invoke no-args constructor for ").append(valueOf).append(". ").append("Register an InstanceCreator with Gson for this type may fix this problem.").toString(), e);
                }
            }
        };
    }

    private <T> zzanu<T> zzl(Class<? super T> cls) {
        try {
            final Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return new zzanu<T>() { // from class: com.google.android.gms.internal.zzanp.6
                @Override // com.google.android.gms.internal.zzanu
                public T zzczu() {
                    try {
                        return (T) declaredConstructor.newInstance(null);
                    } catch (IllegalAccessException e) {
                        throw new AssertionError(e);
                    } catch (InstantiationException e2) {
                        String valueOf = String.valueOf(declaredConstructor);
                        throw new RuntimeException(new StringBuilder(String.valueOf(valueOf).length() + 30).append("Failed to invoke ").append(valueOf).append(" with no args").toString(), e2);
                    } catch (InvocationTargetException e3) {
                        String valueOf2 = String.valueOf(declaredConstructor);
                        throw new RuntimeException(new StringBuilder(String.valueOf(valueOf2).length() + 30).append("Failed to invoke ").append(valueOf2).append(" with no args").toString(), e3.getTargetException());
                    }
                }
            };
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    public String toString() {
        return this.bed.toString();
    }

    public <T> zzanu<T> zzb(zzaol<T> zzaolVar) {
        final Type n = zzaolVar.n();
        Class<? super T> m = zzaolVar.m();
        final zzamr<?> zzamrVar = this.bed.get(n);
        if (zzamrVar != null) {
            return new zzanu<T>() { // from class: com.google.android.gms.internal.zzanp.1
                @Override // com.google.android.gms.internal.zzanu
                public T zzczu() {
                    return (T) zzamrVar.zza(n);
                }
            };
        }
        final zzamr<?> zzamrVar2 = this.bed.get(m);
        if (zzamrVar2 != null) {
            return new zzanu<T>() { // from class: com.google.android.gms.internal.zzanp.5
                @Override // com.google.android.gms.internal.zzanu
                public T zzczu() {
                    return (T) zzamrVar2.zza(n);
                }
            };
        }
        zzanu<T> zzl = zzl(m);
        if (zzl != null) {
            return zzl;
        }
        zzanu<T> zzc = zzc(n, m);
        return zzc == null ? zzd(n, m) : zzc;
    }
}
