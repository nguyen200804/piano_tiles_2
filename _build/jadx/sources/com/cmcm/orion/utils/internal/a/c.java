package com.cmcm.orion.utils.internal.a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: GooglePlayServiceConnection.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class c implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    boolean f1111a = false;

    /* renamed from: b, reason: collision with root package name */
    private final BlockingQueue<IBinder> f1112b = new LinkedBlockingQueue();

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName name, IBinder service) {
        try {
            this.f1112b.put(service);
        } catch (InterruptedException e) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName name) {
    }

    public final IBinder a() throws InterruptedException {
        if (this.f1111a) {
            throw new IllegalStateException();
        }
        this.f1111a = true;
        return this.f1112b.take();
    }
}
