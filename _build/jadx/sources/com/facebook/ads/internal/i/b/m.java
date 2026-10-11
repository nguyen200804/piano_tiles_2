package com.facebook.ads.internal.i.b;

import android.text.TextUtils;
import android.util.Log;
import android.webkit.MimeTypeMap;
import com.facebook.ads.AudienceNetworkActivity;
import java.io.Closeable;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class m {
    static String a(String str) {
        MimeTypeMap singleton = MimeTypeMap.getSingleton();
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (TextUtils.isEmpty(fileExtensionFromUrl)) {
            return null;
        }
        return singleton.getMimeTypeFromExtension(fileExtensionFromUrl);
    }

    private static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b2 : bArr) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(b2)));
        }
        return stringBuffer.toString();
    }

    static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Log.e("ProxyCache", "Error closing resource", e);
            }
        }
    }

    static void a(byte[] bArr, long j, int i) {
        j.a(bArr, "Buffer must be not null!");
        j.a(j >= 0, "Data offset must be positive!");
        j.a(i >= 0 && i <= bArr.length, "Length must be in range [0..buffer.length]");
    }

    static String b(String str) {
        try {
            return URLEncoder.encode(str, AudienceNetworkActivity.WEBVIEW_ENCODING);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Error encoding url", e);
        }
    }

    static String c(String str) {
        try {
            return URLDecoder.decode(str, AudienceNetworkActivity.WEBVIEW_ENCODING);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Error decoding url", e);
        }
    }

    public static String d(String str) {
        try {
            return a(MessageDigest.getInstance("MD5").digest(str.getBytes()));
        } catch (NoSuchAlgorithmException e) {
            throw new IllegalStateException(e);
        }
    }
}
