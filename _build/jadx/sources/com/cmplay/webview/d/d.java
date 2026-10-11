package com.cmplay.webview.d;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.cmplay.a.e;
import com.cmplay.base.util.webview.util.WebUtils;
import com.cmplay.tile2.GameApp;
import com.cmplay.util.NativeUtil;
import com.cmplay.util.aa;
import com.cmplay.util.t;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: WebUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {
    public static String a() {
        Context context = GameApp.f1598a;
        if (context == null) {
            return "";
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("language", String.format(Locale.US, "%s-%s", aa.b("key_language_selected", "en"), aa.b("key_country_selected", "")));
            jSONObject.put("countryCode", t.d(context));
            jSONObject.put("resolution", displayMetrics.heightPixels + "x" + displayMetrics.widthPixels);
            jSONObject.put("timeZone", d());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    public static HashMap<String, String> a(Context context, HashMap<String, String> hashMap) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        String b2 = aa.b("key_language_selected", "en");
        String b3 = b();
        String lowerCase = Locale.getDefault().getCountry().toLowerCase();
        String id = TimeZone.getDefault().getID();
        String str = Build.MODEL;
        String a2 = a(context);
        String str2 = displayMetrics.heightPixels + "x" + displayMetrics.widthPixels;
        if (!TextUtils.isEmpty(b3) && hashMap.containsKey("did")) {
            hashMap.put("did", b3);
        }
        if (!TextUtils.isEmpty(lowerCase) && hashMap.containsKey(WebUtils.CO)) {
            hashMap.put(WebUtils.CO, lowerCase);
        }
        if (!TextUtils.isEmpty(b2) && hashMap.containsKey(WebUtils.LANG)) {
            hashMap.put(WebUtils.LANG, b2);
        }
        if (!TextUtils.isEmpty(str2) && hashMap.containsKey(WebUtils.SC)) {
            hashMap.put(WebUtils.SC, str2);
        }
        if (!TextUtils.isEmpty(a2) && hashMap.containsKey(WebUtils.VER)) {
            hashMap.put(WebUtils.VER, a2);
        }
        if (!TextUtils.isEmpty(str) && hashMap.containsKey(WebUtils.MO)) {
            hashMap.put(WebUtils.MO, str);
        }
        if (!TextUtils.isEmpty(id) && hashMap.containsKey(WebUtils.LOC)) {
            hashMap.put(WebUtils.LOC, id);
        }
        return hashMap;
    }

    public static String b() {
        Context context = GameApp.f1598a;
        if (context == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        String str = Build.MODEL;
        String str2 = Build.BRAND;
        String str3 = Build.DISPLAY;
        String str4 = Build.PRODUCT;
        String str5 = Build.DEVICE;
        String str6 = Build.MANUFACTURER;
        String str7 = Build.VERSION.RELEASE;
        sb.append(str).append(str2).append(str3).append(str4).append(str5).append(str6).append(str7).append(com.cmplay.i.d.b(context));
        return com.cmplay.webview.b.b.a(sb.toString());
    }

    public static void a(String str) {
        if (!TextUtils.isEmpty(str) && TextUtils.equals(Environment.getExternalStorageState(), "mounted")) {
            Context context = GameApp.f1598a;
            File externalFilesDir = context.getExternalFilesDir(null);
            if (externalFilesDir == null) {
                externalFilesDir = new File(Environment.getExternalStorageDirectory(), "Android/data/" + context.getPackageName() + "/files");
            }
            if (externalFilesDir.exists() || externalFilesDir.mkdirs()) {
                String b2 = b();
                File file = new File(externalFilesDir, str + "_license");
                try {
                    if (!file.exists()) {
                        file.createNewFile();
                    } else {
                        file.delete();
                    }
                    DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
                    try {
                        dataOutputStream.writeUTF(b2);
                    } finally {
                        dataOutputStream.close();
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static String c() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("app_info", a(false));
            jSONObject.put("app_info_encode", a(true));
            return jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static JSONObject a(boolean z) {
        Context context = GameApp.f1598a;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        String b2 = b();
        String lowerCase = Locale.getDefault().getCountry().toLowerCase();
        String b3 = aa.b("key_language_selected", "en");
        String str = displayMetrics.heightPixels + "x" + displayMetrics.widthPixels;
        String str2 = Build.MODEL;
        String id = TimeZone.getDefault().getID();
        String a2 = a(context);
        try {
            JSONObject jSONObject = new JSONObject();
            if (z) {
                b2 = b(b2);
            }
            jSONObject.put("did", b2);
            if (z) {
                lowerCase = b(lowerCase);
            }
            jSONObject.put(WebUtils.CO, lowerCase);
            if (z) {
                b3 = b(b3);
            }
            jSONObject.put(WebUtils.LANG, b3);
            if (z) {
                str = b(str);
            }
            jSONObject.put(WebUtils.SC, str);
            if (z) {
                str2 = b(str2);
            }
            jSONObject.put(WebUtils.MO, str2);
            if (z) {
                id = b(id);
            }
            jSONObject.put(WebUtils.LOC, id);
            if (z) {
                a2 = b(a2);
            }
            jSONObject.put(WebUtils.VER, a2);
            return jSONObject;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static HashMap<String, String> b(Context context, HashMap<String, String> hashMap) {
        String str;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        String b2 = b();
        String lowerCase = Locale.getDefault().getCountry().toLowerCase();
        String b3 = aa.b("key_language_selected", "en");
        String id = TimeZone.getDefault().getID();
        String str2 = Build.MODEL;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode + "";
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            str = "";
        }
        String str3 = displayMetrics.heightPixels + "x" + displayMetrics.widthPixels;
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (key.equals("did")) {
                hashMap.put("did", b(b2));
            } else if (key.equals(WebUtils.CO)) {
                hashMap.put(WebUtils.CO, b(lowerCase));
            } else if (key.equals(WebUtils.LANG)) {
                hashMap.put(WebUtils.LANG, b(b3));
            } else if (key.equals(WebUtils.SC)) {
                hashMap.put(WebUtils.SC, b(str3));
            } else if (key.equals(WebUtils.VER)) {
                hashMap.put(WebUtils.VER, b(str));
            } else if (key.equals(WebUtils.MO)) {
                hashMap.put(WebUtils.MO, b(str2));
            } else if (key.equals(WebUtils.LOC)) {
                hashMap.put(WebUtils.LOC, b(id));
            } else {
                hashMap.put(key, b(value));
            }
        }
        return hashMap;
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new String(com.cmplay.webview.b.a.a(str.getBytes()));
    }

    public static String a(Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int d() {
        return ((Calendar.getInstance(Locale.getDefault()).get(15) / 60) / 60) / 1000;
    }

    public static String e() {
        String str = "";
        e c = com.cmplay.a.c.a().c();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("model", NativeUtil.getModel());
            jSONObject.put("os_ver", NativeUtil.getOSVersion());
            jSONObject.put("game_ver", NativeUtil.getVersionCode());
            if (c == null) {
                jSONObject.put("account_id", "");
            } else {
                jSONObject.put("account_id", c.a());
            }
            jSONObject.put("a_id", NativeUtil.getAndroidId());
            jSONObject.put("x_id", NativeUtil.getUUID());
            jSONObject.put("service_id", NativeUtil.getNetUUid());
            jSONObject.put("app_id", NativeUtil.getAppId());
            jSONObject.put("device_token", aa.a("key_gcm_token"));
            str = jSONObject.toString();
            return str;
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }
}
