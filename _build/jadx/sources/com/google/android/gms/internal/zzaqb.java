package com.google.android.gms.internal;

import android.content.ComponentName;
import android.support.customtabs.CustomTabsClient;
import android.support.customtabs.CustomTabsServiceConnection;
import java.lang.ref.WeakReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzaqb extends CustomTabsServiceConnection {
    private WeakReference<zzaqc> bkx;

    public zzaqb(zzaqc zzaqcVar) {
        this.bkx = new WeakReference<>(zzaqcVar);
    }

    public void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
        zzaqc zzaqcVar = this.bkx.get();
        if (zzaqcVar != null) {
            zzaqcVar.zza(customTabsClient);
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        zzaqc zzaqcVar = this.bkx.get();
        if (zzaqcVar != null) {
            zzaqcVar.zzkm();
        }
    }
}
