package com.mopub.dg.e.a.a;

import android.content.Context;
import java.util.TimerTask;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class b extends TimerTask {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f4306a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f4307b;

    b(Context context, String str) {
        this.f4306a = context;
        this.f4307b = str;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        boolean z;
        a.b(this.f4306a);
        z = a.f4305b;
        if (z) {
            return;
        }
        a.b(this.f4306a, this.f4307b);
    }
}
