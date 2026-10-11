package com.cmplay.webview.b;

import android.content.Context;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/* compiled from: UrlEncoder.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static String f1925a = "Html5PianoTiles2&";

    public static String a(Context context, String str) {
        String str2 = "";
        if (str.startsWith("http://")) {
            str = str.substring(7);
            str2 = "http://";
        } else if (str.startsWith("https://")) {
            str = str.substring(8);
            str2 = "https://";
        }
        int indexOf = str.indexOf("/");
        int indexOf2 = str.indexOf("?");
        if (indexOf2 == -1) {
            indexOf2 = str.length();
        }
        if (indexOf == -1 || indexOf >= indexOf2) {
            return null;
        }
        String str3 = str2 + str.substring(0, indexOf);
        String substring = str.substring(indexOf, indexOf2);
        String substring2 = str.substring(Math.min(indexOf2 + 1, str.length()));
        HashMap hashMap = new HashMap();
        for (String str4 : substring2.split("&")) {
            String[] split = str4.split("=", 2);
            if (split.length != 2) {
                break;
            }
            try {
                hashMap.put(split[0], split[1]);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return a(context, substring, str3, hashMap);
    }

    public static String a(Context context, String str, String str2, HashMap<String, String> hashMap) {
        String str3;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str2);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        stringBuffer.append(sb.toString()).append("?");
        if (hashMap == null) {
            hashMap = new HashMap<>();
        }
        HashMap<String, String> a2 = com.cmplay.webview.d.d.a(context, hashMap);
        try {
            String a3 = d.a("GET", sb.toString(), a2, f1925a);
            try {
                str3 = URLEncoder.encode(a3, "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                str3 = a3;
            }
            HashMap<String, String> b2 = com.cmplay.webview.d.d.b(context, a2);
            for (Map.Entry<String, String> entry : b2.entrySet()) {
                stringBuffer.append(entry.getKey() + "=" + entry.getValue() + "&");
            }
            if (b2.size() > 0) {
                stringBuffer.append("sign=");
            } else {
                stringBuffer.append("&sign=");
            }
            stringBuffer.append(str3);
            return stringBuffer.toString();
        } catch (c e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
