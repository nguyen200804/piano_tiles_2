package com.applovin.impl.sdk;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.v4.os.EnvironmentCompat;
import java.io.InputStream;
import java.util.Scanner;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class cx {

    /* renamed from: a, reason: collision with root package name */
    private static final int[] f512a = {7, 4, 2, 1, 11};

    /* renamed from: b, reason: collision with root package name */
    private static final int[] f513b = {5, 6, 10, 3, 9, 8, 14};
    private static final int[] c = {15, 12, 13};
    private static final String d = cx.class.getSimpleName();

    cx() {
    }

    private static NetworkInfo a(Context context) {
        ConnectivityManager connectivityManager;
        if (!cy.a("android.permission.ACCESS_NETWORK_STATE", context) || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return null;
        }
        return connectivityManager.getActiveNetworkInfo();
    }

    static String a(AppLovinSdkImpl appLovinSdkImpl) {
        NetworkInfo a2 = a(appLovinSdkImpl.getApplicationContext());
        if (a2 == null) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        int type = a2.getType();
        int subtype = a2.getSubtype();
        String str = type == 1 ? "wifi" : type == 0 ? a(subtype, f512a) ? "2g" : a(subtype, f513b) ? "3g" : a(subtype, c) ? "4g" : "mobile" : EnvironmentCompat.MEDIA_UNKNOWN;
        appLovinSdkImpl.getLogger().d(d, "Network " + type + "/" + subtype + " resolved to " + str);
        return str;
    }

    static String a(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        Scanner scanner = new Scanner(inputStream, "UTF-8");
        StringBuilder sb = new StringBuilder();
        while (scanner.hasNextLine()) {
            sb.append(scanner.nextLine());
        }
        return sb.toString();
    }

    static String a(String str) {
        return str.startsWith("https://") ? str : str.replace("http://", "https://");
    }

    static String a(String str, AppLovinSdkImpl appLovinSdkImpl) {
        if (str == null) {
            throw new IllegalArgumentException("No endpoint specified");
        }
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        String str2 = (String) appLovinSdkImpl.a(av.e);
        StringBuilder sb = new StringBuilder();
        sb.append((String) appLovinSdkImpl.a(av.k));
        sb.append(str);
        if (str2 == null || str2.length() <= 0) {
            sb.append("?api_key=");
            sb.append(appLovinSdkImpl.getSdkKey());
        } else {
            sb.append("?device_token=");
            sb.append(str2);
        }
        return sb.toString();
    }

    static JSONObject a(JSONObject jSONObject) {
        return (JSONObject) jSONObject.getJSONArray("results").get(0);
    }

    static void a(int i, AppLovinSdkImpl appLovinSdkImpl) {
        az settingsManager = appLovinSdkImpl.getSettingsManager();
        if (i == 401) {
            settingsManager.a(av.c, "");
            settingsManager.a(av.e, "");
            settingsManager.a(av.m, 0L);
            settingsManager.b();
            return;
        }
        if (i == 418) {
            settingsManager.a(av.f438a, true);
            settingsManager.b();
        } else if (i >= 400 && i < 500) {
            appLovinSdkImpl.g();
        } else if (i == -1) {
            appLovinSdkImpl.g();
        }
    }

    static void a(JSONObject jSONObject, AppLovinSdkImpl appLovinSdkImpl) {
        if (jSONObject == null) {
            throw new IllegalArgumentException("No response specified");
        }
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        try {
            if (jSONObject.has("settings")) {
                az settingsManager = appLovinSdkImpl.getSettingsManager();
                if (jSONObject.isNull("settings")) {
                    return;
                }
                settingsManager.a(jSONObject.getJSONObject("settings"));
                settingsManager.b();
                appLovinSdkImpl.getLogger().d(d, "New settings processed");
            }
        } catch (JSONException e) {
            appLovinSdkImpl.getLogger().e(d, "Unable to parse settings out of API response", e);
        }
    }

    private static boolean a(int i, int[] iArr) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    static String b(String str, AppLovinSdkImpl appLovinSdkImpl) {
        if (str == null) {
            throw new IllegalArgumentException("No endpoint specified");
        }
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        return ((String) appLovinSdkImpl.a(av.l)) + str;
    }

    static void b(int i, AppLovinSdkImpl appLovinSdkImpl) {
        if (i == 418) {
            az settingsManager = appLovinSdkImpl.getSettingsManager();
            settingsManager.a(av.f438a, true);
            settingsManager.b();
        }
    }
}
