package com.google.android.gms.internal;

import android.util.Log;
import com.google.ads.AdRequest;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzkd extends com.google.android.gms.ads.internal.util.client.zzb {
    public static void v(String str) {
        if (zztb()) {
            Log.v(AdRequest.LOGTAG, str);
        }
    }

    public static boolean zzta() {
        return zzdc.zzbap.get().booleanValue();
    }

    private static boolean zztb() {
        return zzaz(2) && zzta();
    }
}
