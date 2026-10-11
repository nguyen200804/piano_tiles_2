package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.internal.zzab;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zza implements ServiceConnection {
    boolean qZ = false;
    private final BlockingQueue<IBinder> ra = new LinkedBlockingQueue();

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.ra.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }

    public IBinder zza(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        zzab.zzhj("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (this.qZ) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.qZ = true;
        IBinder poll = this.ra.poll(j, timeUnit);
        if (poll == null) {
            throw new TimeoutException("Timed out waiting for the service connection");
        }
        return poll;
    }

    public IBinder zzanf() throws InterruptedException {
        zzab.zzhj("BlockingServiceConnection.getService() called on main thread");
        if (this.qZ) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.qZ = true;
        return this.ra.take();
    }
}
