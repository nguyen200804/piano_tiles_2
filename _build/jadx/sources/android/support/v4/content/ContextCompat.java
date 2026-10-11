package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Process;
import android.support.annotation.NonNull;
import android.util.Log;
import java.io.File;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ContextCompat {
    private static final String DIR_ANDROID = "Android";
    private static final String DIR_CACHE = "cache";
    private static final String DIR_DATA = "data";
    private static final String DIR_FILES = "files";
    private static final String DIR_OBB = "obb";
    private static final String TAG = "ContextCompat";

    public static boolean startActivities(Context context, Intent[] intents) {
        return startActivities(context, intents, null);
    }

    public static boolean startActivities(Context context, Intent[] intents, Bundle options) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 16) {
            ContextCompatJellybean.startActivities(context, intents, options);
            return true;
        }
        if (i >= 11) {
            ContextCompatHoneycomb.startActivities(context, intents);
            return true;
        }
        return false;
    }

    public static File[] getObbDirs(Context context) {
        File buildPath;
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            return ContextCompatKitKat.getObbDirs(context);
        }
        if (i >= 11) {
            buildPath = ContextCompatHoneycomb.getObbDir(context);
        } else {
            buildPath = buildPath(Environment.getExternalStorageDirectory(), DIR_ANDROID, DIR_OBB, context.getPackageName());
        }
        return new File[]{buildPath};
    }

    public static File[] getExternalFilesDirs(Context context, String type) {
        File buildPath;
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            return ContextCompatKitKat.getExternalFilesDirs(context, type);
        }
        if (i >= 8) {
            buildPath = ContextCompatFroyo.getExternalFilesDir(context, type);
        } else {
            buildPath = buildPath(Environment.getExternalStorageDirectory(), DIR_ANDROID, DIR_DATA, context.getPackageName(), DIR_FILES, type);
        }
        return new File[]{buildPath};
    }

    public static File[] getExternalCacheDirs(Context context) {
        File buildPath;
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            return ContextCompatKitKat.getExternalCacheDirs(context);
        }
        if (i >= 8) {
            buildPath = ContextCompatFroyo.getExternalCacheDir(context);
        } else {
            buildPath = buildPath(Environment.getExternalStorageDirectory(), DIR_ANDROID, DIR_DATA, context.getPackageName(), DIR_CACHE);
        }
        return new File[]{buildPath};
    }

    private static File buildPath(File base, String... segments) {
        File file;
        int length = segments.length;
        int i = 0;
        File file2 = base;
        while (i < length) {
            String str = segments[i];
            if (file2 == null) {
                file = new File(str);
            } else {
                file = str != null ? new File(file2, str) : file2;
            }
            i++;
            file2 = file;
        }
        return file2;
    }

    public static final Drawable getDrawable(Context context, int id) {
        return Build.VERSION.SDK_INT >= 21 ? ContextCompatApi21.getDrawable(context, id) : context.getResources().getDrawable(id);
    }

    public static final ColorStateList getColorStateList(Context context, int id) {
        return Build.VERSION.SDK_INT >= 23 ? ContextCompatApi23.getColorStateList(context, id) : context.getResources().getColorStateList(id);
    }

    public static final int getColor(Context context, int id) {
        return Build.VERSION.SDK_INT >= 23 ? ContextCompatApi23.getColor(context, id) : context.getResources().getColor(id);
    }

    public static int checkSelfPermission(@NonNull Context context, @NonNull String permission) {
        if (permission == null) {
            throw new IllegalArgumentException("permission is null");
        }
        return context.checkPermission(permission, Process.myPid(), Process.myUid());
    }

    public final File getNoBackupFilesDir(Context context) {
        if (Build.VERSION.SDK_INT >= 21) {
            return ContextCompatApi21.getNoBackupFilesDir(context);
        }
        return createFilesDir(new File(context.getApplicationInfo().dataDir, "no_backup"));
    }

    public static File getCodeCacheDir(Context context) {
        if (Build.VERSION.SDK_INT >= 21) {
            return ContextCompatApi21.getCodeCacheDir(context);
        }
        return createFilesDir(new File(context.getApplicationInfo().dataDir, "code_cache"));
    }

    private static synchronized File createFilesDir(File file) {
        synchronized (ContextCompat.class) {
            if (!file.exists() && !file.mkdirs() && !file.exists()) {
                Log.w(TAG, "Unable to create files subdir " + file.getPath());
                file = null;
            }
        }
        return file;
    }
}
