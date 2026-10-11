package android.support.v4.app;

import android.app.ActivityManager;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ActivityManagerCompatKitKat {
    ActivityManagerCompatKitKat() {
    }

    public static boolean isLowRamDevice(ActivityManager am) {
        return am.isLowRamDevice();
    }
}
