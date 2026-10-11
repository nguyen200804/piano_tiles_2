package com.mopub.nativesdk.core;

import com.mopub.nativesdk.AdListener;
import java.util.List;
import java.util.Random;

/* compiled from: AKService.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class p implements com.mopub.nativesdk.c.l {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ AdListener f4672a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ C0219a f4673b;

    p(C0219a c0219a, AdListener adListener) {
        this.f4673b = c0219a;
        this.f4672a = adListener;
    }

    @Override // com.mopub.nativesdk.c.l
    public final void a() {
    }

    @Override // com.mopub.nativesdk.c.l
    public final void a(Object obj) {
        List list = (List) obj;
        if ((obj == null || list.size() == 0) && this.f4672a != null) {
            this.f4672a.onLoadFailed("No ads");
        }
        if (list != null && list.size() > 0) {
            C0219a.a(this.f4673b, 0);
            C0219a.a(this.f4673b, list, list.size() >= 2 ? new Random().nextInt(list.size() / 2) : 0, this.f4672a);
        }
    }

    @Override // com.mopub.nativesdk.c.l
    public final void a(String str) {
        if (this.f4672a != null) {
            this.f4672a.onLoadFailed(str);
        }
    }

    @Override // com.mopub.nativesdk.c.l
    public final void b() {
    }
}
