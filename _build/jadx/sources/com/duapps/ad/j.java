package com.duapps.ad;

import android.content.Context;
import android.util.SparseArray;

/* compiled from: PullRequestController.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class j {
    private static j c;

    /* renamed from: a, reason: collision with root package name */
    private SparseArray<g> f2189a = new SparseArray<>();

    /* renamed from: b, reason: collision with root package name */
    private Context f2190b;

    private j(Context context) {
        this.f2190b = context;
    }

    public static j a(Context context) {
        synchronized (j.class) {
            if (c == null) {
                c = new j(context.getApplicationContext());
            }
        }
        return c;
    }

    public g a(int i, int i2, String str) {
        g kVar;
        synchronized (this.f2189a) {
            if (this.f2189a.indexOfKey(i) >= 0) {
                kVar = this.f2189a.get(i);
            } else {
                kVar = new k(this.f2190b, i, i2, str);
                this.f2189a.put(i, kVar);
            }
        }
        return kVar;
    }
}
