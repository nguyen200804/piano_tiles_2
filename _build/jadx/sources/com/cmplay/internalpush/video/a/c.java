package com.cmplay.internalpush.video.a;

import android.text.TextUtils;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLDecoder;

/* compiled from: VideoHttpUrlConnection.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class c extends HttpURLConnection {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1542a = System.getProperty("http.agent");

    /* renamed from: b, reason: collision with root package name */
    private static volatile String f1543b;

    public static HttpURLConnection a(String str) throws IOException {
        if (c(str)) {
            throw new IllegalArgumentException("URL is improperly encoded: " + str);
        }
        try {
            str = b(str);
        } catch (Exception e) {
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestProperty("User-Agent", a());
        httpURLConnection.setConnectTimeout(25000);
        httpURLConnection.setReadTimeout(25000);
        return httpURLConnection;
    }

    public static String a() {
        String str = f1543b;
        if (str == null) {
            return f1542a;
        }
        return str;
    }

    public static String b(String str) throws Exception {
        URI uri;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (c(str)) {
            throw new UnsupportedEncodingException("URL is improperly encoded: " + str);
        }
        if (d(str)) {
            uri = e(str);
        } else {
            uri = new URI(str);
        }
        return uri.toURL().toString();
    }

    static boolean c(String str) {
        try {
            URLDecoder.decode(str, "UTF-8");
            return false;
        } catch (UnsupportedEncodingException e) {
            return true;
        }
    }

    static boolean d(String str) {
        try {
            new URI(str);
            return false;
        } catch (URISyntaxException e) {
            return true;
        }
    }

    static URI e(String str) throws Exception {
        try {
            URL url = new URL(str);
            return new URI(url.getProtocol(), url.getUserInfo(), url.getHost(), url.getPort(), url.getPath(), url.getQuery(), url.getRef());
        } catch (Exception e) {
            throw e;
        }
    }
}
