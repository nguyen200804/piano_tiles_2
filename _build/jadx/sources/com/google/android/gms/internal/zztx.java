package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.zzsb;
import com.google.android.gms.internal.zzty;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zztx {
    private boolean zzamt = false;
    private zzty OS = null;

    public void initialize(Context context) {
        synchronized (this) {
            if (this.zzamt) {
                return;
            }
            try {
                this.OS = zzty.zza.asInterface(zzsb.zza(context, zzsb.KI, ModuleDescriptor.MODULE_ID).zziu("com.google.android.gms.flags.impl.FlagProviderImpl"));
                this.OS.init(com.google.android.gms.dynamic.zze.zzac(context));
                this.zzamt = true;
            } catch (RemoteException | zzsb.zza e) {
                Log.w("FlagValueProvider", "Failed to initialize flags module.", e);
            }
        }
    }

    public <T> T zzb(zztv<T> zztvVar) {
        synchronized (this) {
            if (this.zzamt) {
                return zztvVar.zza(this.OS);
            }
            return zztvVar.zzjw();
        }
    }
}
