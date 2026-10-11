package com.google.android.gms.internal;

import com.google.android.gms.internal.zzapp;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzapq<M extends zzapp<M>, T> {
    protected final Class<T> baj;
    protected final boolean bjy;
    public final int tag;
    protected final int type;

    private zzapq(int i, Class<T> cls, int i2, boolean z) {
        this.type = i;
        this.baj = cls;
        this.tag = i2;
        this.bjy = z;
    }

    public static <M extends zzapp<M>, T extends zzapv> zzapq<M, T> zza(int i, Class<T> cls, long j) {
        return new zzapq<>(i, cls, (int) j, false);
    }

    private T zzaw(List<zzapx> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            zzapx zzapxVar = list.get(i);
            if (zzapxVar.apf.length != 0) {
                zza(zzapxVar, arrayList);
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        T cast = this.baj.cast(Array.newInstance(this.baj.getComponentType(), size));
        for (int i2 = 0; i2 < size; i2++) {
            Array.set(cast, i2, arrayList.get(i2));
        }
        return cast;
    }

    private T zzax(List<zzapx> list) {
        if (list.isEmpty()) {
            return null;
        }
        return this.baj.cast(zzcg(zzapn.zzbd(list.get(list.size() - 1).apf)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzapq)) {
            return false;
        }
        zzapq zzapqVar = (zzapq) obj;
        return this.type == zzapqVar.type && this.baj == zzapqVar.baj && this.tag == zzapqVar.tag && this.bjy == zzapqVar.bjy;
    }

    public int hashCode() {
        return (this.bjy ? 1 : 0) + ((((((this.type + 1147) * 31) + this.baj.hashCode()) * 31) + this.tag) * 31);
    }

    protected void zza(zzapx zzapxVar, List<Object> list) {
        list.add(zzcg(zzapn.zzbd(zzapxVar.apf)));
    }

    void zza(Object obj, zzapo zzapoVar) throws IOException {
        if (this.bjy) {
            zzc(obj, zzapoVar);
        } else {
            zzb(obj, zzapoVar);
        }
    }

    final T zzav(List<zzapx> list) {
        if (list == null) {
            return null;
        }
        return this.bjy ? zzaw(list) : zzax(list);
    }

    protected void zzb(Object obj, zzapo zzapoVar) {
        try {
            zzapoVar.zzagb(this.tag);
            switch (this.type) {
                case 10:
                    int zzagj = zzapy.zzagj(this.tag);
                    zzapoVar.zzb((zzapv) obj);
                    zzapoVar.zzai(zzagj, 4);
                    return;
                case 11:
                    zzapoVar.zzc((zzapv) obj);
                    return;
                default:
                    throw new IllegalArgumentException(new StringBuilder(24).append("Unknown type ").append(this.type).toString());
            }
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }

    protected void zzc(Object obj, zzapo zzapoVar) {
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            Object obj2 = Array.get(obj, i);
            if (obj2 != null) {
                zzb(obj2, zzapoVar);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected Object zzcg(zzapn zzapnVar) {
        Class componentType = this.bjy ? this.baj.getComponentType() : this.baj;
        try {
            switch (this.type) {
                case 10:
                    zzapv zzapvVar = (zzapv) componentType.newInstance();
                    zzapnVar.zza(zzapvVar, zzapy.zzagj(this.tag));
                    return zzapvVar;
                case 11:
                    zzapv zzapvVar2 = (zzapv) componentType.newInstance();
                    zzapnVar.zza(zzapvVar2);
                    return zzapvVar2;
                default:
                    throw new IllegalArgumentException(new StringBuilder(24).append("Unknown type ").append(this.type).toString());
            }
        } catch (IOException e) {
            throw new IllegalArgumentException("Error reading extension field", e);
        } catch (IllegalAccessException e2) {
            String valueOf = String.valueOf(componentType);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 33).append("Error creating instance of class ").append(valueOf).toString(), e2);
        } catch (InstantiationException e3) {
            String valueOf2 = String.valueOf(componentType);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf2).length() + 33).append("Error creating instance of class ").append(valueOf2).toString(), e3);
        }
    }

    int zzcp(Object obj) {
        return this.bjy ? zzcq(obj) : zzcr(obj);
    }

    protected int zzcq(Object obj) {
        int i = 0;
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            if (Array.get(obj, i2) != null) {
                i += zzcr(Array.get(obj, i2));
            }
        }
        return i;
    }

    protected int zzcr(Object obj) {
        int zzagj = zzapy.zzagj(this.tag);
        switch (this.type) {
            case 10:
                return zzapo.zzb(zzagj, (zzapv) obj);
            case 11:
                return zzapo.zzc(zzagj, (zzapv) obj);
            default:
                throw new IllegalArgumentException(new StringBuilder(24).append("Unknown type ").append(this.type).toString());
        }
    }
}
