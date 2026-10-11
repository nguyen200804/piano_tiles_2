package com.mopub.nativesdk.d;

import android.os.Handler;

/* compiled from: ThreadManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class t implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f4703a;

    t(g gVar) {
        this.f4703a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        handler = s.c;
        handler.post(new u(this));
    }
}
