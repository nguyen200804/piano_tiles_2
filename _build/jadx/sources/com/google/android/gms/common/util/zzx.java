package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.v4.view.MotionEventCompat;
import android.util.Log;
import java.io.File;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzx {
    @TargetApi(MotionEventCompat.AXIS_WHEEL)
    public static File getNoBackupFilesDir(Context context) {
        return zzs.zzavx() ? context.getNoBackupFilesDir() : zze(new File(context.getApplicationInfo().dataDir, "no_backup"));
    }

    private static synchronized File zze(File file) {
        synchronized (zzx.class) {
            if (!file.exists() && !file.mkdirs() && !file.exists()) {
                String valueOf = String.valueOf(file.getPath());
                Log.w("SupportV4Utils", valueOf.length() != 0 ? "Unable to create no-backup dir ".concat(valueOf) : new String("Unable to create no-backup dir "));
                file = null;
            }
        }
        return file;
    }
}
