package com.cmcm.dmc.sdk.a;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g<T> {

    /* renamed from: a, reason: collision with root package name */
    private int f675a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f676b;
    private final Class<T> c;
    private ArrayList<T> d;

    public g() {
        this(null);
    }

    public g(Class<T> cls) {
        this.d = new ArrayList<>();
        this.c = cls;
    }

    private void d() {
        this.f676b = false;
        int size = this.d.size();
        ArrayList<T> arrayList = new ArrayList<>(size);
        for (int i = 0; i < size; i++) {
            if (this.d.get(i) != null) {
                arrayList.add(this.d.get(i));
            }
        }
        this.d = arrayList;
    }

    public Iterator<T> a() {
        return this.d.iterator();
    }

    public void a(T t) {
        this.d.add(t);
    }

    public void b() {
        this.f675a++;
    }

    public void c() {
        this.f675a--;
        if (this.f675a == 0 && this.f676b) {
            d();
        }
    }
}
