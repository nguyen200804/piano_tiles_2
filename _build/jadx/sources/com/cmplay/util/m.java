package com.cmplay.util;

import java.io.FileInputStream;
import java.security.MessageDigest;

/* compiled from: MD5Util.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class m {
    public static String a(String str) {
        FileInputStream fileInputStream;
        Throwable th;
        String str2 = null;
        int i = 0;
        try {
            fileInputStream = new FileInputStream(str);
            try {
                byte[] bArr = new byte[1024];
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                while (i != -1) {
                    i = fileInputStream.read(bArr);
                    if (i > 0) {
                        messageDigest.update(bArr, 0, i);
                    }
                }
                str2 = a(messageDigest.digest());
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Exception e) {
                    }
                }
            } catch (Exception e2) {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Exception e3) {
                    }
                }
                return str2;
            } catch (Throwable th2) {
                th = th2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Exception e4) {
                    }
                }
                throw th;
            }
        } catch (Exception e5) {
            fileInputStream = null;
        } catch (Throwable th3) {
            fileInputStream = null;
            th = th3;
        }
        return str2;
    }

    private static String a(byte[] bArr) {
        String str = "";
        for (byte b2 : bArr) {
            str = str + Integer.toString((b2 & 255) + 256, 16).substring(1);
        }
        return str.toLowerCase();
    }
}
