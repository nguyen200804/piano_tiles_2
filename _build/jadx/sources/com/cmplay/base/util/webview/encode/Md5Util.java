package com.cmplay.base.util.webview.encode;

import java.security.MessageDigest;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Md5Util {
    public static String getStringMd5(String plainText) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(plainText.getBytes());
            return encodeHex(messageDigest.digest());
        } catch (Exception e) {
            return null;
        }
    }

    public static String encodeHex(byte[] data) {
        if (data == null) {
            return null;
        }
        int length = data.length;
        StringBuilder sb = new StringBuilder(length * 2);
        for (int i = 0; i < length; i++) {
            sb.append("0123456789abcdef".charAt((data[i] & 240) >>> 4));
            sb.append("0123456789abcdef".charAt(data[i] & 15));
        }
        return sb.toString();
    }
}
