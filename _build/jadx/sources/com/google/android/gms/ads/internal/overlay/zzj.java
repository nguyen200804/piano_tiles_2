package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.support.annotation.Nullable;
import com.google.android.gms.internal.zzdi;
import com.google.android.gms.internal.zzdk;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzlh;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzj {
    @Nullable
    public abstract zzi zza(Context context, zzlh zzlhVar, int i, boolean z, zzdk zzdkVar, zzdi zzdiVar);

    protected boolean zzg(zzlh zzlhVar) {
        return zzlhVar.zzdn().zzaus;
    }

    protected boolean zzq(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return com.google.android.gms.common.util.zzs.zzavq() && (applicationInfo == null || applicationInfo.targetSdkVersion >= 11);
    }
}
