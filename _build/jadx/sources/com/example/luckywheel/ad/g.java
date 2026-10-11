package com.example.luckywheel.ad;

import android.content.Context;
import com.example.luckywheel.ad.h;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class g<T extends h> extends a {
    @Override // com.example.luckywheel.ad.a
    public T a(Context context) {
        T t;
        if (this.f2285a == null || this.f2285a.size() == 0) {
            a();
            b(context);
            return null;
        }
        Collections.sort(this.f2285a);
        Iterator it = this.f2285a.iterator();
        while (true) {
            if (!it.hasNext()) {
                t = null;
                break;
            }
            b bVar = (b) it.next();
            if (bVar.d()) {
                t = (T) bVar.c();
                break;
            }
        }
        b(context);
        return t;
    }

    public void b(Context context) {
        if (this.f2285a == null || this.f2285a.size() == 0) {
            a();
        }
        Iterator it = this.f2285a.iterator();
        while (it.hasNext()) {
            ((b) it.next()).b(context, null);
        }
    }
}
