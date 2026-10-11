package com.mopub.common.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.StatFs;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Reflection;
import java.io.File;
import java.net.SocketException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DeviceUtils {

    @Deprecated
    public enum IP {
        IPv4,
        IPv6
    }

    private DeviceUtils() {
    }

    public enum ForceOrientation {
        FORCE_PORTRAIT("portrait"),
        FORCE_LANDSCAPE("landscape"),
        DEVICE_ORIENTATION("device"),
        UNDEFINED("");


        /* renamed from: a, reason: collision with root package name */
        @NonNull
        private final String f4230a;

        ForceOrientation(String key) {
            this.f4230a = key;
        }

        @NonNull
        public static ForceOrientation getForceOrientation(@Nullable String key) {
            for (ForceOrientation forceOrientation : values()) {
                if (forceOrientation.f4230a.equalsIgnoreCase(key)) {
                    return forceOrientation;
                }
            }
            return UNDEFINED;
        }
    }

    public static boolean isNetworkAvailable(@Nullable Context context) {
        if (context != null && isPermissionGranted(context, "android.permission.INTERNET")) {
            if (!isPermissionGranted(context, "android.permission.ACCESS_NETWORK_STATE")) {
                return true;
            }
            try {
                ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                NetworkInfo networkInfo = null;
                return networkInfo.isConnected();
            } catch (NullPointerException e) {
                return false;
            }
        }
        return false;
    }

    public static int memoryCacheSizeBytes(Context context) {
        long j;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        long memoryClass = activityManager.getMemoryClass();
        try {
        } catch (Exception e) {
            MoPubLog.d("Unable to reflectively determine large heap size.");
        }
        if (Utils.bitMaskContainsFlag(context.getApplicationInfo().flags, ApplicationInfo.class.getDeclaredField("FLAG_LARGE_HEAP").getInt(null))) {
            j = ((Integer) new Reflection.MethodBuilder(activityManager, "getLargeMemoryClass").execute()).intValue();
            return (int) Math.min(31457280L, (j / 8) * 1024 * 1024);
        }
        j = memoryClass;
        return (int) Math.min(31457280L, (j / 8) * 1024 * 1024);
    }

    public static long diskCacheSizeBytes(File dir, long minSize) {
        try {
            StatFs statFs = new StatFs(dir.getAbsolutePath());
            minSize = (statFs.getBlockSize() * statFs.getBlockCount()) / 50;
        } catch (IllegalArgumentException e) {
            MoPubLog.d("Unable to calculate 2% of available disk space, defaulting to minimum");
        }
        return Math.max(Math.min(minSize, 104857600L), 31457280L);
    }

    public static long diskCacheSizeBytes(File dir) {
        return diskCacheSizeBytes(dir, 31457280L);
    }

    public static int getScreenOrientation(@NonNull Activity activity) {
        return a(activity.getWindowManager().getDefaultDisplay().getRotation(), activity.getResources().getConfiguration().orientation);
    }

    static int a(int i, int i2) {
        if (1 == i2) {
            switch (i) {
                case 1:
                case 2:
                    return 9;
                default:
                    return 1;
            }
        }
        if (2 == i2) {
            switch (i) {
                case 2:
                case 3:
                    return 8;
                default:
                    return 0;
            }
        }
        MoPubLog.d("Unknown screen orientation. Defaulting to portrait.");
        return 9;
    }

    public static void lockOrientation(@NonNull Activity activity, @NonNull CreativeOrientation creativeOrientation) {
        int i;
        if (Preconditions.NoThrow.checkNotNull(creativeOrientation) && Preconditions.NoThrow.checkNotNull(activity)) {
            int a2 = a(((WindowManager) activity.getSystemService("window")).getDefaultDisplay().getRotation(), activity.getResources().getConfiguration().orientation);
            if (CreativeOrientation.PORTRAIT == creativeOrientation) {
                i = 9 == a2 ? 9 : 1;
            } else if (CreativeOrientation.LANDSCAPE == creativeOrientation) {
                i = 8 == a2 ? 8 : 0;
            } else {
                return;
            }
            activity.setRequestedOrientation(i);
        }
    }

    @TargetApi(17)
    public static Point getDeviceDimensions(@NonNull Context context) {
        Integer num;
        Integer num2;
        Integer num3;
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (Build.VERSION.SDK_INT >= 17) {
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            num = Integer.valueOf(point.x);
            num2 = Integer.valueOf(point.y);
        } else {
            try {
                num3 = (Integer) new Reflection.MethodBuilder(defaultDisplay, "getRawWidth").execute();
            } catch (Exception e) {
                e = e;
                num = null;
            }
            try {
                Integer num4 = (Integer) new Reflection.MethodBuilder(defaultDisplay, "getRawHeight").execute();
                num = num3;
                num2 = num4;
            } catch (Exception e2) {
                num = num3;
                e = e2;
                MoPubLog.v("Display#getRawWidth/Height failed.", e);
                num2 = null;
                if (num != null) {
                }
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                num = Integer.valueOf(displayMetrics.widthPixels);
                num2 = Integer.valueOf(displayMetrics.heightPixels);
                return new Point(num.intValue(), num2.intValue());
            }
        }
        if (num != null || num2 == null) {
            DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
            num = Integer.valueOf(displayMetrics2.widthPixels);
            num2 = Integer.valueOf(displayMetrics2.heightPixels);
        }
        return new Point(num.intValue(), num2.intValue());
    }

    public static boolean isPermissionGranted(@NonNull Context context, @NonNull String permission) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(permission);
        return ContextCompat.checkSelfPermission(context, permission) == 0;
    }

    @Nullable
    @Deprecated
    public static String getIpAddress(IP ip) throws SocketException {
        return null;
    }

    @Nullable
    @Deprecated
    public static String getHashedUdid(Context context) {
        return null;
    }
}
