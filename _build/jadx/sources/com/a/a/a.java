package com.a.a;

import java.util.ArrayList;

/* compiled from: Animator.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class a implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    ArrayList<InterfaceC0002a> f212a = null;

    /* compiled from: Animator.java */
    /* renamed from: com.a.a.a$a, reason: collision with other inner class name */
    public interface InterfaceC0002a {
        void a(a aVar);

        void b(a aVar);

        void c(a aVar);

        void d(a aVar);
    }

    public void a() {
    }

    public void b() {
    }

    @Override // 
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public a clone() {
        try {
            a aVar = (a) super.clone();
            if (this.f212a != null) {
                ArrayList<InterfaceC0002a> arrayList = this.f212a;
                aVar.f212a = new ArrayList<>();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    aVar.f212a.add(arrayList.get(i));
                }
            }
            return aVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }
}
