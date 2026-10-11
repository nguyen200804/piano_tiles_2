package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzci extends zzcd {
    private final zzft zzarp;

    public zzci(Context context, AdSizeParcel adSizeParcel, zzju zzjuVar, VersionInfoParcel versionInfoParcel, zzck zzckVar, zzft zzftVar) {
        super(context, adSizeParcel, zzjuVar, versionInfoParcel, zzckVar);
        this.zzarp = zzftVar;
        zzc(this.zzarp);
        zzgw();
        zzk(3);
        String valueOf = String.valueOf(this.zzaqk.zzhn());
        zzkd.zzcv(valueOf.length() != 0 ? "Tracking ad unit: ".concat(valueOf) : new String("Tracking ad unit: "));
    }

    @Override // com.google.android.gms.internal.zzcd
    protected void destroy() {
        synchronized (this.zzail) {
            super.destroy();
            zzd(this.zzarp);
        }
    }

    @Override // com.google.android.gms.internal.zzcd
    protected void zzb(JSONObject jSONObject) {
        this.zzarp.zza("AFMA_updateActiveView", jSONObject);
    }

    @Override // com.google.android.gms.internal.zzcd
    public void zzgy() {
        destroy();
    }

    @Override // com.google.android.gms.internal.zzcd
    protected boolean zzhe() {
        return true;
    }
}
