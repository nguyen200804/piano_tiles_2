package com.mopub.dg.d;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class l extends Thread {

    /* renamed from: a, reason: collision with root package name */
    private m f4302a;

    /* renamed from: b, reason: collision with root package name */
    private String f4303b;

    public l(m mVar, String str) {
        this.f4302a = mVar;
        this.f4303b = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        k.b(this.f4303b, this.f4302a);
    }
}
