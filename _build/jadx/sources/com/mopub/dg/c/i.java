package com.mopub.dg.c;

import java.util.TimerTask;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class i extends TimerTask {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f4271a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ h f4272b;

    public i(h hVar, l lVar) {
        this.f4272b = hVar;
        this.f4271a = lVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        if (this.f4272b.c) {
            return;
        }
        this.f4271a.onDataFail();
        this.f4272b.d = true;
    }
}
