package com.cmplay.util;

import android.text.TextUtils;
import android.util.Base64;
import com.facebook.ads.AudienceNetworkActivity;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.io.IOUtils;

/* compiled from: SignUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ab {
    public static String a(a aVar, String str) {
        try {
            URL url = new URL(str);
            StringBuilder sb = new StringBuilder(64);
            sb.append(aVar.a());
            sb.append('&').append(a(url.getPath(), AudienceNetworkActivity.WEBVIEW_ENCODING));
            sb.append('&').append(a(a(a(url.getQuery())), AudienceNetworkActivity.WEBVIEW_ENCODING));
            return a(a(b(sb.toString(), "FullStackPianoTiles2&")).replaceAll(IOUtils.LINE_SEPARATOR_UNIX, ""), AudienceNetworkActivity.WEBVIEW_ENCODING);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            return null;
        } catch (InvalidKeyException e3) {
            e3.printStackTrace();
            return null;
        } catch (NoSuchAlgorithmException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private static String a(String str, String str2) throws UnsupportedEncodingException {
        String encode = URLEncoder.encode(str, str2);
        int length = encode.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = encode.charAt(i);
            if (charAt == '+') {
                sb.append("%20");
            } else if (charAt == '*') {
                sb.append("%2A");
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    private static String[] a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("&");
        HashMap hashMap = new HashMap();
        for (String str2 : split) {
            String[] split2 = str2.split("=");
            if (split2.length == 2) {
                hashMap.put(split2[0], split2[1]);
            }
        }
        Set keySet = hashMap.keySet();
        String[] strArr = new String[keySet.size()];
        Iterator it = keySet.iterator();
        int i = 0;
        while (it.hasNext()) {
            strArr[i] = (String) it.next();
            i++;
        }
        Arrays.sort(strArr);
        for (int i2 = 0; i2 < strArr.length; i2++) {
            String str3 = strArr[i2];
            strArr[i2] = str3 + "=" + ((String) hashMap.get(str3));
        }
        return strArr;
    }

    private static String a(String[] strArr) {
        int i = 0;
        if (strArr == null || strArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(16);
        int length = strArr.length;
        for (String str : strArr) {
            if (!str.contains("sig=")) {
                sb.append(str);
                if (i < length - 1) {
                    sb.append('&');
                }
            }
            i++;
        }
        return sb.toString();
    }

    private static byte[] b(String str, String str2) throws NoSuchAlgorithmException, UnsupportedEncodingException, InvalidKeyException {
        Mac mac = Mac.getInstance("HmacSHA1");
        mac.init(new SecretKeySpec(str2.getBytes(AudienceNetworkActivity.WEBVIEW_ENCODING), "HmacSHA1"));
        return mac.doFinal(str.getBytes(AudienceNetworkActivity.WEBVIEW_ENCODING));
    }

    private static String a(byte[] bArr) {
        return Base64.encodeToString(bArr, 0);
    }

    /* compiled from: SignUtil.java */
    public enum a {
        POST("POST"),
        DELETE("DELETE"),
        GET("GET"),
        PUT("PUT");

        private String e;

        a(String str) {
            this.e = str;
        }

        public String a() {
            return this.e;
        }
    }
}
