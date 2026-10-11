package com.cmplay.base.util.webview.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.cmplay.base.util.h;
import com.cmplay.base.util.m;
import com.cmplay.base.util.q;
import com.cmplay.base.util.webview.encode.Base64;
import com.cmplay.base.util.webview.encode.Md5Util;
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

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class WebUtils {
    public static final String CO = "co";
    public static final String DID = "did";
    public static final String IMEI = "imei";
    public static final String LANG = "lang";
    public static final String LOC = "loc";
    public static final String MO = "mo";
    public static final String SC = "sc";
    public static final String VER = "ver";

    public static String getDeviceInfo(Context context) {
        if (context == null) {
            return "";
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("language", String.format(Locale.US, "%s-%s", getLanguageCode(context), getCountryCode(context)));
            jSONObject.put("countryCode", m.d(context));
            jSONObject.put("resolution", displayMetrics.heightPixels + "x" + displayMetrics.widthPixels);
            jSONObject.put("timeZone", getZoneNum());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject.toString();
    }

    public static float getScreenDensity(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static HashMap<String, String> resetActParams(Context context, HashMap<String, String> map) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        String languageCode = getLanguageCode(context);
        String createDeviceSecret = createDeviceSecret(context);
        String lowerCase = Locale.getDefault().getCountry().toLowerCase();
        String id = TimeZone.getDefault().getID();
        String str = Build.MODEL;
        String appVersion = getAppVersion(context);
        String str2 = displayMetrics.heightPixels + "x" + displayMetrics.widthPixels;
        if (!TextUtils.isEmpty(createDeviceSecret) && map.containsKey("did")) {
            map.put("did", createDeviceSecret);
        }
        if (!TextUtils.isEmpty(lowerCase) && map.containsKey(CO)) {
            map.put(CO, lowerCase);
        }
        if (!TextUtils.isEmpty(languageCode) && map.containsKey(LANG)) {
            map.put(LANG, languageCode);
        }
        if (!TextUtils.isEmpty(str2) && map.containsKey(SC)) {
            map.put(SC, str2);
        }
        if (!TextUtils.isEmpty(appVersion) && map.containsKey(VER)) {
            map.put(VER, appVersion);
        }
        if (!TextUtils.isEmpty(str) && map.containsKey(MO)) {
            map.put(MO, str);
        }
        if (!TextUtils.isEmpty(id) && map.containsKey(LOC)) {
            map.put(LOC, id);
        }
        return map;
    }

    public static String createDeviceSecret(Context context) {
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
        sb.append(str).append(str2).append(str3).append(str4).append(str5).append(str6).append(str7).append(q.c(context));
        return Md5Util.getStringMd5(sb.toString());
    }

    public static void createGameLicenseFile(Context context, String gamePkg) {
        if (!TextUtils.isEmpty(gamePkg) && TextUtils.equals(Environment.getExternalStorageState(), "mounted")) {
            File externalFilesDir = context.getExternalFilesDir(null);
            if (externalFilesDir == null) {
                externalFilesDir = new File(Environment.getExternalStorageDirectory(), "Android/data/" + context.getPackageName() + "/files");
            }
            if (externalFilesDir.exists() || externalFilesDir.mkdirs()) {
                String createDeviceSecret = createDeviceSecret(context);
                File file = new File(externalFilesDir, gamePkg + "_license");
                try {
                    if (!file.exists()) {
                        file.createNewFile();
                    } else {
                        file.delete();
                    }
                    DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
                    try {
                        dataOutputStream.writeUTF(createDeviceSecret);
                    } finally {
                        dataOutputStream.close();
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static String createActDeviceInfo(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("app_info", getAppInfo(context, false));
            jSONObject.put("app_info_encode", getAppInfo(context, true));
            return jSONObject.toString();
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    private static JSONObject getAppInfo(Context context, boolean isBase64) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        String createDeviceSecret = createDeviceSecret(context);
        String lowerCase = Locale.getDefault().getCountry().toLowerCase();
        String languageCode = getLanguageCode(context);
        String str = displayMetrics.heightPixels + "x" + displayMetrics.widthPixels;
        String str2 = Build.MODEL;
        String id = TimeZone.getDefault().getID();
        String appVersion = getAppVersion(context);
        try {
            JSONObject jSONObject = new JSONObject();
            if (isBase64) {
                createDeviceSecret = encodeString(createDeviceSecret);
            }
            jSONObject.put("did", createDeviceSecret);
            if (isBase64) {
                lowerCase = encodeString(lowerCase);
            }
            jSONObject.put(CO, lowerCase);
            if (isBase64) {
                languageCode = encodeString(languageCode);
            }
            jSONObject.put(LANG, languageCode);
            if (isBase64) {
                str = encodeString(str);
            }
            jSONObject.put(SC, str);
            if (isBase64) {
                str2 = encodeString(str2);
            }
            jSONObject.put(MO, str2);
            if (isBase64) {
                id = encodeString(id);
            }
            jSONObject.put(LOC, id);
            if (isBase64) {
                appVersion = encodeString(appVersion);
            }
            jSONObject.put(VER, appVersion);
            return jSONObject;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static HashMap<String, String> base64EncodeParams(Context context, HashMap<String, String> map) {
        String str;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        String createDeviceSecret = createDeviceSecret(context);
        String lowerCase = Locale.getDefault().getCountry().toLowerCase();
        String languageCode = getLanguageCode(context);
        String id = TimeZone.getDefault().getID();
        String str2 = Build.MODEL;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode + "";
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            str = "";
        }
        String str3 = displayMetrics.heightPixels + "x" + displayMetrics.widthPixels;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (key.equals("did")) {
                map.put("did", encodeString(createDeviceSecret));
            } else if (key.equals(CO)) {
                map.put(CO, encodeString(lowerCase));
            } else if (key.equals(LANG)) {
                map.put(LANG, encodeString(languageCode));
            } else if (key.equals(SC)) {
                map.put(SC, encodeString(str3));
            } else if (key.equals(VER)) {
                map.put(VER, encodeString(str));
            } else if (key.equals(MO)) {
                map.put(MO, encodeString(str2));
            } else if (key.equals(LOC)) {
                map.put(LOC, encodeString(id));
            } else {
                map.put(key, encodeString(value));
            }
        }
        return map;
    }

    public static String encodeString(String string) {
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return new String(Base64.encode(string.getBytes()));
    }

    public static String getAppVersion(Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int getZoneNum() {
        return ((Calendar.getInstance(Locale.getDefault()).get(15) / 60) / 60) / 1000;
    }

    public static String getFeedbackDeviceinfo(Context context) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("model", Build.MODEL);
            jSONObject.put("os_ver", Build.VERSION.SDK_INT);
            jSONObject.put("game_ver", h.a(context));
            jSONObject.put("a_id", q.c(context));
            jSONObject.put("x_id", q.c(context));
            return jSONObject.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    private static String getLanguageCode(Context context) {
        return h.c(context);
    }

    private static String getCountryCode(Context context) {
        return h.d(context);
    }
}
