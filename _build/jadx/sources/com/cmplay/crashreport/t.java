package com.cmplay.crashreport;

import android.database.CursorWindowAllocationException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.os.Build;
import android.text.TextUtils;
import android.view.WindowManager;
import java.util.concurrent.TimeoutException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f1314a = false;

    public static boolean a(Throwable th) {
        if (th == null) {
            return false;
        }
        if (!(th instanceof OutOfMemoryError) && !(th instanceof SQLiteDatabaseCorruptException) && !(th instanceof WindowManager.BadTokenException) && !(th instanceof VerifyError)) {
            if (Build.VERSION.SDK_INT >= 15 && (th instanceof CursorWindowAllocationException)) {
                return true;
            }
            String message = th.getMessage();
            if ((th instanceof SecurityException) && message != null) {
                if (message.contains("Not allowed to start service Intent") && message.contains("Service process is bad")) {
                    return true;
                }
                if (message.contains("when starting service") && message.contains("com.cleanmaster.service.FloatService")) {
                    return true;
                }
            }
            if ((th instanceof IllegalArgumentException) && message != null && message.contains("Unknown URL")) {
                return true;
            }
            if (message != null) {
                return th.getMessage().contains("Couldn't expand RemoteViews for") || message.contains("Bad notification posted from") || message.contains("CRITICAL ERROR") || message.contains("infoc data format error");
            }
            return false;
        }
        return true;
    }

    public static boolean b(Throwable th) {
        return (th instanceof TimeoutException) && Build.VERSION.SDK_INT >= 17 && !TextUtils.isEmpty(th.getMessage()) && th.getMessage().contains("timed out after 10 seconds");
    }

    public static boolean c(Throwable th) {
        if ((th instanceof NoClassDefFoundError) || (th instanceof ClassNotFoundException)) {
            return true;
        }
        Throwable cause = th.getCause();
        return cause != null && ((cause instanceof NoClassDefFoundError) || (cause instanceof ClassNotFoundException));
    }
}
