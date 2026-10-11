package com.mnt.impl.i.b;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ String f4061a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ a f4062b;

    b(a aVar, String str) {
        this.f4062b = aVar;
        this.f4061a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean b2;
        do {
            b2 = this.f4062b.b(this.f4061a);
        } while (!b2);
    }
}
