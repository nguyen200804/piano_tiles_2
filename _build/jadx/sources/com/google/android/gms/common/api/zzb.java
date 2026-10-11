package com.google.android.gms.common.api;

import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.zzpj;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzb implements Result {
    private final Status bY;
    private final ArrayMap<zzpj<?>, ConnectionResult> rG;

    public zzb(Status status, ArrayMap<zzpj<?>, ConnectionResult> arrayMap) {
        this.bY = status;
        this.rG = arrayMap;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.bY;
    }
}
