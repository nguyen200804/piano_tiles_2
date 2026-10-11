package com.cmplay.base.util.webview.encode;

import android.content.Context;
import com.cmplay.base.util.q;
import com.cmplay.base.util.webview.util.WebUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class UrlEncoder {
    private static final String ANDROID_ID = "uuid";
    public static String SIGN_KEY = "Html5PianoTiles2&";
    private static final String TAG = "UrlEncoder";

    public static String encodeUrl(Context context, String url, boolean attachDeviceInfo) {
        String str = "";
        if (url.startsWith("http://")) {
            url = url.substring(7);
            str = "http://";
        } else if (url.startsWith("https://")) {
            url = url.substring(8);
            str = "https://";
        }
        int indexOf = url.indexOf("/");
        int indexOf2 = url.indexOf("?");
        if (indexOf2 == -1) {
            indexOf2 = url.length();
        }
        if (indexOf == -1 || indexOf >= indexOf2) {
            return null;
        }
        String str2 = str + url.substring(0, indexOf);
        String substring = url.substring(indexOf, indexOf2);
        String substring2 = url.substring(Math.min(indexOf2 + 1, url.length()));
        HashMap hashMap = new HashMap();
        String[] split = substring2.split("&");
        for (String str3 : split) {
            String[] split2 = str3.split("=");
            if (split2.length != 2) {
                break;
            }
            hashMap.put(split2[0], split2[1]);
        }
        return encodeUrl(context, str2, substring, hashMap, attachDeviceInfo);
    }

    public static String encodeUrl(Context context, String urlHeader, String api, HashMap<String, String> params, boolean attachDeviceInfo) {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(urlHeader);
        StringBuffer stringBuffer2 = new StringBuffer();
        stringBuffer2.append(api);
        stringBuffer.append(stringBuffer2.toString()).append("?");
        if (params == null) {
            params = new HashMap<>();
        }
        if (attachDeviceInfo) {
            params.put(ANDROID_ID, q.c(context));
        }
        try {
            String makeSig = SnsSigCheck.makeSig("GET", stringBuffer2.toString(), paramEncodeSpec(params), SIGN_KEY);
            try {
                str = URLEncoder.encode(makeSig, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                str = makeSig;
            }
            for (Map.Entry<String, String> entry : params.entrySet()) {
                stringBuffer.append(entry.getKey() + "=" + entry.getValue() + "&");
            }
            if (params.size() > 0) {
                stringBuffer.append("sign=");
            } else {
                stringBuffer.append("&sign=");
            }
            stringBuffer.append(str);
            return stringBuffer.toString();
        } catch (OpensnsException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String getSign(Context context, String url) {
        String str = "";
        if (url.startsWith("http://")) {
            url = url.substring(7);
            str = "http://";
        } else if (url.startsWith("https://")) {
            url = url.substring(8);
            str = "https://";
        }
        int indexOf = url.indexOf("/");
        int indexOf2 = url.indexOf("?");
        if (indexOf2 == -1) {
            indexOf2 = url.length();
        }
        if (indexOf == -1 || indexOf >= indexOf2) {
            return null;
        }
        String str2 = str + url.substring(0, indexOf);
        String substring = url.substring(indexOf, indexOf2);
        String substring2 = url.substring(Math.min(indexOf2 + 1, url.length()));
        HashMap hashMap = new HashMap();
        for (String str3 : substring2.split("&")) {
            String[] split = str3.split("=", 2);
            if (split.length != 2) {
                break;
            }
            try {
                hashMap.put(split[0], split[1]);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return getSign(context, substring, str2, hashMap);
    }

    public static String getSign(Context context, String api, String urlHeader, HashMap<String, String> params) {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(urlHeader);
        StringBuilder sb = new StringBuilder();
        sb.append(api);
        stringBuffer.append(sb.toString()).append("?");
        if (params == null) {
            params = new HashMap<>();
        }
        HashMap<String, String> resetActParams = WebUtils.resetActParams(context, params);
        try {
            String makeSig = SnsSigCheck.makeSig("GET", sb.toString(), resetActParams, SIGN_KEY);
            try {
                str = URLEncoder.encode(makeSig, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                str = makeSig;
            }
            HashMap<String, String> base64EncodeParams = WebUtils.base64EncodeParams(context, resetActParams);
            for (Map.Entry<String, String> entry : base64EncodeParams.entrySet()) {
                stringBuffer.append(entry.getKey() + "=" + entry.getValue() + "&");
            }
            if (base64EncodeParams.size() > 0) {
                stringBuffer.append("sign=");
            } else {
                stringBuffer.append("&sign=");
            }
            stringBuffer.append(str);
            return stringBuffer.toString();
        } catch (OpensnsException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static HashMap<String, String> paramEncodeSpec(HashMap<String, String> map) {
        String str;
        String str2;
        HashMap<String, String> hashMap = new HashMap<>();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            try {
                str = URLEncoder.encode(key, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                str = "";
            }
            String replaceAll = str.replaceAll("\\+", "%20");
            try {
                str2 = URLEncoder.encode(value, "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                str2 = "";
            }
            hashMap.put(replaceAll, str2.replaceAll("\\+", "%20"));
        }
        return hashMap;
    }
}
