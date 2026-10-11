package com.google.android.gms.common.data;

import com.example.luckywheel.ad.f;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class FreezableUtils {
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(ArrayList<E> arrayList) {
        f fVar = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            fVar.add(arrayList.get(i).freeze());
        }
        return fVar;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freeze(E[] eArr) {
        f fVar = (ArrayList<T>) new ArrayList(eArr.length);
        for (E e : eArr) {
            fVar.add(e.freeze());
        }
        return fVar;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freezeIterable(Iterable<E> iterable) {
        f fVar = (ArrayList<T>) new ArrayList();
        Iterator<E> it = iterable.iterator();
        while (it.hasNext()) {
            fVar.add(it.next().freeze());
        }
        return fVar;
    }
}
