package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.facebook.FacebookActivity;
import java.util.Collection;
import java.util.Iterator;

/* compiled from: Validate.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class ab {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3169a = ab.class.getName();

    public static void a(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException("Argument '" + str + "' cannot be null");
        }
    }

    public static <T> void a(Collection<T> collection, String str) {
        if (collection.isEmpty()) {
            throw new IllegalArgumentException("Container '" + str + "' cannot be empty");
        }
    }

    public static <T> void b(Collection<T> collection, String str) {
        a((Object) collection, str);
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                throw new NullPointerException("Container '" + str + "' cannot contain null values");
            }
        }
    }

    public static <T> void c(Collection<T> collection, String str) {
        b(collection, str);
        a((Collection) collection, str);
    }

    public static void a(String str, String str2) {
        if (aa.a(str)) {
            throw new IllegalArgumentException("Argument '" + str2 + "' cannot be null or empty");
        }
    }

    public static void a() {
        if (!com.facebook.l.a()) {
            throw new com.facebook.m("The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first.");
        }
    }

    public static String b() {
        String i = com.facebook.l.i();
        if (i == null) {
            throw new IllegalStateException("No App ID found, please set the App ID.");
        }
        return i;
    }

    public static void a(Context context) {
        a(context, true);
    }

    public static void a(Context context, boolean z) {
        a(context, "context");
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
            if (z) {
                throw new IllegalStateException("No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
            }
            Log.w(f3169a, "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
        }
    }

    public static void b(Context context) {
        b(context, true);
    }

    public static void b(Context context, boolean z) {
        a(context, "context");
        PackageManager packageManager = context.getPackageManager();
        ActivityInfo activityInfo = null;
        if (packageManager != null) {
            try {
                activityInfo = packageManager.getActivityInfo(new ComponentName(context, (Class<?>) FacebookActivity.class), 1);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        if (activityInfo == null) {
            if (z) {
                throw new IllegalStateException("FacebookActivity is not declared in the AndroidManifest.xml, please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.");
            }
            Log.w(f3169a, "FacebookActivity is not declared in the AndroidManifest.xml, please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.");
        }
    }

    public static void c(Context context) {
        a(context, "context");
        String b2 = b();
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            String str = "com.facebook.app.FacebookContentProvider" + b2;
            if (packageManager.resolveContentProvider(str, 0) == null) {
                throw new IllegalStateException(String.format("A ContentProvider for this app was not set up in the AndroidManifest.xml, please add %s as a provider to your AndroidManifest.xml file. See https://developers.facebook.com/docs/sharing/android for more info.", str));
            }
        }
    }
}
