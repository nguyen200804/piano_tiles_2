package com.cmcm.dmc.sdk.e;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.content.SharedPreferences;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    private int f715a = 10;

    /* renamed from: b, reason: collision with root package name */
    private boolean f716b = false;

    public b() {
        c();
    }

    private void c() {
        a(com.cmcm.dmc.sdk.a.c.a(f(), "mode", 10));
    }

    public void a() {
        c();
    }

    public final synchronized void a(int i) {
        this.f715a = i;
    }

    protected final void a(BroadcastReceiver broadcastReceiver) {
        com.cmcm.dmc.sdk.a.c.a(broadcastReceiver);
    }

    protected final void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        com.cmcm.dmc.sdk.a.c.a(broadcastReceiver, intentFilter);
    }

    protected final void a(String str) {
        com.cmcm.dmc.sdk.g.j.a().a(d(), f(), str);
    }

    public final synchronized boolean a(boolean z) {
        boolean z2 = false;
        synchronized (this) {
            if (this.f716b != z) {
                this.f716b = z;
                if (com.cmcm.dmc.sdk.a.f.f673a) {
                    com.cmcm.dmc.sdk.a.i.a(f(), "setEnabled(%s)", Boolean.valueOf(this.f716b));
                }
                if (this.f716b) {
                    b();
                } else {
                    g();
                }
                z2 = true;
            }
        }
        return z2;
    }

    protected void b() {
    }

    public final synchronized int d() {
        return this.f715a;
    }

    public final synchronized boolean e() {
        return this.f716b;
    }

    public abstract String f();

    protected void g() {
    }

    protected final SharedPreferences h() {
        return com.cmcm.dmc.sdk.a.k.a("receiver").b();
    }
}
