package com.applovin.impl.sdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.applovin.sdk.AppLovinLogger;
import com.mopub.common.GpsHelper;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Locale;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class cy {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinSdkImpl f514a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f515b;
    private final AppLovinLogger c;

    cy(AppLovinSdkImpl appLovinSdkImpl) {
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f514a = appLovinSdkImpl;
        this.c = appLovinSdkImpl.getLogger();
        this.f515b = appLovinSdkImpl.getApplicationContext();
    }

    static boolean a(String str, Context context) {
        if (str == null) {
            throw new IllegalArgumentException("No permission name specified");
        }
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }

    dc a() {
        TelephonyManager telephonyManager;
        dc dcVar = new dc();
        dcVar.h = Locale.getDefault();
        dcVar.f523a = Build.MODEL;
        dcVar.f524b = Build.VERSION.RELEASE;
        dcVar.c = Build.MANUFACTURER;
        dcVar.e = Build.VERSION.SDK_INT;
        dcVar.d = Build.DEVICE;
        if (a("android.permission.READ_PHONE_STATE") && (telephonyManager = (TelephonyManager) this.f515b.getSystemService("phone")) != null) {
            dcVar.f = telephonyManager.getSimCountryIso().toUpperCase(Locale.ENGLISH);
            String networkOperatorName = telephonyManager.getNetworkOperatorName();
            try {
                dcVar.g = URLEncoder.encode(networkOperatorName, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                dcVar.g = networkOperatorName;
            }
        }
        return dcVar;
    }

    boolean a(String str) {
        return a(str, this.f515b);
    }

    da b() {
        ApplicationInfo applicationInfo = this.f515b.getApplicationInfo();
        long lastModified = new File(applicationInfo.sourceDir).lastModified();
        PackageManager packageManager = this.f515b.getPackageManager();
        PackageInfo packageInfo = null;
        try {
            packageInfo = packageManager.getPackageInfo(this.f515b.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
        }
        da daVar = new da();
        daVar.c = applicationInfo.packageName;
        daVar.d = lastModified;
        daVar.f519a = String.valueOf(packageManager.getApplicationLabel(applicationInfo));
        daVar.f520b = packageInfo != null ? packageInfo.versionName : "";
        return daVar;
    }

    cz c() {
        Object invoke;
        try {
            Class<?> cls = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            if (cls != null && (invoke = cls.getMethod("getAdvertisingIdInfo", Context.class).invoke(null, this.f515b)) != null) {
                Class<?> cls2 = invoke.getClass();
                Object invoke2 = cls2.getMethod(GpsHelper.IS_LIMIT_AD_TRACKING_ENABLED_KEY, null).invoke(invoke, null);
                Object invoke3 = cls2.getMethod("getId", null).invoke(invoke, null);
                cz czVar = new cz();
                String str = (String) invoke3;
                String str2 = str == null ? "" : str;
                czVar.f516a = ((Boolean) invoke2).booleanValue();
                czVar.f517b = str2;
                return czVar;
            }
        } catch (ClassNotFoundException e) {
            this.c.userError("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }", e);
        } catch (Throwable th) {
            this.c.e("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }", th);
        }
        cz czVar2 = new cz();
        czVar2.f517b = "";
        czVar2.f516a = false;
        return czVar2;
    }
}
