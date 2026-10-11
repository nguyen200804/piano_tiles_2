package com.mopub.dg.e.a.a;

import android.content.Context;
import java.util.TimerTask;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class c extends TimerTask {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f4308a;

    c(Context context) {
        this.f4308a = context;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        a.b(this.f4308a);
    }
}
