package com.mopub.nativesdk.b;

/* compiled from: WEngine.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ h f4614a;

    private n(h hVar) {
        this.f4614a = hVar;
    }

    /* synthetic */ n(h hVar, byte b2) {
        this(hVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j;
        long j2;
        StringBuilder sb = new StringBuilder("js超时！超时上限：");
        j = h.f4606a;
        sb.append(j).append("ms");
        h hVar = this.f4614a;
        StringBuilder sb2 = new StringBuilder("js_timeout_");
        j2 = h.f4606a;
        h.a(hVar, null, new RuntimeException(sb2.append(j2).toString()));
    }
}
