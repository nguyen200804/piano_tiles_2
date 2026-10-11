package com.mopub.dg.d;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class d implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    boolean f4292a;

    /* renamed from: b, reason: collision with root package name */
    private final LinkedBlockingQueue f4293b;

    private d() {
        this.f4292a = false;
        this.f4293b = new LinkedBlockingQueue(1);
    }

    /* synthetic */ d(byte b2) {
        this();
    }

    public final IBinder a() {
        if (this.f4292a) {
            throw new IllegalStateException();
        }
        this.f4292a = true;
        return (IBinder) this.f4293b.take();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.f4293b.put(iBinder);
        } catch (InterruptedException e) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
