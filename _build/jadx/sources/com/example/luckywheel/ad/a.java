package com.example.luckywheel.ad;

import android.content.Context;
import android.util.Log;
import com.example.luckywheel.ad.b;
import com.example.luckywheel.ad.h;
import java.util.Iterator;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class a<T extends h, H extends b> {

    /* renamed from: a, reason: collision with root package name */
    protected List<H> f2285a;

    public a() {
        a();
    }

    public abstract T a(Context context);

    public abstract void a();

    public void a(Context context, h.b bVar) {
        T a2 = a(context);
        if (a2 != null) {
            a2.a(bVar);
            Log.d("new_ad", "show Ad: " + a2.getClass().getName());
        }
    }

    public boolean b() {
        if (this.f2285a == null || this.f2285a.size() == 0) {
            a();
            return false;
        }
        Iterator<H> it = this.f2285a.iterator();
        while (it.hasNext()) {
            if (it.next().d()) {
                return true;
            }
        }
        return false;
    }
}
