package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzl implements Handler.Callback {
    private final Handler mHandler;
    private final zza yE;
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> yF = new ArrayList<>();
    final ArrayList<GoogleApiClient.ConnectionCallbacks> yG = new ArrayList<>();
    private final ArrayList<GoogleApiClient.OnConnectionFailedListener> yH = new ArrayList<>();
    private volatile boolean yI = false;
    private final AtomicInteger yJ = new AtomicInteger(0);
    private boolean yK = false;
    private final Object zzail = new Object();

    public interface zza {
        boolean isConnected();

        Bundle zzamh();
    }

    public zzl(Looper looper, zza zzaVar) {
        this.yE = zzaVar;
        this.mHandler = new Handler(looper, this);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            Log.wtf("GmsClientEvents", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
            return false;
        }
        GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
        synchronized (this.zzail) {
            if (this.yI && this.yE.isConnected() && this.yF.contains(connectionCallbacks)) {
                connectionCallbacks.onConnected(this.yE.zzamh());
            }
        }
        return true;
    }

    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        boolean contains;
        zzab.zzy(connectionCallbacks);
        synchronized (this.zzail) {
            contains = this.yF.contains(connectionCallbacks);
        }
        return contains;
    }

    public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        boolean contains;
        zzab.zzy(onConnectionFailedListener);
        synchronized (this.zzail) {
            contains = this.yH.contains(onConnectionFailedListener);
        }
        return contains;
    }

    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        zzab.zzy(connectionCallbacks);
        synchronized (this.zzail) {
            if (this.yF.contains(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                Log.w("GmsClientEvents", new StringBuilder(String.valueOf(valueOf).length() + 62).append("registerConnectionCallbacks(): listener ").append(valueOf).append(" is already registered").toString());
            } else {
                this.yF.add(connectionCallbacks);
            }
        }
        if (this.yE.isConnected()) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, connectionCallbacks));
        }
    }

    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zzab.zzy(onConnectionFailedListener);
        synchronized (this.zzail) {
            if (this.yH.contains(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                Log.w("GmsClientEvents", new StringBuilder(String.valueOf(valueOf).length() + 67).append("registerConnectionFailedListener(): listener ").append(valueOf).append(" is already registered").toString());
            } else {
                this.yH.add(onConnectionFailedListener);
            }
        }
    }

    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        zzab.zzy(connectionCallbacks);
        synchronized (this.zzail) {
            if (!this.yF.remove(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                Log.w("GmsClientEvents", new StringBuilder(String.valueOf(valueOf).length() + 52).append("unregisterConnectionCallbacks(): listener ").append(valueOf).append(" not found").toString());
            } else if (this.yK) {
                this.yG.add(connectionCallbacks);
            }
        }
    }

    public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zzab.zzy(onConnectionFailedListener);
        synchronized (this.zzail) {
            if (!this.yH.remove(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                Log.w("GmsClientEvents", new StringBuilder(String.valueOf(valueOf).length() + 57).append("unregisterConnectionFailedListener(): listener ").append(valueOf).append(" not found").toString());
            }
        }
    }

    public void zzasw() {
        this.yI = false;
        this.yJ.incrementAndGet();
    }

    public void zzasx() {
        this.yI = true;
    }

    public void zzgf(int i) {
        zzab.zza(Looper.myLooper() == this.mHandler.getLooper(), "onUnintentionalDisconnection must only be called on the Handler thread");
        this.mHandler.removeMessages(1);
        synchronized (this.zzail) {
            this.yK = true;
            ArrayList arrayList = new ArrayList(this.yF);
            int i2 = this.yJ.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) it.next();
                if (!this.yI || this.yJ.get() != i2) {
                    break;
                } else if (this.yF.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnectionSuspended(i);
                }
            }
            this.yG.clear();
            this.yK = false;
        }
    }

    public void zzm(ConnectionResult connectionResult) {
        zzab.zza(Looper.myLooper() == this.mHandler.getLooper(), "onConnectionFailure must only be called on the Handler thread");
        this.mHandler.removeMessages(1);
        synchronized (this.zzail) {
            ArrayList arrayList = new ArrayList(this.yH);
            int i = this.yJ.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener) it.next();
                if (!this.yI || this.yJ.get() != i) {
                    return;
                }
                if (this.yH.contains(onConnectionFailedListener)) {
                    onConnectionFailedListener.onConnectionFailed(connectionResult);
                }
            }
        }
    }

    public void zzo(Bundle bundle) {
        zzab.zza(Looper.myLooper() == this.mHandler.getLooper(), "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.zzail) {
            zzab.zzbn(!this.yK);
            this.mHandler.removeMessages(1);
            this.yK = true;
            zzab.zzbn(this.yG.size() == 0);
            ArrayList arrayList = new ArrayList(this.yF);
            int i = this.yJ.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) it.next();
                if (!this.yI || !this.yE.isConnected() || this.yJ.get() != i) {
                    break;
                } else if (!this.yG.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(bundle);
                }
            }
            this.yG.clear();
            this.yK = false;
        }
    }
}
