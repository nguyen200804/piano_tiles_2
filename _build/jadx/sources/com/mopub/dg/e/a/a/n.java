package com.mopub.dg.e.a.a;

import android.content.Context;
import com.mopub.dg.adapi.AdData;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AdData f4323a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f4324b;

    n(AdData adData, Context context) {
        this.f4323a = adData;
        this.f4324b = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        l.b(this.f4323a, this.f4324b);
    }
}
