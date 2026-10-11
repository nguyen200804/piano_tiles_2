package com.mnt.a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class d implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public boolean f3912a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f3913b;

    private d() {
        this.f3912a = false;
        this.f3913b = new LinkedBlockingQueue<>(1);
    }

    public /* synthetic */ d(byte b2) {
        this();
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.f3913b.put(iBinder);
        } catch (InterruptedException e) {
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
