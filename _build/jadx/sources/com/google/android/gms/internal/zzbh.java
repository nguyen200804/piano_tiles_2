package com.google.android.gms.internal;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.zzae;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzbh extends zzbp {
    public zzbh(zzax zzaxVar, String str, String str2, zzae.zza zzaVar, int i, int i2) {
        super(zzaxVar, str, str2, zzaVar, i, i2);
    }

    private void zzcv() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.zzaha) {
            this.zzaha.zzeg = (String) this.zzahh.invoke(null, this.zzaey.getContext());
        }
    }

    private void zzcw() {
        AdvertisingIdClient zzcr = this.zzaey.zzcr();
        if (zzcr == null) {
            zzp("E1");
            return;
        }
        try {
            AdvertisingIdClient.Info info = zzcr.getInfo();
            String zzo = zzay.zzo(info.getId());
            if (zzo == null) {
                zzp("E");
                return;
            }
            synchronized (this.zzaha) {
                this.zzaha.zzeg = zzo;
                this.zzaha.zzei = Boolean.valueOf(info.isLimitAdTrackingEnabled());
                this.zzaha.zzeh = 5;
            }
        } catch (IOException e) {
            zzp("E");
        }
    }

    private void zzp(String str) {
    }

    @Override // com.google.android.gms.internal.zzbp
    protected void zzcu() throws IllegalAccessException, InvocationTargetException {
        if (this.zzaey.zzci()) {
            zzcw();
        } else {
            zzcv();
        }
    }
}
