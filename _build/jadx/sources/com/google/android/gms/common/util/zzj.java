package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;
import com.applovin.sdk.AppLovinEventTypes;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzj {
    private static long Bc;
    private static IntentFilter Bb = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    private static float Bd = Float.NaN;

    @TargetApi(20)
    public static boolean zzb(PowerManager powerManager) {
        return zzs.zzavv() ? powerManager.isInteractive() : powerManager.isScreenOn();
    }

    @TargetApi(20)
    public static int zzcm(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent registerReceiver = context.getApplicationContext().registerReceiver(null, Bb);
        boolean z = ((registerReceiver == null ? 0 : registerReceiver.getIntExtra("plugged", 0)) & 7) != 0;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return -1;
        }
        return ((zzb(powerManager) ? 1 : 0) << 1) | (z ? 1 : 0);
    }

    public static synchronized float zzcn(Context context) {
        float f;
        synchronized (zzj.class) {
            if (SystemClock.elapsedRealtime() - Bc >= 60000 || Float.isNaN(Bd)) {
                if (context.getApplicationContext().registerReceiver(null, Bb) != null) {
                    Bd = r0.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) / r0.getIntExtra("scale", -1);
                }
                Bc = SystemClock.elapsedRealtime();
                f = Bd;
            } else {
                f = Bd;
            }
        }
        return f;
    }
}
