package com.duapps.ad.c.a;

import android.content.Context;
import android.util.SparseArray;

/* compiled from: PolicyConfig.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static b f2103a;

    /* renamed from: b, reason: collision with root package name */
    private Context f2104b;
    private SparseArray<c> c = new SparseArray<>();

    private b(Context context) {
        this.f2104b = context;
    }

    public static b a(Context context) {
        if (f2103a == null) {
            synchronized (b.class) {
                if (f2103a == null) {
                    f2103a = new b(context);
                }
            }
        }
        return f2103a;
    }

    public c a(int i, boolean z, boolean z2) {
        c a2;
        Integer.valueOf(i);
        synchronized (this.c) {
            if (this.c.indexOfKey(i) >= 0) {
                a2 = this.c.get(i);
            } else {
                a2 = c.a(this.f2104b, i, z, z2);
                synchronized (this.c) {
                    this.c.put(i, a2);
                }
            }
        }
        return a2;
    }
}
