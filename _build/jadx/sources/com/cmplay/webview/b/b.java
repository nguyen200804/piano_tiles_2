package com.cmplay.webview.b;

import java.security.MessageDigest;

/* compiled from: Md5Util.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {
    public static String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return a(messageDigest.digest());
        } catch (Exception e) {
            return null;
        }
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        StringBuilder sb = new StringBuilder(length * 2);
        for (int i = 0; i < length; i++) {
            sb.append("0123456789abcdef".charAt((bArr[i] & 240) >>> 4));
            sb.append("0123456789abcdef".charAt(bArr[i] & 15));
        }
        return sb.toString();
    }
}
