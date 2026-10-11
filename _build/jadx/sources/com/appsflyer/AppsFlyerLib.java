package com.appsflyer;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.applovin.sdk.AppLovinEventTypes;
import com.cmplay.base.util.webview.util.WebUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.mopub.common.Constants;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.io.IOUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AppsFlyerLib extends BroadcastReceiver {
    private static long f;

    /* renamed from: a, reason: collision with root package name */
    public static final Uri f573a = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");

    /* renamed from: b, reason: collision with root package name */
    private static final List<String> f574b = Arrays.asList("is_cache");
    private static com.appsflyer.a c = null;
    private static com.appsflyer.b d = null;
    private static boolean e = false;
    private static ScheduledExecutorService g = null;
    private static long h = System.currentTimeMillis();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.PACKAGE_REMOVED".equals(intent.getAction())) {
            Log.i("AppsFlyer_3.0", "Received ACTION_PACKAGE_REMOVED intent");
            Bundle extras = intent.getExtras();
            if (extras.containsKey("android.intent.extra.DATA_REMOVED") && extras.getBoolean("android.intent.extra.DATA_REMOVED")) {
                String dataString = intent.getDataString();
                Log.i("AppsFlyer_3.0", "Package removed");
                a(dataString, context);
                return;
            }
        }
        String stringExtra = intent.getStringExtra("shouldMonitor");
        if (stringExtra != null) {
            Log.i("AppsFlyer_3.0", "Turning on monitoring.");
            com.appsflyer.c.a().a("shouldMonitor", stringExtra.equals("true"));
            b(context, null, "START_TRACKING", context.getPackageName());
            return;
        }
        if (g(context)) {
            Log.i("AppsFlyer_3.0", "****** onReceive called *******");
        }
        a("******* onReceive: ", "", context);
        com.appsflyer.c.a().b();
        String stringExtra2 = intent.getStringExtra("referrer");
        if (g(context)) {
            Log.i("AppsFlyer_3.0", "Play store referrer: " + stringExtra2);
        }
        if (stringExtra2 != null) {
            a("BroadcastReceiver got referrer: ", stringExtra2, context);
            a("onRecieve called. refferer=", stringExtra2, context);
            b(context, "referrer", stringExtra2);
            com.appsflyer.c.a().c(stringExtra2);
            if (com.appsflyer.c.a().c()) {
                Log.i("AppsFlyer_3.0", "onReceive: isLaunchCalled");
                b(context, null, null, null, stringExtra2, false);
            }
        }
    }

    private void a(String str, Context context) {
        String str2 = "https://track.appsflyer.com/api/v3/uninstall?buildnumber=3.0";
        if (g(context)) {
            Log.i("AppsFlyer_3.0", "Calling server for uninstall url: " + str2);
        }
        HashMap hashMap = new HashMap();
        hashMap.put("packageName", str);
        hashMap.put("senderPackageName", context.getPackageName());
        hashMap.put("uid", d(context));
        String string = context.getSharedPreferences("appsflyer-data", 0).getString("androidIdCached", null);
        if (string != null) {
            hashMap.put("android_id", string);
        }
        b(context, hashMap);
        a(context, hashMap);
        com.appsflyer.e eVar = new com.appsflyer.e(context);
        eVar.f590a = hashMap;
        eVar.execute(str2);
    }

    private static void a(String str, String str2, Context context) {
        if (context != null && "com.appsflyer".equals(context.getPackageName())) {
            g.a().a(str + str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean g(Context context) {
        return !com.appsflyer.c.a().e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences("appsflyer-data", 0).edit();
        edit.putString(str, str2);
        if (Build.VERSION.SDK_INT >= 9) {
            edit.apply();
        } else {
            edit.commit();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String str, int i) {
        SharedPreferences.Editor edit = context.getSharedPreferences("appsflyer-data", 0).edit();
        edit.putInt(str, i);
        if (Build.VERSION.SDK_INT >= 9) {
            edit.apply();
        } else {
            edit.commit();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String str, long j) {
        SharedPreferences.Editor edit = context.getSharedPreferences("appsflyer-data", 0).edit();
        edit.putLong(str, j);
        if (Build.VERSION.SDK_INT >= 9) {
            edit.apply();
        } else {
            edit.commit();
        }
    }

    protected static void a(String str, String str2) {
        com.appsflyer.c.a().a(str, str2);
    }

    public static String a(String str) {
        return com.appsflyer.c.a().b(str);
    }

    public static void b(String str) {
        a("AppsFlyerKey", str);
        i.a(str);
    }

    public static String a() {
        return a("AppUserId");
    }

    public static void c(String str) {
        com.appsflyer.c.a().a("currencyCode", str);
    }

    public static void a(Context context) {
        a(context, (String) null);
        if (g(context)) {
            Log.i("AppsFlyer_3.0", "Start tracking package: " + context.getPackageName());
        }
    }

    public static void a(Activity activity) {
        if (g(activity.getApplicationContext())) {
            Log.i("AppsFlyer_3.0", "onActivityResume called");
        }
    }

    public static void b(Activity activity) {
        if (g(activity.getApplicationContext())) {
            Log.i("AppsFlyer_3.0", "onActivityPause called");
        }
    }

    public static void a(Context context, String str, Map<String, Object> map) {
        if (map == null) {
            map = new HashMap<>();
        }
        JSONObject jSONObject = new JSONObject(map);
        String a2 = com.appsflyer.c.a().a(context);
        String jSONObject2 = jSONObject.toString();
        if (a2 == null) {
            a2 = "";
        }
        b(context, null, str, jSONObject2, a2, true);
    }

    private static void b(Context context, String str, String str2, String str3) {
        if (com.appsflyer.c.a().b("shouldMonitor", false)) {
            Intent intent = new Intent("com.appsflyer.MonitorBroadcast");
            intent.setPackage("com.appsflyer.nightvision");
            intent.putExtra("message", str2);
            intent.putExtra("value", str3);
            intent.putExtra("packageName", "true");
            intent.putExtra("pid", new Integer(Process.myPid()));
            intent.putExtra("eventIdentifier", str);
            intent.putExtra("sdk", "3.3.0");
            context.sendBroadcast(intent);
        }
    }

    @Deprecated
    public static void a(Context context, String str) {
        a(context, str, null, null);
    }

    public static Map<String, String> b(Context context) throws com.appsflyer.d {
        SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
        String a2 = com.appsflyer.c.a().a(context);
        if (a2 != null && a2.length() > 0 && a2.contains("af_tranid")) {
            return c(context, a2);
        }
        String string = sharedPreferences.getString("attributionId", null);
        if (string != null && string.length() > 0) {
            return e(string);
        }
        throw new com.appsflyer.d();
    }

    /* renamed from: com.appsflyer.AppsFlyerLib$1, reason: invalid class name */
    static class AnonymousClass1 implements com.appsflyer.a {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f575a;

        @Override // com.appsflyer.a
        public void a(Map<String, String> map) {
            this.f575a.a(map);
        }

        @Override // com.appsflyer.a
        public void a(String str) {
            this.f575a.a(str);
        }

        @Override // com.appsflyer.a
        public void b(Map<String, String> map) {
        }
    }

    private static Map<String, String> c(Context context, String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String[] split = str.split("&");
        int length = split.length;
        int i = 0;
        boolean z = false;
        while (i < length) {
            String str2 = split[i];
            int indexOf = str2.indexOf("=");
            String substring = indexOf > 0 ? str2.substring(0, indexOf) : str2;
            if (!linkedHashMap.containsKey(substring)) {
                if (substring.equals("c")) {
                    substring = "campaign";
                } else if (substring.equals("pid")) {
                    substring = "media_source";
                } else if (substring.equals("af_prt")) {
                    z = true;
                    substring = "agency";
                }
                linkedHashMap.put(substring, new String());
            }
            boolean z2 = z;
            linkedHashMap.put(substring, (indexOf <= 0 || str2.length() <= indexOf + 1) ? null : str2.substring(indexOf + 1));
            i++;
            z = z2;
        }
        try {
            if (!linkedHashMap.containsKey("install_time")) {
                linkedHashMap.put("install_time", new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime)));
            }
        } catch (Exception e2) {
            Log.w("AppsFlyer_3.0", "Could not fetch install time");
        }
        if (!linkedHashMap.containsKey("af_status")) {
            linkedHashMap.put("af_status", "Non-organic");
        }
        if (z) {
            linkedHashMap.remove("media_source");
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, String> e(String str) {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (!f574b.contains(next)) {
                    hashMap.put(next, jSONObject.getString(next));
                }
            }
            return hashMap;
        } catch (JSONException e2) {
            Log.w("AppsFlyer_3.0", e2);
            return null;
        }
    }

    @Deprecated
    public static void a(Context context, String str, String str2, String str3) {
        if (str2 != null && str3 != null && str3.matches("-?\\d+(\\.\\d+)?")) {
            Log.i("AppsFlyer_3.0", "AppsFLyer: numeric value '" + str3 + "' for event '" + str2 + "' will be categorized as a revenue event.");
        }
        String a2 = com.appsflyer.c.a().a(context);
        if (a2 == null) {
            a2 = "";
        }
        b(context, str, str2, str3, a2, false);
    }

    private static void b(Context context, String str, String str2, String str3, String str4, boolean z) {
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        newSingleThreadScheduledExecutor.schedule(new c(context, str, str2, str3, str4, z, newSingleThreadScheduledExecutor, null), 5L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String c(Map<String, String> map) {
        String str = map.get("af_timestamp");
        return (str == null || str.length() < 5) ? "AppsFlyer_3.0" : "AppsFlyer_3.0-" + str.substring(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, String str, String str2, String str3, String str4, boolean z) {
        Map<String, String> hashMap;
        Log.i("AppsFlyer_3.0", "AsendTrackingWithEvent from activity: " + context.getClass().getName().toString());
        boolean z2 = str2 == null;
        HashMap hashMap2 = new HashMap();
        hashMap2.put("af_timestamp", Long.toString(new Date().getTime()));
        String c2 = c(hashMap2);
        try {
            if (g(context)) {
                a("collect data for server", "", context);
                Log.i(c2, "******* sendTrackingWithEvent: " + (z2 ? "Launch" : str2));
                a("********* sendTrackingWithEvent: ", z2 ? "Launch" : str2, context);
            }
            b(context, c2, "EVENT_CREATED_WITH_NAME", z2 ? "Launch" : str2);
            com.appsflyer.a.a.a().a(context);
            try {
                List asList = Arrays.asList(context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions);
                if (!asList.contains("android.permission.INTERNET")) {
                    Log.w("AppsFlyer_3.0", "Permission android.permission.INTERNET is missing in the AndroidManifest.xml");
                    b(context, null, "PERMISSION_INTERNET_MISSING", null);
                }
                if (!asList.contains("android.permission.ACCESS_NETWORK_STATE")) {
                    Log.w("AppsFlyer_3.0", "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml");
                }
                if (!asList.contains("android.permission.ACCESS_WIFI_STATE")) {
                    Log.w("AppsFlyer_3.0", "Permission android.permission.ACCESS_WIFI_STATE is missing in the AndroidManifest.xml");
                }
            } catch (Exception e2) {
            }
            StringBuilder sb = new StringBuilder();
            sb.append(z ? "https://events.appsflyer.com/api/v3/androidevent?buildnumber=3.0&app_id=" : "https://t.appsflyer.col/api/v3/androidevent?buildnumber=3.0&app_id=").append(context.getPackageName());
            if (z) {
                hashMap2.put("af_events_api", "1");
            }
            hashMap2.put("brand", Build.BRAND);
            hashMap2.put("device", Build.DEVICE);
            hashMap2.put(AppLovinEventTypes.USER_VIEWED_PRODUCT, Build.PRODUCT);
            hashMap2.put("sdk", Integer.toString(Build.VERSION.SDK_INT));
            hashMap2.put("model", Build.MODEL);
            hashMap2.put("deviceType", Build.TYPE);
            String a2 = a("additionalCustomData");
            if (a2 != null) {
                hashMap2.put("customData", a2);
            }
            try {
                String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                if (installerPackageName != null) {
                    hashMap2.put("installer_package", installerPackageName);
                }
            } catch (Exception e3) {
            }
            String b2 = com.appsflyer.c.a().b("sdkExtension");
            if (b2 != null && b2.length() > 0) {
                hashMap2.put("sdkExtension", b2);
            }
            String m = m(context);
            String d2 = d(context, m);
            if (d2 != null) {
                hashMap2.put("channel", d2);
            }
            if ((d2 != null && !d2.equals(m)) || (d2 == null && m != null)) {
                hashMap2.put("af_latestchannel", m);
            }
            String i = i(context);
            if (i != null) {
                hashMap2.put("af_installstore", i.toLowerCase());
            }
            String k = k(context);
            if (k != null) {
                hashMap2.put("af_preinstall_name", k.toLowerCase());
            }
            String j = j(context);
            if (j != null) {
                hashMap2.put("af_currentstore", j.toLowerCase());
            }
            if (str == null || str.length() == 0) {
                str = a("AppsFlyerKey");
            }
            if (str != null && str.length() > 0) {
                hashMap2.put("appsflyerKey", str);
                if (str.length() > 8) {
                    hashMap2.put("dkh", str.substring(0, 8));
                }
                String a3 = a();
                if (a3 != null) {
                    hashMap2.put("appUserId", a3);
                }
                String[] a4 = com.appsflyer.c.a().a("userEmails");
                if (a4 != null && a4.length > 0) {
                    StringBuilder sb2 = new StringBuilder();
                    int a5 = com.appsflyer.c.a().a("userEmailsCryptType", 1);
                    String str5 = new String();
                    for (String str6 : a4) {
                        if (sb2.length() > 1) {
                            sb2.append(',');
                        }
                        switch (a5) {
                            case 0:
                                sb2.append(str6);
                                str5 = "plain_el_arr";
                                break;
                            case 1:
                            default:
                                sb2.append(HashUtils.a(str6));
                                str5 = "sha1_el_arr";
                                break;
                            case 2:
                                sb2.append(HashUtils.b(str6));
                                str5 = "md5_el_arr";
                                break;
                        }
                    }
                    hashMap2.put(str5, sb2.toString());
                } else {
                    String a6 = a("userEmail");
                    if (a6 != null) {
                        hashMap2.put("sha1_el", HashUtils.a(a6));
                    }
                }
                if (str2 != null) {
                    hashMap2.put("eventName", str2);
                    if (str3 != null) {
                        hashMap2.put("eventValue", str3);
                    }
                }
                if (a("appid") != null) {
                    hashMap2.put("appid", a("appid"));
                }
                String a7 = a("currencyCode");
                if (a7 != null) {
                    if (a7.length() != 3) {
                        Log.w("AppsFlyer_3.0", "WARNING:currency code should be 3 characters!!! '" + a7 + "' is not a legal value.");
                    }
                    hashMap2.put("currency", a7);
                }
                String a8 = a("IS_UPDATE");
                if (a8 != null) {
                    hashMap2.put("isUpdate", a8);
                }
                hashMap2.put("af_preinstalled", Boolean.toString(c(context)));
                String a9 = a(context.getContentResolver());
                if (a9 != null) {
                    hashMap2.put("fb", a9);
                }
                a(context, hashMap2);
                try {
                    String a10 = h.a(context);
                    if (a10 != null) {
                        hashMap2.put("uid", a10);
                    }
                } catch (Exception e4) {
                    Log.i("AppsFlyer_3.0", "ERROR:ERROR:could not get uid " + e4.getMessage());
                }
                try {
                    hashMap2.put(WebUtils.LANG, Locale.getDefault().getDisplayLanguage());
                } catch (Exception e5) {
                }
                try {
                    hashMap2.put("lang_code", Locale.getDefault().getLanguage());
                } catch (Exception e6) {
                }
                try {
                    hashMap2.put("country", Locale.getDefault().getCountry());
                } catch (Exception e7) {
                }
                try {
                    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                    hashMap2.put("operator", telephonyManager.getSimOperatorName());
                    hashMap2.put("carrier", telephonyManager.getNetworkOperatorName());
                } catch (Exception e8) {
                }
                try {
                    hashMap2.put("network", n(context));
                } catch (Throwable th) {
                    Log.i("AppsFlyer_3.0", "checking network error " + th.getMessage());
                }
                b(context, hashMap2);
                c(context, hashMap2);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd_hhmmZ", Locale.US);
                if (Build.VERSION.SDK_INT >= 9) {
                    try {
                        hashMap2.put("installDate", simpleDateFormat.format(new Date(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime)));
                    } catch (Exception e9) {
                    }
                }
                try {
                    PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                    if (packageInfo.versionCode > context.getSharedPreferences("appsflyer-data", 0).getInt("versionCode", 0)) {
                        b(context, "appsflyerConversionDataRequestRetries", 0);
                        b(context, "versionCode", packageInfo.versionCode);
                    }
                    hashMap2.put("app_version_code", Integer.toString(packageInfo.versionCode));
                    hashMap2.put("app_version_name", packageInfo.versionName);
                    long j2 = packageInfo.firstInstallTime;
                    long j3 = packageInfo.lastUpdateTime;
                    hashMap2.put("date1", simpleDateFormat.format(new Date(j2)));
                    hashMap2.put("date2", simpleDateFormat.format(new Date(j3)));
                    hashMap2.put("firstLaunchDate", a(simpleDateFormat, context));
                } catch (PackageManager.NameNotFoundException e10) {
                } catch (NoSuchFieldError e11) {
                }
                if (str4.length() > 0) {
                    hashMap2.put("referrer", str4);
                }
                String string = context.getSharedPreferences("appsflyer-data", 0).getString("attributionId", null);
                if (string != null && string.length() > 0) {
                    hashMap2.put("installAttribution", string);
                }
                if (z2 && (context instanceof Activity)) {
                    Intent intent = ((Activity) context).getIntent();
                    if (intent.getAction() == "android.intent.action.VIEW") {
                        Uri data = intent.getData();
                        hashMap2.put("af_deeplink", data.toString());
                        if (data.getQueryParameter("af_deeplink") != null) {
                            hashMap = c(context, data.getQuery().toString());
                            if (data.getPath() != null) {
                                hashMap.put("path", data.getPath());
                            }
                            if (data.getScheme() != null) {
                                hashMap.put("scheme", data.getScheme());
                            }
                        } else {
                            hashMap = new HashMap<>();
                            hashMap.put("link", data.toString());
                        }
                        b(context, "deeplinkAttribution", new JSONObject(hashMap).toString());
                        if (c != null) {
                            c.b(hashMap);
                        }
                    }
                }
                System.out.println("AppsFlyerLib.sendTrackingWithEvent");
                new e(sb.toString(), hashMap2, context.getApplicationContext(), z2, null).run();
                return;
            }
            Log.e(c2, "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.setAppsFlyerKey(...) to set it. ");
            b(context, c2, "DEV_KEY_MISSING", null);
            Log.e(c2, "AppsFlyer will not track this event.");
        } catch (Throwable th2) {
            Log.e(c2, th2.getLocalizedMessage(), th2);
        }
    }

    private static void a(Context context, Map<String, String> map) {
        if (com.appsflyer.c.a().b("deviceTrackingDisabled", false)) {
            map.put("deviceTrackingDisabled", "true");
            return;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
        boolean b2 = com.appsflyer.c.a().b("collectIMEI", true);
        String string = sharedPreferences.getString("imeiCached", null);
        if (b2) {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                String str = (String) telephonyManager.getClass().getMethod("getDeviceId", new Class[0]).invoke(telephonyManager, new Object[0]);
                if (str == null) {
                    str = string;
                } else if (string == null) {
                    b(context, "imeiCached", str);
                }
                if (str != null) {
                    map.put("imei", str);
                }
            } catch (Exception e2) {
                Log.i("AppsFlyer_3.0", "WARNING:READ_PHONE_STATE is missing");
            }
        }
        boolean b3 = com.appsflyer.c.a().b("collectAndroidId", true);
        String string2 = sharedPreferences.getString("androidIdCached", null);
        if (b3) {
            try {
                String string3 = Settings.Secure.getString(context.getContentResolver(), "android_id");
                if (string3 != null) {
                    b(context, "androidIdCached", string3);
                    string2 = string3;
                }
                if (string2 != null) {
                    map.put("android_id", string2);
                }
            } catch (Exception e3) {
            }
        }
    }

    private static boolean h(Context context) {
        return !context.getSharedPreferences("appsflyer-data", 0).contains("appsFlyerCount");
    }

    private static String i(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
        if (sharedPreferences.contains("INSTALL_STORE")) {
            return sharedPreferences.getString("INSTALL_STORE", null);
        }
        String j = h(context) ? j(context) : null;
        b(context, "INSTALL_STORE", j);
        return j;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0034 -> B:9:0x0020). Please report as a decompilation issue!!! */
    private static String j(Context context) {
        String str;
        Bundle bundle;
        Object obj;
        try {
            bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (Exception e2) {
            if (g(context)) {
                Log.i("AppsFlyer_3.0", "Could not find AF_STORE value in the manifest", e2);
            }
        }
        if (bundle != null && (obj = bundle.get("AF_STORE")) != null) {
            str = obj instanceof String ? (String) obj : obj.toString();
            return str;
        }
        str = null;
        return str;
    }

    private static String k(Context context) {
        String str;
        Object obj;
        String str2 = null;
        SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
        if (sharedPreferences.contains("preInstallName")) {
            return sharedPreferences.getString("preInstallName", null);
        }
        boolean h2 = h(context);
        sharedPreferences.edit();
        if (h2) {
            try {
                Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                if (bundle == null || (obj = bundle.get("AF_PRE_INSTALL_NAME")) == null) {
                    str = null;
                } else {
                    str = obj instanceof String ? (String) obj : obj.toString();
                }
                str2 = str;
            } catch (Exception e2) {
                if (g(context)) {
                    Log.i("AppsFlyer_3.0", "Could not find AF_PRE_INSTALL_NAME value in the manifest", e2);
                }
            }
        }
        b(context, "preInstallName", str2);
        return str2;
    }

    private static void l(Context context) {
        if (!e && System.currentTimeMillis() - f >= 15000 && g == null) {
            g = Executors.newSingleThreadScheduledExecutor();
            g.schedule(new b(context), 1L, TimeUnit.SECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String m(Context context) {
        String str;
        Object obj;
        String b2 = com.appsflyer.c.a().b("channel");
        if (b2 == null) {
            try {
                Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
                if (bundle == null || (obj = bundle.get("CHANNEL")) == null) {
                    str = b2;
                } else {
                    str = obj instanceof String ? (String) obj : obj.toString();
                }
                return str;
            } catch (Exception e2) {
                Log.i("AppsFlyer_3.0", "Could not load CHANNEL value", e2);
                return b2;
            }
        }
        return b2;
    }

    public static boolean c(Context context) {
        try {
            return (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).flags & 1) != 0;
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e("AppsFlyer_3.0", "Could not check if app is pre installed", e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(Context context, String str) throws PackageManager.NameNotFoundException {
        SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
        if (sharedPreferences.contains("CACHED_CHANNEL")) {
            return sharedPreferences.getString("CACHED_CHANNEL", null);
        }
        b(context, "CACHED_CHANNEL", str);
        return str;
    }

    private static String a(SimpleDateFormat simpleDateFormat, Context context) {
        String string = context.getSharedPreferences("appsflyer-data", 0).getString("appsFlyerFirstInstall", null);
        if (string == null) {
            if (h(context)) {
                if (g(context)) {
                    Log.d("AppsFlyer_3.0", "AppsFlyer: first launch detected");
                }
                string = simpleDateFormat.format(new Date());
            } else {
                string = "";
            }
            b(context, "appsFlyerFirstInstall", string);
        }
        if (g(context)) {
            Log.i("AppsFlyer_3.0", "AppsFlyer: first launch date: " + string);
        }
        return string;
    }

    private static void b(Context context, Map<String, String> map) {
        try {
            Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            String id = advertisingIdInfo.getId();
            map.put("advertiserId", id);
            String bool = Boolean.toString(!advertisingIdInfo.isLimitAdTrackingEnabled());
            map.put("advertiserIdEnabled", bool);
            com.appsflyer.c.a().a("advertiserId", id);
            com.appsflyer.c.a().a("advertiserIdEnabled", bool);
        } catch (ClassNotFoundException e2) {
            if (g(context)) {
                Log.i("AppsFlyer_3.0", "WARNING:Google Play services SDK jar is missing.");
            }
        } catch (Exception e3) {
            String b2 = com.appsflyer.c.a().b("advertiserId");
            if (b2 != null) {
                map.put("advertiserId", b2);
            }
            String b3 = com.appsflyer.c.a().b("advertiserIdEnabled");
            if (b3 != null) {
                map.put("advertiserIdEnabled", b3);
            }
            if (e3.getLocalizedMessage() != null) {
                Log.i("AppsFlyer_3.0", e3.getLocalizedMessage());
            } else {
                Log.i("AppsFlyer_3.0", e3.toString());
            }
            a("Could not fetch advertiser id: ", e3.getLocalizedMessage(), context);
        }
    }

    private static void c(Context context, Map<String, String> map) {
        try {
            Class.forName("com.unity3d.player.UnityPlayer");
            map.put("platformextension", "android_unity");
        } catch (ClassNotFoundException e2) {
            map.put("platformextension", "android_native");
        } catch (Exception e3) {
        }
    }

    public static String a(ContentResolver contentResolver) {
        String str = null;
        Cursor query = contentResolver.query(f573a, new String[]{"aid"}, null, null, null);
        try {
            if (query != null) {
                try {
                } catch (Exception e2) {
                    Log.w("AppsFlyer_3.0", "Could not collect cursor attribution", e2);
                    if (query != null) {
                        try {
                            query.close();
                        } catch (Exception e3) {
                        }
                    }
                }
                if (query.moveToFirst()) {
                    str = query.getString(query.getColumnIndex("aid"));
                    if (query != null) {
                        try {
                            query.close();
                        } catch (Exception e4) {
                        }
                    }
                    return str;
                }
            }
            return str;
        } finally {
            if (query != null) {
                try {
                    query.close();
                } catch (Exception e5) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(Context context, String str, boolean z) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
        int i = sharedPreferences.getInt(str, 0);
        if (z) {
            int i2 = i + 1;
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putInt(str, i2);
            edit.commit();
            return i2;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long b(Context context, boolean z) {
        long j;
        SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
        long j2 = sharedPreferences.getLong("AppsFlyerTimePassedSincePrevLaunch", 0L);
        sharedPreferences.edit();
        long currentTimeMillis = System.currentTimeMillis();
        if (j2 > 0) {
            j = currentTimeMillis - j2;
        } else {
            j = -1;
        }
        if (z) {
            b(context, "AppsFlyerTimePassedSincePrevLaunch", currentTimeMillis);
        }
        return j / 1000;
    }

    private static String n(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager.getNetworkInfo(1).isConnectedOrConnecting()) {
            return "WIFI";
        }
        NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
        if (networkInfo != null && networkInfo.isConnectedOrConnecting()) {
            return "MOBILE";
        }
        return "unkown";
    }

    public static String d(Context context) {
        return h.a(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, String str2, String str3, WeakReference<Context> weakReference, String str4, String str5, boolean z) throws IOException {
        URL url = new URL(str);
        if (g(weakReference.get())) {
            Log.i(str5, "url: " + url.toString());
        }
        a("call server.", IOUtils.LINE_SEPARATOR_UNIX + url.toString() + "\nPOST:" + str2, weakReference.get());
        if (g(weakReference.get())) {
            i.b("data: " + str2);
        }
        b(weakReference.get(), str5, "EVENT_DATA", str2);
        if (z) {
            com.appsflyer.c.a().d();
        }
        try {
            a(url, str2, str3, weakReference, str4, str5, z);
        } catch (IOException e2) {
            if (com.appsflyer.c.a().b("useHttpFallback", false)) {
                a("https failed: " + e2.getLocalizedMessage(), "", weakReference.get());
                a(new URL(str.replace("https:", "http:")), str2, str3, weakReference, str4, str5, z);
            } else {
                Log.i(str5, "failed to send requeset to server. " + e2.getLocalizedMessage());
                b(weakReference.get(), str5, "ERROR", e2.getLocalizedMessage());
                throw e2;
            }
        }
    }

    private static void a(URL url, String str, String str2, WeakReference<Context> weakReference, String str3, String str4, boolean z) throws IOException {
        HttpURLConnection httpURLConnection;
        OutputStreamWriter outputStreamWriter;
        Context context = weakReference.get();
        try {
            httpURLConnection = (HttpURLConnection) url.openConnection();
        } catch (Throwable th) {
            th = th;
            httpURLConnection = null;
        }
        try {
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Content-Length", str.getBytes().length + "");
            httpURLConnection.setRequestProperty("Connection", "close");
            httpURLConnection.setConnectTimeout(Constants.TEN_SECONDS_MILLIS);
            httpURLConnection.setDoOutput(true);
            try {
                outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream());
            } catch (Throwable th2) {
                th = th2;
                outputStreamWriter = null;
            }
            try {
                outputStreamWriter.write(str);
                if (outputStreamWriter != null) {
                    outputStreamWriter.close();
                }
                int responseCode = httpURLConnection.getResponseCode();
                if (g(context)) {
                    Log.i(str4, "response code: " + responseCode);
                }
                b(context, str4, "SERVER_RESPONSE_CODE", Integer.toString(responseCode));
                a("response from server. status=", Integer.toString(responseCode), context);
                SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
                if (responseCode == 200) {
                    if (str3 != null) {
                        com.appsflyer.a.a.a().a(str3, context);
                    }
                    if (weakReference.get() != null && str3 == null) {
                        b(context, "sentSuccessfully", "true");
                        l(context);
                    }
                }
                int i = sharedPreferences.getInt("appsflyerConversionDataRequestRetries", 0);
                long j = sharedPreferences.getLong("appsflyerConversionDataCacheExpiration", 0L);
                if (j != 0 && System.currentTimeMillis() - j > 889032704) {
                    b(context, "attributionId", (String) null);
                    b(context, "appsflyerConversionDataCacheExpiration", 0L);
                }
                if (sharedPreferences.getString("attributionId", null) == null && str2 != null && z && c != null && i <= 5) {
                    ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
                    newSingleThreadScheduledExecutor.schedule(new d(context.getApplicationContext(), str2, newSingleThreadScheduledExecutor), 10L, TimeUnit.MILLISECONDS);
                } else if (str2 == null) {
                    Log.w(str4, "AppsFlyer dev key is missing.");
                } else if (z && c != null && sharedPreferences.getString("attributionId", null) != null && b(context, "appsFlyerCount", false) > 1) {
                    try {
                        Map<String, String> b2 = b(context);
                        if (b2 != null) {
                            c.a(b2);
                        }
                    } catch (com.appsflyer.d e2) {
                    }
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
            } catch (Throwable th3) {
                th = th3;
                if (outputStreamWriter != null) {
                    outputStreamWriter.close();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            throw th;
        }
    }

    private static class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private Context f579a;

        /* renamed from: b, reason: collision with root package name */
        private String f580b;
        private String c;
        private String d;
        private String e;
        private ExecutorService f;
        private boolean g;

        /* synthetic */ c(Context context, String str, String str2, String str3, String str4, boolean z, ExecutorService executorService, AnonymousClass1 anonymousClass1) {
            this(context, str, str2, str3, str4, z, executorService);
        }

        private c(Context context, String str, String str2, String str3, String str4, boolean z, ExecutorService executorService) {
            this.f579a = context;
            this.f580b = str;
            this.c = str2;
            this.d = str3;
            this.e = str4;
            this.g = z;
            this.f = executorService;
        }

        @Override // java.lang.Runnable
        public void run() {
            AppsFlyerLib.c(this.f579a, this.f580b, this.c, this.d, this.e, this.g);
            this.f.shutdown();
        }
    }

    private static class e implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        Map<String, String> f581a;

        /* renamed from: b, reason: collision with root package name */
        boolean f582b;
        private String c;
        private WeakReference<Context> d;

        /* synthetic */ e(String str, Map map, Context context, boolean z, AnonymousClass1 anonymousClass1) {
            this(str, map, context, z);
        }

        private e(String str, Map<String, String> map, Context context, boolean z) {
            this.d = null;
            this.c = str;
            this.f581a = map;
            this.d = new WeakReference<>(context);
            this.f582b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            boolean z;
            String c = AppsFlyerLib.c(this.f581a);
            try {
                try {
                    Context context = this.d.get();
                    if (context != null) {
                        String a2 = com.appsflyer.c.a().a(context);
                        if (a2 != null && a2.length() > 0 && this.f581a.get("referrer") == null) {
                            this.f581a.put("referrer", a2);
                        }
                        boolean equals = "true".equals(context.getSharedPreferences("appsflyer-data", 0).getString("sentSuccessfully", ""));
                        String str2 = this.f581a.get("eventName");
                        this.f581a.put("counter", Integer.toString(AppsFlyerLib.b(context, "appsFlyerCount", str2 == null)));
                        this.f581a.put("iaecounter", Integer.toString(AppsFlyerLib.b(context, "appsFlyerInAppEventCount", str2 != null)));
                        this.f581a.put("timepassedsincelastlaunch", Long.toString(AppsFlyerLib.b(context, true)));
                        z = equals;
                    } else {
                        z = false;
                    }
                    this.f581a.put("isFirstCall", Boolean.toString(!z));
                    String str3 = this.f581a.get("appsflyerKey");
                    if (str3 == null || str3.length() == 0) {
                        Log.d(c, "Not sending data yet, waiting for dev key");
                        return;
                    }
                    this.f581a.put("af_v", new HashUtils().a(this.f581a));
                    str = AppsFlyerLib.a(this.f581a);
                    try {
                        AppsFlyerLib.b(this.c, str, str3, this.d, null, c, this.f582b && AppsFlyerLib.c != null);
                    } catch (IOException e) {
                        e = e;
                        if (str != null && this.d != null && !this.c.contains("&isCachedRequest=true&timeincache=")) {
                            Log.e(c, e.getMessage(), e);
                            com.appsflyer.a.a.a().a(new com.appsflyer.a.b(this.c, str, "3.0"), this.d.get());
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                    str = null;
                }
            } catch (Throwable th) {
                Log.e(c, th.getMessage(), th);
            }
        }
    }

    public static String a(Map<String, String> map) throws UnsupportedEncodingException {
        StringBuilder sb = new StringBuilder();
        for (String str : map.keySet()) {
            String str2 = map.get(str);
            String encode = str2 == null ? "" : URLEncoder.encode(str2, "UTF-8");
            if (sb.length() > 0) {
                sb.append('&');
            }
            sb.append(str).append('=').append(encode);
        }
        return sb.toString();
    }

    private static class d extends a {
        public d(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
            super(context, str, scheduledExecutorService);
        }

        @Override // com.appsflyer.AppsFlyerLib.a
        public String a() {
            return "https://api.appsflyer.com/install_data/v3/";
        }

        @Override // com.appsflyer.AppsFlyerLib.a
        protected void a(Map<String, String> map) {
            AppsFlyerLib.c.a(map);
            this.f576a.get().getSharedPreferences("appsflyer-data", 0);
            AppsFlyerLib.b(this.f576a.get(), "appsflyerConversionDataRequestRetries", 0);
        }

        @Override // com.appsflyer.AppsFlyerLib.a
        protected void a(String str, int i) {
            AppsFlyerLib.c.a(str);
            if (i >= 400 && i < 500) {
                AppsFlyerLib.b(this.f576a.get(), "appsflyerConversionDataRequestRetries", this.f576a.get().getSharedPreferences("appsflyer-data", 0).getInt("appsflyerConversionDataRequestRetries", 0) + 1);
            }
        }
    }

    private static abstract class a implements Runnable {
        private static AtomicInteger d = new AtomicInteger(0);

        /* renamed from: a, reason: collision with root package name */
        protected WeakReference<Context> f576a;

        /* renamed from: b, reason: collision with root package name */
        private String f577b;
        private ScheduledExecutorService c;

        public abstract String a();

        protected abstract void a(String str, int i);

        protected abstract void a(Map<String, String> map);

        public a(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
            this.f576a = null;
            this.f576a = new WeakReference<>(context);
            this.f577b = str;
            this.c = scheduledExecutorService;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:100:0x022e  */
        /* JADX WARN: Type inference failed for: r3v0, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r3v11, types: [java.io.BufferedReader] */
        /* JADX WARN: Type inference failed for: r3v12 */
        /* JADX WARN: Type inference failed for: r3v18 */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 576
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLib.a.run():void");
        }
    }

    private static class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private WeakReference<Context> f578a;

        public b(Context context) {
            this.f578a = null;
            this.f578a = new WeakReference<>(context);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!AppsFlyerLib.e) {
                long unused = AppsFlyerLib.f = System.currentTimeMillis();
                if (this.f578a != null) {
                    boolean unused2 = AppsFlyerLib.e = true;
                    try {
                        String a2 = AppsFlyerLib.a("AppsFlyerKey");
                        synchronized (this.f578a) {
                            for (com.appsflyer.a.b bVar : com.appsflyer.a.a.a().b(this.f578a.get())) {
                                if (AppsFlyerLib.g(this.f578a.get())) {
                                    Log.i("AppsFlyer_3.0", "resending request: " + bVar.c());
                                }
                                try {
                                    AppsFlyerLib.b(bVar.c() + "&isCachedRequest=true&timeincache=" + Long.toString((System.currentTimeMillis() - Long.parseLong(bVar.d(), 10)) / 1000), bVar.b(), a2, this.f578a, bVar.d(), "AppsFlyer_3.0", false);
                                } catch (Exception e) {
                                    Log.i("AppsFlyer_3.0", "Failed to resend cached request");
                                }
                            }
                        }
                    } catch (Exception e2) {
                        Log.e("AppsFlyer_3.0", "failed to check cache.");
                    } finally {
                        boolean unused3 = AppsFlyerLib.e = false;
                    }
                    AppsFlyerLib.g.shutdown();
                    ScheduledExecutorService unused4 = AppsFlyerLib.g = null;
                }
            }
        }
    }
}
