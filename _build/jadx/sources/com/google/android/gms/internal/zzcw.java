package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import java.util.Collections;
import java.util.List;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzcw implements zzcx {
    @Override // com.google.android.gms.internal.zzcx
    public List<String> zza(AdRequestInfoParcel adRequestInfoParcel) {
        return adRequestInfoParcel.zzcbh == null ? Collections.emptyList() : adRequestInfoParcel.zzcbh;
    }
}
