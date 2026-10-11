package com.cmplay.crashreport;

import android.content.Context;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class v implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f1315a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ WifiStateReceiver f1316b;

    v(WifiStateReceiver wifiStateReceiver, Context context) {
        this.f1316b = wifiStateReceiver;
        this.f1315a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        k.a().a(this.f1315a);
    }
}
