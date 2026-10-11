package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzix {
    public abstract void zza(Context context, zzir zzirVar, VersionInfoParcel versionInfoParcel);

    protected void zze(zzir zzirVar) {
        zzirVar.zzri();
        if (zzirVar.zzrg() != null) {
            zzirVar.zzrg().release();
        }
    }
}
