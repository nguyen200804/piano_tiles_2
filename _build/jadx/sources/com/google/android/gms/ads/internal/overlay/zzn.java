package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.internal.zzdi;
import com.google.android.gms.internal.zzdk;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzlh;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzn extends zzj {
    @Override // com.google.android.gms.ads.internal.overlay.zzj
    @Nullable
    public zzi zza(Context context, zzlh zzlhVar, int i, boolean z, zzdk zzdkVar, zzdi zzdiVar) {
        if (zzq(context)) {
            return new zzc(context, z, zzg(zzlhVar), new zzx(context, zzlhVar.zzum(), zzlhVar.getRequestId(), zzdkVar, zzdiVar));
        }
        return null;
    }
}
