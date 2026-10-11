package com.mopub.dg.e.a.a;

import android.content.Context;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class p implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ArrayList f4327a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f4328b;

    p(ArrayList arrayList, Context context) {
        this.f4327a = arrayList;
        this.f4328b = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        l.a(this.f4327a, this.f4328b);
    }
}
