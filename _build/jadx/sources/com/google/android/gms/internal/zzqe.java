package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzqe extends BroadcastReceiver {
    protected Context mContext;
    private final zza vc;

    public static abstract class zza {
        public abstract void zzaou();
    }

    public zzqe(zza zzaVar) {
        this.vc = zzaVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            this.vc.zzaou();
            unregister();
        }
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    public synchronized void unregister() {
        if (this.mContext != null) {
            this.mContext.unregisterReceiver(this);
        }
        this.mContext = null;
    }
}
