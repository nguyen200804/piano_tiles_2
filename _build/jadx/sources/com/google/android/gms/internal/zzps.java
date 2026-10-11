package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzqn;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzps<L> implements zzqn.zzb<L> {
    private final DataHolder tu;

    protected zzps(DataHolder dataHolder) {
        this.tu = dataHolder;
    }

    protected abstract void zza(L l, DataHolder dataHolder);

    @Override // com.google.android.gms.internal.zzqn.zzb
    public void zzapj() {
        if (this.tu != null) {
            this.tu.close();
        }
    }

    @Override // com.google.android.gms.internal.zzqn.zzb
    public final void zzt(L l) {
        zza(l, this.tu);
    }
}
