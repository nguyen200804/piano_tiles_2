package com.facebook.ads.internal.view.hscroll;

import android.util.SparseArray;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private final SparseArray<int[]> f3060a = new SparseArray<>();

    public void a(int i, int[] iArr) {
        this.f3060a.put(i, iArr);
    }

    public int[] a(int i) {
        return this.f3060a.get(i);
    }

    public boolean b(int i) {
        return this.f3060a.indexOfKey(i) >= 0;
    }
}
