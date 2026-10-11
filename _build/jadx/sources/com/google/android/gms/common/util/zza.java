package com.google.android.gms.common.util;

import android.support.v4.util.ArrayMap;
import android.support.v4.util.SimpleArrayMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zza<E> extends AbstractSet<E> {
    private final ArrayMap<E, E> AV;

    public zza() {
        this.AV = new ArrayMap<>();
    }

    public zza(int i) {
        this.AV = new ArrayMap<>(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zza(Collection<E> collection) {
        this(collection.size());
        addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e) {
        if (this.AV.containsKey(e)) {
            return false;
        }
        this.AV.put(e, e);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        return collection instanceof zza ? zza((zza) collection) : super.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.AV.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.AV.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return this.AV.keySet().iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        if (!this.AV.containsKey(obj)) {
            return false;
        }
        this.AV.remove(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.AV.size();
    }

    public boolean zza(zza<? extends E> zzaVar) {
        int size = size();
        this.AV.putAll((SimpleArrayMap<? extends E, ? extends E>) zzaVar.AV);
        return size() > size;
    }
}
