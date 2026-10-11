package com.facebook.notifications.internal.asset.a;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.facebook.notifications.internal.asset.a.b;
import com.facebook.notifications.internal.asset.a.c;
import java.net.URL;
import java.util.HashSet;
import java.util.Set;

/* compiled from: CacheOperation.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class a implements c.a {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Object f3376a = new Object();

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final Set<URL> f3377b;

    @NonNull
    private final Set<URL> c;

    @NonNull
    private final b.a d;

    public a(@NonNull Set<URL> set, @NonNull b.a aVar) {
        this.f3377b = set;
        this.c = new HashSet(set);
        this.d = aVar;
    }

    @NonNull
    public Set<URL> a() {
        return this.f3377b;
    }

    @Override // com.facebook.notifications.internal.asset.a.c.a
    public void a(@NonNull URL url, @Nullable byte[] bArr) {
        boolean z;
        synchronized (this.f3376a) {
            this.c.remove(url);
            z = this.c.size() == 0;
        }
        if (z) {
            this.d.a(this.f3377b);
        }
    }
}
