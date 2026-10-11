package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.internal.zzrp;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzz {
    private static String ze;
    private static int zf;
    private static Object zzamr = new Object();
    private static boolean zzbyu;

    public static String zzcf(Context context) {
        zzch(context);
        return ze;
    }

    public static int zzcg(Context context) {
        zzch(context);
        return zf;
    }

    private static void zzch(Context context) {
        Bundle bundle;
        synchronized (zzamr) {
            if (zzbyu) {
                return;
            }
            zzbyu = true;
            try {
                bundle = zzrp.zzcq(context).getApplicationInfo(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e) {
                Log.wtf("MetadataValueReader", "This should never happen.", e);
            }
            if (bundle == null) {
                return;
            }
            ze = bundle.getString("com.google.app.id");
            zf = bundle.getInt("com.google.android.gms.version");
        }
    }
}
