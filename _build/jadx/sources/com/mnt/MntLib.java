package com.mnt;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.util.Log;
import com.mnt.impl.b.j;
import com.mnt.impl.e;
import com.mnt.impl.h.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MntLib {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3904a = e.f;

    public static void init(Context context, String str) {
        init(context, str, null);
    }

    public static void init(Context context, String str, MntAdConfig mntAdConfig) {
        a.a(context, str, mntAdConfig);
        a(context);
    }

    private static boolean a(Context context) {
        boolean z;
        boolean z2 = true;
        PackageManager packageManager = context.getPackageManager();
        try {
            z = packageManager.resolveActivity(new Intent(context, (Class<?>) MntActivity.class), 65536) != null;
        } catch (Throwable th) {
            z = false;
        }
        if (!z) {
            Log.e(f3904a, e.g + false, new Exception(e.h + MntActivity.class.getName() + e.i));
        }
        try {
            if (packageManager.getReceiverInfo(new ComponentName(context, (Class<?>) MntBroadcastReceiver.class), 65536) == null) {
                z2 = false;
            }
        } catch (Throwable th2) {
            z2 = false;
        }
        if (!z2) {
            Log.e(f3904a, e.j + false, new Exception(e.k + MntBroadcastReceiver.class.getName() + e.l));
        }
        return z2;
    }

    public static void load(MntBuild mntBuild) {
        a.a((Object) mntBuild);
    }

    public static void clean(Context context) {
        a.a(context);
    }

    public static int getSdkVersion() {
        return 128;
    }

    public static String getSdkName() {
        return j.f3950a;
    }
}
