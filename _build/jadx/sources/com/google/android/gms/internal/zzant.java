package com.google.android.gms.internal;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzant<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final Comparator<Comparable> beW;
    Comparator<? super K> aPZ;
    zzd<K, V> beX;
    final zzd<K, V> beY;
    private zza beZ;
    private zzb bfa;
    int modCount;
    int size;

    class zza extends AbstractSet<Map.Entry<K, V>> {
        zza() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            zzant.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && zzant.this.zzc((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new zzc<Map.Entry<K, V>>() { // from class: com.google.android.gms.internal.zzant.zza.1
                {
                    zzant zzantVar = zzant.this;
                }

                @Override // java.util.Iterator
                public Map.Entry<K, V> next() {
                    return zzczw();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            zzd<K, V> zzc;
            if (!(obj instanceof Map.Entry) || (zzc = zzant.this.zzc((Map.Entry) obj)) == null) {
                return false;
            }
            zzant.this.zza((zzd) zzc, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return zzant.this.size;
        }
    }

    final class zzb extends AbstractSet<K> {
        zzb() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            zzant.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return zzant.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new zzc<K>() { // from class: com.google.android.gms.internal.zzant.zzb.1
                {
                    zzant zzantVar = zzant.this;
                }

                @Override // java.util.Iterator
                public K next() {
                    return zzczw().aQn;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return zzant.this.zzcn(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return zzant.this.size;
        }
    }

    private abstract class zzc<T> implements Iterator<T> {
        zzd<K, V> bfe;
        zzd<K, V> bff;
        int bfg;

        private zzc() {
            this.bfe = zzant.this.beY.bfe;
            this.bff = null;
            this.bfg = zzant.this.modCount;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.bfe != zzant.this.beY;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.bff == null) {
                throw new IllegalStateException();
            }
            zzant.this.zza((zzd) this.bff, true);
            this.bff = null;
            this.bfg = zzant.this.modCount;
        }

        final zzd<K, V> zzczw() {
            zzd<K, V> zzdVar = this.bfe;
            if (zzdVar == zzant.this.beY) {
                throw new NoSuchElementException();
            }
            if (zzant.this.modCount != this.bfg) {
                throw new ConcurrentModificationException();
            }
            this.bfe = zzdVar.bfe;
            this.bff = zzdVar;
            return zzdVar;
        }
    }

    static final class zzd<K, V> implements Map.Entry<K, V> {
        final K aQn;
        zzd<K, V> bfe;
        zzd<K, V> bfh;
        zzd<K, V> bfi;
        zzd<K, V> bfj;
        zzd<K, V> bfk;
        int height;
        V value;

        zzd() {
            this.aQn = null;
            this.bfk = this;
            this.bfe = this;
        }

        zzd(zzd<K, V> zzdVar, K k, zzd<K, V> zzdVar2, zzd<K, V> zzdVar3) {
            this.bfh = zzdVar;
            this.aQn = k;
            this.height = 1;
            this.bfe = zzdVar2;
            this.bfk = zzdVar3;
            zzdVar3.bfe = this;
            zzdVar2.bfk = this;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (this.aQn == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!this.aQn.equals(entry.getKey())) {
                return false;
            }
            if (this.value == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!this.value.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.aQn;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.value;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return (this.aQn == null ? 0 : this.aQn.hashCode()) ^ (this.value != null ? this.value.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.value;
            this.value = v;
            return v2;
        }

        public String toString() {
            String valueOf = String.valueOf(this.aQn);
            String valueOf2 = String.valueOf(this.value);
            return new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length()).append(valueOf).append("=").append(valueOf2).toString();
        }

        public zzd<K, V> zzczx() {
            for (zzd<K, V> zzdVar = this.bfi; zzdVar != null; zzdVar = zzdVar.bfi) {
                this = zzdVar;
            }
            return this;
        }

        public zzd<K, V> zzczy() {
            for (zzd<K, V> zzdVar = this.bfj; zzdVar != null; zzdVar = zzdVar.bfj) {
                this = zzdVar;
            }
            return this;
        }
    }

    static {
        $assertionsDisabled = !zzant.class.desiredAssertionStatus();
        beW = new Comparator<Comparable>() { // from class: com.google.android.gms.internal.zzant.1
            @Override // java.util.Comparator
            /* renamed from: zza, reason: merged with bridge method [inline-methods] */
            public int compare(Comparable comparable, Comparable comparable2) {
                return comparable.compareTo(comparable2);
            }
        };
    }

    public zzant() {
        this(beW);
    }

    public zzant(Comparator<? super K> comparator) {
        this.size = 0;
        this.modCount = 0;
        this.beY = new zzd<>();
        this.aPZ = comparator == null ? beW : comparator;
    }

    private boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    private void zza(zzd<K, V> zzdVar) {
        zzd<K, V> zzdVar2 = zzdVar.bfi;
        zzd<K, V> zzdVar3 = zzdVar.bfj;
        zzd<K, V> zzdVar4 = zzdVar3.bfi;
        zzd<K, V> zzdVar5 = zzdVar3.bfj;
        zzdVar.bfj = zzdVar4;
        if (zzdVar4 != null) {
            zzdVar4.bfh = zzdVar;
        }
        zza(zzdVar, zzdVar3);
        zzdVar3.bfi = zzdVar;
        zzdVar.bfh = zzdVar3;
        zzdVar.height = Math.max(zzdVar2 != null ? zzdVar2.height : 0, zzdVar4 != null ? zzdVar4.height : 0) + 1;
        zzdVar3.height = Math.max(zzdVar.height, zzdVar5 != null ? zzdVar5.height : 0) + 1;
    }

    private void zza(zzd<K, V> zzdVar, zzd<K, V> zzdVar2) {
        zzd<K, V> zzdVar3 = zzdVar.bfh;
        zzdVar.bfh = null;
        if (zzdVar2 != null) {
            zzdVar2.bfh = zzdVar3;
        }
        if (zzdVar3 == null) {
            this.beX = zzdVar2;
            return;
        }
        if (zzdVar3.bfi == zzdVar) {
            zzdVar3.bfi = zzdVar2;
        } else {
            if (!$assertionsDisabled && zzdVar3.bfj != zzdVar) {
                throw new AssertionError();
            }
            zzdVar3.bfj = zzdVar2;
        }
    }

    private void zzb(zzd<K, V> zzdVar) {
        zzd<K, V> zzdVar2 = zzdVar.bfi;
        zzd<K, V> zzdVar3 = zzdVar.bfj;
        zzd<K, V> zzdVar4 = zzdVar2.bfi;
        zzd<K, V> zzdVar5 = zzdVar2.bfj;
        zzdVar.bfi = zzdVar5;
        if (zzdVar5 != null) {
            zzdVar5.bfh = zzdVar;
        }
        zza(zzdVar, zzdVar2);
        zzdVar2.bfj = zzdVar;
        zzdVar.bfh = zzdVar2;
        zzdVar.height = Math.max(zzdVar3 != null ? zzdVar3.height : 0, zzdVar5 != null ? zzdVar5.height : 0) + 1;
        zzdVar2.height = Math.max(zzdVar.height, zzdVar4 != null ? zzdVar4.height : 0) + 1;
    }

    private void zzb(zzd<K, V> zzdVar, boolean z) {
        while (zzdVar != null) {
            zzd<K, V> zzdVar2 = zzdVar.bfi;
            zzd<K, V> zzdVar3 = zzdVar.bfj;
            int i = zzdVar2 != null ? zzdVar2.height : 0;
            int i2 = zzdVar3 != null ? zzdVar3.height : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                zzd<K, V> zzdVar4 = zzdVar3.bfi;
                zzd<K, V> zzdVar5 = zzdVar3.bfj;
                int i4 = (zzdVar4 != null ? zzdVar4.height : 0) - (zzdVar5 != null ? zzdVar5.height : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    zza(zzdVar);
                } else {
                    if (!$assertionsDisabled && i4 != 1) {
                        throw new AssertionError();
                    }
                    zzb(zzdVar3);
                    zza(zzdVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                zzd<K, V> zzdVar6 = zzdVar2.bfi;
                zzd<K, V> zzdVar7 = zzdVar2.bfj;
                int i5 = (zzdVar6 != null ? zzdVar6.height : 0) - (zzdVar7 != null ? zzdVar7.height : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    zzb(zzdVar);
                } else {
                    if (!$assertionsDisabled && i5 != -1) {
                        throw new AssertionError();
                    }
                    zza(zzdVar2);
                    zzb(zzdVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                zzdVar.height = i + 1;
                if (z) {
                    return;
                }
            } else {
                if (!$assertionsDisabled && i3 != -1 && i3 != 1) {
                    throw new AssertionError();
                }
                zzdVar.height = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            zzdVar = zzdVar.bfh;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.beX = null;
        this.size = 0;
        this.modCount++;
        zzd<K, V> zzdVar = this.beY;
        zzdVar.bfk = zzdVar;
        zzdVar.bfe = zzdVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return zzcm(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        zza zzaVar = this.beZ;
        if (zzaVar != null) {
            return zzaVar;
        }
        zza zzaVar2 = new zza();
        this.beZ = zzaVar2;
        return zzaVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        zzd<K, V> zzcm = zzcm(obj);
        if (zzcm != null) {
            return zzcm.value;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        zzb zzbVar = this.bfa;
        if (zzbVar != null) {
            return zzbVar;
        }
        zzb zzbVar2 = new zzb();
        this.bfa = zzbVar2;
        return zzbVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        zzd<K, V> zza2 = zza((zzant<K, V>) k, true);
        V v2 = zza2.value;
        zza2.value = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzd<K, V> zzcn = zzcn(obj);
        if (zzcn != null) {
            return zzcn.value;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }

    zzd<K, V> zza(K k, boolean z) {
        zzd<K, V> zzdVar;
        int i;
        zzd<K, V> zzdVar2;
        Comparator<? super K> comparator = this.aPZ;
        zzd<K, V> zzdVar3 = this.beX;
        if (zzdVar3 != null) {
            Comparable comparable = comparator == beW ? (Comparable) k : null;
            while (true) {
                int compareTo = comparable != null ? comparable.compareTo(zzdVar3.aQn) : comparator.compare(k, zzdVar3.aQn);
                if (compareTo == 0) {
                    return zzdVar3;
                }
                zzd<K, V> zzdVar4 = compareTo < 0 ? zzdVar3.bfi : zzdVar3.bfj;
                if (zzdVar4 == null) {
                    int i2 = compareTo;
                    zzdVar = zzdVar3;
                    i = i2;
                    break;
                }
                zzdVar3 = zzdVar4;
            }
        } else {
            zzdVar = zzdVar3;
            i = 0;
        }
        if (!z) {
            return null;
        }
        zzd<K, V> zzdVar5 = this.beY;
        if (zzdVar != null) {
            zzdVar2 = new zzd<>(zzdVar, k, zzdVar5, zzdVar5.bfk);
            if (i < 0) {
                zzdVar.bfi = zzdVar2;
            } else {
                zzdVar.bfj = zzdVar2;
            }
            zzb(zzdVar, true);
        } else {
            if (comparator == beW && !(k instanceof Comparable)) {
                throw new ClassCastException(String.valueOf(k.getClass().getName()).concat(" is not Comparable"));
            }
            zzdVar2 = new zzd<>(zzdVar, k, zzdVar5, zzdVar5.bfk);
            this.beX = zzdVar2;
        }
        this.size++;
        this.modCount++;
        return zzdVar2;
    }

    void zza(zzd<K, V> zzdVar, boolean z) {
        int i;
        int i2 = 0;
        if (z) {
            zzdVar.bfk.bfe = zzdVar.bfe;
            zzdVar.bfe.bfk = zzdVar.bfk;
        }
        zzd<K, V> zzdVar2 = zzdVar.bfi;
        zzd<K, V> zzdVar3 = zzdVar.bfj;
        zzd<K, V> zzdVar4 = zzdVar.bfh;
        if (zzdVar2 == null || zzdVar3 == null) {
            if (zzdVar2 != null) {
                zza(zzdVar, zzdVar2);
                zzdVar.bfi = null;
            } else if (zzdVar3 != null) {
                zza(zzdVar, zzdVar3);
                zzdVar.bfj = null;
            } else {
                zza(zzdVar, (zzd) null);
            }
            zzb(zzdVar4, false);
            this.size--;
            this.modCount++;
            return;
        }
        zzd<K, V> zzczy = zzdVar2.height > zzdVar3.height ? zzdVar2.zzczy() : zzdVar3.zzczx();
        zza((zzd) zzczy, false);
        zzd<K, V> zzdVar5 = zzdVar.bfi;
        if (zzdVar5 != null) {
            i = zzdVar5.height;
            zzczy.bfi = zzdVar5;
            zzdVar5.bfh = zzczy;
            zzdVar.bfi = null;
        } else {
            i = 0;
        }
        zzd<K, V> zzdVar6 = zzdVar.bfj;
        if (zzdVar6 != null) {
            i2 = zzdVar6.height;
            zzczy.bfj = zzdVar6;
            zzdVar6.bfh = zzczy;
            zzdVar.bfj = null;
        }
        zzczy.height = Math.max(i, i2) + 1;
        zza(zzdVar, zzczy);
    }

    zzd<K, V> zzc(Map.Entry<?, ?> entry) {
        zzd<K, V> zzcm = zzcm(entry.getKey());
        if (zzcm != null && equal(zzcm.value, entry.getValue())) {
            return zzcm;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    zzd<K, V> zzcm(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return zza((zzant<K, V>) obj, false);
        } catch (ClassCastException e) {
            return null;
        }
    }

    zzd<K, V> zzcn(Object obj) {
        zzd<K, V> zzcm = zzcm(obj);
        if (zzcm != null) {
            zza((zzd) zzcm, true);
        }
        return zzcm;
    }
}
