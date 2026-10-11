package com.example.luckywheel.ad;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class f extends ArrayList<h> {
    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void add(int i, h hVar) {
        try {
            super.add(i, hVar);
            Collections.sort(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public boolean add(h hVar) {
        boolean add = super.add(hVar);
        Collections.sort(this);
        return add;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public boolean addAll(int i, Collection<? extends h> collection) {
        boolean addAll = super.addAll(i, collection);
        Collections.sort(this);
        return addAll;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends h> collection) {
        boolean addAll = super.addAll(collection);
        Collections.sort(this);
        return addAll;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        boolean remove = super.remove(obj);
        Collections.sort(this);
        return remove;
    }
}
