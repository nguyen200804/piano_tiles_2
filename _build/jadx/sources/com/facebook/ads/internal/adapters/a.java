package com.facebook.ads.internal.adapters;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    protected final b f2571a;

    /* renamed from: b, reason: collision with root package name */
    protected final com.facebook.ads.internal.j.a f2572b;
    private final Context c;
    private boolean d;

    public a(Context context, b bVar, com.facebook.ads.internal.j.a aVar) {
        this.c = context;
        this.f2571a = bVar;
        this.f2572b = aVar;
    }

    public final void a() {
        if (this.d) {
            return;
        }
        if (this.f2571a != null) {
            this.f2571a.d();
        }
        HashMap hashMap = new HashMap();
        if (this.f2572b != null) {
            this.f2572b.a(hashMap);
        }
        a(hashMap);
        this.d = true;
        com.facebook.ads.internal.util.g.a(this.c, "Impression logged");
        if (this.f2571a != null) {
            this.f2571a.e();
        }
    }

    protected abstract void a(Map<String, String> map);
}
