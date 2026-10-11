package com.example.luckywheel.ad;

import android.content.Context;
import com.example.luckywheel.ad.h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class b<T extends h> implements Comparable<b> {

    /* renamed from: a, reason: collision with root package name */
    protected List<T> f2290a = Collections.synchronizedList(new f());

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(b bVar) {
        return bVar.f() - f();
    }

    public abstract String a();

    public abstract void a(Context context, h.a aVar);

    public void a(h hVar) {
        synchronized (this.f2290a) {
            if (this.f2290a != null && this.f2290a.size() > 0) {
                this.f2290a.remove(hVar);
            }
        }
    }

    public abstract int b();

    public void b(Context context, h.a aVar) {
        if (e()) {
            return;
        }
        a(context, aVar);
    }

    public T c() {
        if (!d()) {
            return null;
        }
        T t = this.f2290a.get(0);
        a(t);
        return t;
    }

    public boolean d() {
        return e();
    }

    public boolean e() {
        if (this.f2290a == null) {
            this.f2290a = new ArrayList();
            return false;
        }
        if (this.f2290a.size() == 0) {
            return false;
        }
        Iterator<T> it = this.f2290a.iterator();
        while (it.hasNext()) {
            if (it.next().a()) {
                return true;
            }
            it.remove();
        }
        return false;
    }

    protected int f() {
        if (this.f2290a == null || this.f2290a.size() == 0 || this.f2290a.get(0) == null) {
            return 0;
        }
        return this.f2290a.get(0).b();
    }
}
