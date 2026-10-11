package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.internal.ab;

/* compiled from: AccessTokenTracker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    private final BroadcastReceiver f3145a;

    /* renamed from: b, reason: collision with root package name */
    private final LocalBroadcastManager f3146b;
    private boolean c = false;

    protected abstract void a(AccessToken accessToken, AccessToken accessToken2);

    public d() {
        ab.a();
        this.f3145a = new a();
        this.f3146b = LocalBroadcastManager.getInstance(l.f());
        a();
    }

    public void a() {
        if (!this.c) {
            d();
            this.c = true;
        }
    }

    public void b() {
        if (this.c) {
            this.f3146b.unregisterReceiver(this.f3145a);
            this.c = false;
        }
    }

    public boolean c() {
        return this.c;
    }

    /* compiled from: AccessTokenTracker.java */
    private class a extends BroadcastReceiver {
        private a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED".equals(intent.getAction())) {
                d.this.a((AccessToken) intent.getParcelableExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"), (AccessToken) intent.getParcelableExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"));
            }
        }
    }

    private void d() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        this.f3146b.registerReceiver(this.f3145a, intentFilter);
    }
}
