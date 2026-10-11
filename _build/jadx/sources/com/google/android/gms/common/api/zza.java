package com.google.android.gms.common.api;

import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.zzpj;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zza extends zzb {
    private final ConnectionResult rF;

    public zza(Status status, ArrayMap<zzpj<?>, ConnectionResult> arrayMap) {
        super(status, arrayMap);
        this.rF = arrayMap.get(arrayMap.keyAt(0));
    }
}
