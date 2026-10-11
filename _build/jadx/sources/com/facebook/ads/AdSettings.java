package com.facebook.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.internal.util.AdInternalSettings;
import com.facebook.ads.internal.util.g;
import com.facebook.ads.internal.util.u;
import java.util.Collection;
import java.util.HashSet;
import java.util.UUID;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdSettings {
    public static final boolean DEBUG = false;

    /* renamed from: a, reason: collision with root package name */
    static volatile boolean f2445a;
    private static String e;
    private static boolean f;
    private static boolean g;
    private static String h;
    private static boolean i;
    private static String j;

    /* renamed from: b, reason: collision with root package name */
    private static final String f2446b = AdSettings.class.getSimpleName();
    private static TestAdType k = TestAdType.DEFAULT;
    private static final Collection<String> c = new HashSet();
    private static final Collection<String> d = new HashSet();

    public enum TestAdType {
        DEFAULT("DEFAULT", "Default"),
        IMG_16_9_APP_INSTALL("IMG_16_9_APP_INSTALL", "Image App install"),
        IMG_16_9_LINK("IMG_16_9_LINK", "Image link"),
        VIDEO_HD_16_9_46S_APP_INSTALL("VID_HD_16_9_46S_APP_INSTALL", "Video 46 sec App install"),
        VIDEO_HD_16_9_46S_LINK("VID_HD_16_9_46S_LINK", "Video 46 sec link"),
        VIDEO_HD_16_9_15S_APP_INSTALL("VID_HD_16_9_15S_APP_INSTALL", "Video 15 sec App install"),
        VIDEO_HD_16_9_15S_LINK("VID_HD_16_9_15S_LINK", "Video 15 sec link"),
        VIDEO_HD_9_16_39S_APP_INSTALL("VID_HD_9_16_39S_APP_INSTALL", "Video 39 sec App install"),
        VIDEO_HD_9_16_39S_LINK("VID_HD_9_16_39S_LINK", "Video 39 sec link"),
        CAROUSEL_IMG_SQUARE_APP_INSTALL("CAROUSEL_IMG_SQUARE_APP_INSTALL", "Carousel App install"),
        CAROUSEL_IMG_SQUARE_LINK("CAROUSEL_IMG_SQUARE_LINK", "Carousel link");


        /* renamed from: a, reason: collision with root package name */
        private final String f2447a;

        /* renamed from: b, reason: collision with root package name */
        private final String f2448b;

        TestAdType(String str, String str2) {
            this.f2447a = str;
            this.f2448b = str2;
        }

        public String getAdTypeString() {
            return this.f2447a;
        }

        public String getHumanReadable() {
            return this.f2448b;
        }
    }

    static {
        d.add("sdk");
        d.add("google_sdk");
        d.add("vbox86p");
        d.add("vbox86tp");
        f2445a = false;
    }

    private static void a(String str) {
        if (f2445a) {
            return;
        }
        f2445a = true;
        Log.d(f2446b, "Test mode device hash: " + str);
        Log.d(f2446b, "When testing your app with Facebook's ad units you must specify the device hashed ID to ensure the delivery of test ads, add the following code before loading an ad: AdSettings.addTestDevice(\"" + str + "\");");
    }

    public static void addTestDevice(String str) {
        c.add(str);
    }

    public static void addTestDevices(Collection<String> collection) {
        c.addAll(collection);
    }

    public static void clearTestDevices() {
        c.clear();
    }

    public static String getMediationService() {
        return h;
    }

    public static TestAdType getTestAdType() {
        return k;
    }

    public static String getUrlPrefix() {
        return e;
    }

    public static boolean isChildDirected() {
        return i;
    }

    public static boolean isTestMode(Context context) {
        if (AdInternalSettings.f2829a || d.contains(Build.PRODUCT)) {
            return true;
        }
        if (j == null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("FBAdPrefs", 0);
            j = sharedPreferences.getString("deviceIdHash", null);
            if (TextUtils.isEmpty(j)) {
                g.a a2 = g.a(context.getContentResolver());
                if (!TextUtils.isEmpty(a2.f2882b)) {
                    j = u.a(a2.f2882b);
                } else if (TextUtils.isEmpty(a2.f2881a)) {
                    j = u.a(UUID.randomUUID().toString());
                } else {
                    j = u.a(a2.f2881a);
                }
                sharedPreferences.edit().putString("deviceIdHash", j).apply();
            }
        }
        if (c.contains(j)) {
            return true;
        }
        a(j);
        return false;
    }

    public static boolean isVideoAutoplay() {
        return f;
    }

    public static boolean isVideoAutoplayOnMobile() {
        return g;
    }

    public static void setIsChildDirected(boolean z) {
        i = z;
    }

    public static void setMediationService(String str) {
        h = str;
    }

    public static void setTestAdType(TestAdType testAdType) {
        k = testAdType;
    }

    public static void setUrlPrefix(String str) {
        e = str;
    }

    public static void setVideoAutoplay(boolean z) {
        f = z;
    }

    public static void setVideoAutoplayOnMobile(boolean z) {
        g = z;
    }
}
