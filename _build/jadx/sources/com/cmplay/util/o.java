package com.cmplay.util;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.os.Process;

/* compiled from: MemUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class o {
    public static void a(String str, Context context) {
    }

    public static int a(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null) {
            return 0;
        }
        Debug.MemoryInfo[] processMemoryInfo = activityManager.getProcessMemoryInfo(new int[]{Process.myPid()});
        if (processMemoryInfo == null || processMemoryInfo.length < 1) {
            return 0;
        }
        return processMemoryInfo[0].getTotalPss();
    }
}
