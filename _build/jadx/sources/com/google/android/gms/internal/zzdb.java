package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.support.annotation.Nullable;
import java.util.concurrent.Callable;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzdb {
    private final Object zzail = new Object();
    private boolean zzamt = false;

    @Nullable
    private SharedPreferences zzaxu = null;

    public void initialize(Context context) {
        synchronized (this.zzail) {
            if (this.zzamt) {
                return;
            }
            Context remoteContext = com.google.android.gms.common.zze.getRemoteContext(context);
            if (remoteContext == null) {
                return;
            }
            this.zzaxu = com.google.android.gms.ads.internal.zzu.zzfx().zzn(remoteContext);
            this.zzamt = true;
        }
    }

    public <T> T zzd(final zzcy<T> zzcyVar) {
        synchronized (this.zzail) {
            if (this.zzamt) {
                return (T) zzkt.zzb(new Callable<T>() { // from class: com.google.android.gms.internal.zzdb.1
                    @Override // java.util.concurrent.Callable
                    public T call() {
                        return (T) zzcyVar.zza(zzdb.this.zzaxu);
                    }
                });
            }
            return zzcyVar.zzjw();
        }
    }
}
