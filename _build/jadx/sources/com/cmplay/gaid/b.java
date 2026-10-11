package com.cmplay.gaid;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: GooglePlayServiceConnection.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    boolean f1368a = false;

    /* renamed from: b, reason: collision with root package name */
    private final BlockingQueue<IBinder> f1369b = new LinkedBlockingQueue();

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName name, IBinder service) {
        try {
            this.f1369b.put(service);
        } catch (InterruptedException e) {
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName name) {
    }

    public IBinder a() throws InterruptedException {
        if (this.f1368a) {
            throw new IllegalStateException();
        }
        this.f1368a = true;
        return this.f1369b.take();
    }
}
