package com.cmplay.webview.b;

import com.cmplay.base.util.webview.encode.ErrorCode;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: SnsSigCheck.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d {
    public static String a(String str) throws c {
        try {
            return URLEncoder.encode(str, "UTF-8").replace("+", "%20").replace("*", "%2A");
        } catch (UnsupportedEncodingException e) {
            throw new c(ErrorCode.MAKE_SIGNATURE_ERROR, e);
        }
    }

    public static String a(String str, String str2, HashMap<String, String> hashMap, String str3) throws c {
        try {
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(new SecretKeySpec(str3.getBytes("UTF-8"), mac.getAlgorithm()));
            return new String(a.a(mac.doFinal(a(str, str2, hashMap).getBytes("UTF-8"))));
        } catch (UnsupportedEncodingException e) {
            throw new c(ErrorCode.MAKE_SIGNATURE_ERROR, e);
        } catch (InvalidKeyException e2) {
            throw new c(ErrorCode.MAKE_SIGNATURE_ERROR, e2);
        } catch (NoSuchAlgorithmException e3) {
            throw new c(ErrorCode.MAKE_SIGNATURE_ERROR, e3);
        }
    }

    public static String a(String str, String str2, HashMap<String, String> hashMap) throws c {
        Object[] array = hashMap.keySet().toArray();
        Arrays.sort(array);
        StringBuilder sb = new StringBuilder(128);
        sb.append(str.toUpperCase()).append("&").append(a(str2)).append("&");
        StringBuilder sb2 = new StringBuilder();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < array.length) {
                sb2.append(array[i2]).append("=").append(hashMap.get(array[i2]));
                if (i2 != array.length - 1) {
                    sb2.append("&");
                }
                i = i2 + 1;
            } else {
                sb.append(a(sb2.toString()));
                return sb.toString();
            }
        }
    }
}
