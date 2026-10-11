package com.cmplay.internalpush.video;

import android.content.Context;
import android.content.res.Resources;
import android.media.AudioManager;

/* compiled from: InnerPushUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {
    public static float a(Context context) {
        if (((AudioManager) context.getSystemService("audio")) != null) {
            return r0.getStreamVolume(3);
        }
        return 0.0f;
    }

    public static float b(Context context) {
        if (((AudioManager) context.getSystemService("audio")) != null) {
            return r0.getStreamMaxVolume(3);
        }
        return 0.0f;
    }

    public static boolean c(Context context) {
        return d(context) == 2;
    }

    public static int d(Context context) {
        Resources resources;
        if (context == null || (resources = context.getApplicationContext().getResources()) == null) {
            return 0;
        }
        return resources.getConfiguration().orientation;
    }
}
