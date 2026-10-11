package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zziv;
import java.util.WeakHashMap;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zziw {
    private WeakHashMap<Context, zza> zzcha = new WeakHashMap<>();

    private class zza {
        public final long zzchb = com.google.android.gms.ads.internal.zzu.zzfu().currentTimeMillis();
        public final zziv zzchc;

        public zza(zziv zzivVar) {
            this.zzchc = zzivVar;
        }

        public boolean hasExpired() {
            return zzdc.zzbat.get().longValue() + this.zzchb < com.google.android.gms.ads.internal.zzu.zzfu().currentTimeMillis();
        }
    }

    public zziv zzy(Context context) {
        zza zzaVar = this.zzcha.get(context);
        zziv zzrn = (zzaVar == null || zzaVar.hasExpired() || !zzdc.zzbas.get().booleanValue()) ? new zziv.zza(context).zzrn() : new zziv.zza(context, zzaVar.zzchc).zzrn();
        this.zzcha.put(context, new zza(zzrn));
        return zzrn;
    }
}
