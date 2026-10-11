package com.mopub.common.util;

import java.security.MessageDigest;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Utils {

    /* renamed from: a, reason: collision with root package name */
    private static final AtomicLong f4245a = new AtomicLong(1);

    public static String sha1(String string) {
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bytes = string.getBytes("UTF-8");
            messageDigest.update(bytes, 0, bytes.length);
            for (byte b2 : messageDigest.digest()) {
                sb.append(String.format("%02X", Byte.valueOf(b2)));
            }
            return sb.toString().toLowerCase(Locale.US);
        } catch (Exception e) {
            return "";
        }
    }

    public static long generateUniqueId() {
        long j;
        long j2;
        do {
            j = f4245a.get();
            j2 = j + 1;
            if (j2 > 9223372036854775806L) {
                j2 = 1;
            }
        } while (!f4245a.compareAndSet(j, j2));
        return j;
    }

    public static boolean bitMaskContainsFlag(int bitMask, int flag) {
        return (bitMask & flag) != 0;
    }
}
