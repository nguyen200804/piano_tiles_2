package com.mopub.nativesdk.b;

import com.mopub.nativesdk.d.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: WEngine.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class o {

    /* renamed from: a, reason: collision with root package name */
    private List<Runnable> f4615a;

    private o() {
        this.f4615a = new ArrayList();
    }

    /* synthetic */ o(byte b2) {
        this();
    }

    public final void a(Runnable runnable, long j) {
        this.f4615a.add(runnable);
        s.a(0, runnable, j);
    }

    public final void a() {
        if (this.f4615a != null && !this.f4615a.isEmpty()) {
            Iterator<Runnable> it = this.f4615a.iterator();
            while (it.hasNext()) {
                s.a(it.next());
            }
        }
    }
}
