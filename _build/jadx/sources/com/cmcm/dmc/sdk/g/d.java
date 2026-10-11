package com.cmcm.dmc.sdk.g;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    boolean f770a = false;

    /* renamed from: b, reason: collision with root package name */
    private final BlockingQueue<IBinder> f771b = new LinkedBlockingQueue();

    public IBinder a() {
        if (this.f770a) {
            throw new IllegalStateException();
        }
        this.f770a = true;
        return this.f771b.take();
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.f771b.put(iBinder);
        } catch (InterruptedException e) {
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}
