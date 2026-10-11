package com.mnt.impl.i.a;

import com.mnt.impl.e;
import java.io.UnsupportedEncodingException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b {
    static {
        byte[] bArr = {65, 66, 69, 78, 50, 48, 49, 50, 48, 57, 51, 48, 49, 56, 51, 48};
    }

    private static byte[] a(byte[] bArr, byte b2) {
        try {
            byte[] bArr2 = new byte[bArr.length];
            for (int i = 0; i < bArr.length; i++) {
                bArr2[i] = (byte) (bArr[i] ^ b2);
            }
            return bArr2;
        } catch (Exception e) {
            return null;
        }
    }

    private static byte[] a(byte[] bArr, byte[] bArr2) {
        for (byte b2 : bArr2) {
            bArr = a(bArr, b2);
        }
        return bArr;
    }

    public static String a(String str, String str2) {
        try {
            return a(str.getBytes(e.aN), str2);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String a(byte[] bArr, String str) {
        try {
            return a.a(a(bArr, str.getBytes(e.aO)));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String b(String str, String str2) {
        try {
            return new String(a(a.a(str), str2.getBytes(e.aP)), e.aQ);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
