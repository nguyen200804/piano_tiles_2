package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.support.v4.view.MotionEventCompat;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzi {
    private static Boolean AX;
    private static Boolean AY;
    private static Boolean AZ;
    private static Boolean Ba;

    public static boolean zzb(Resources resources) {
        if (resources == null) {
            return false;
        }
        if (AX == null) {
            AX = Boolean.valueOf((zzs.zzavn() && ((resources.getConfiguration().screenLayout & 15) > 3)) || zzc(resources));
        }
        return AX.booleanValue();
    }

    @TargetApi(13)
    private static boolean zzc(Resources resources) {
        if (AY == null) {
            Configuration configuration = resources.getConfiguration();
            AY = Boolean.valueOf(zzs.zzavp() && (configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600);
        }
        return AY.booleanValue();
    }

    @TargetApi(20)
    public static boolean zzck(Context context) {
        if (AZ == null) {
            AZ = Boolean.valueOf(zzs.zzavv() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        return AZ.booleanValue();
    }

    @TargetApi(MotionEventCompat.AXIS_WHEEL)
    public static boolean zzcl(Context context) {
        if (Ba == null) {
            Ba = Boolean.valueOf(zzs.zzavx() && context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return Ba.booleanValue();
    }
}
