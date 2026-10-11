package com.mopub.nativesdk.d;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: AdvertisingIdClient.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class b implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    private boolean f4688a;

    /* renamed from: b, reason: collision with root package name */
    private final LinkedBlockingQueue<IBinder> f4689b;

    private b() {
        this.f4688a = false;
        this.f4689b = new LinkedBlockingQueue<>(1);
    }

    /* synthetic */ b(byte b2) {
        this();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.f4689b.put(iBinder);
        } catch (InterruptedException e) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }

    public final IBinder a() {
        if (this.f4688a) {
            throw new IllegalStateException();
        }
        this.f4688a = true;
        return this.f4689b.take();
    }
}
