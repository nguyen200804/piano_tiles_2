package com.mopub.nativesdk.d;

import java.security.MessageDigest;

/* compiled from: MD5Util.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    private static char[] f4698a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return a(messageDigest.digest()).toLowerCase();
        } catch (Exception e) {
            return "";
        }
    }

    private static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length << 1);
        for (int i = 0; i < bArr.length; i++) {
            sb.append(f4698a[(bArr[i] & 240) >>> 4]);
            sb.append(f4698a[bArr[i] & 15]);
        }
        return sb.toString();
    }
}
