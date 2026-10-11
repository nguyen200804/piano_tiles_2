package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzpr extends zzpn {
    @Override // com.google.android.gms.internal.zzpn, com.google.android.gms.internal.zzqj
    public void onStop() {
        zzqc zzqcVar = null;
        com.google.android.gms.common.util.zza zzaVar = null;
        super.onStop();
        Iterator it = ((com.google.android.gms.common.util.zza) null).iterator();
        while (it.hasNext()) {
            ((com.google.android.gms.common.api.zzc) it.next()).release();
        }
        zzaVar.clear();
        zzqcVar.zza(this);
    }

    @Override // com.google.android.gms.internal.zzpn
    protected void zza(ConnectionResult connectionResult, int i) {
        zzqc zzqcVar = null;
        zzqcVar.zza(connectionResult, i);
    }

    @Override // com.google.android.gms.internal.zzpn
    protected void zzaoo() {
        zzqc zzqcVar = null;
        zzqcVar.zzaoo();
    }
}
