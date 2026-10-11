package com.cmplay.crashreport;

import android.text.TextUtils;
import java.util.zip.CRC32;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h {
    private static String a(String str) {
        int lastIndexOf;
        int indexOf = str.indexOf("{");
        int indexOf2 = str.indexOf("}");
        if (indexOf != -1 && indexOf2 != -1) {
            int i = indexOf2 + 1;
            if (i > str.length()) {
                i = str.length();
            }
            str = str.replace(str.substring(indexOf, i), " -ADDR- ").trim();
        }
        int indexOf3 = str.indexOf("@");
        if (indexOf3 != -1) {
            int i2 = indexOf3 + 9;
            if (i2 > str.length()) {
                i2 = str.length();
            }
            str = str.replace(str.substring(indexOf3, i2), " -ADDR- ").trim();
        }
        return (str.indexOf("(") == -1 || (lastIndexOf = str.lastIndexOf(":")) == -1) ? str : str.substring(0, lastIndexOf).trim();
    }

    public static String a(Throwable th) {
        String str;
        int indexOf;
        boolean z = false;
        StackTraceElement[] b2 = b(th);
        if (th == null && b2 == null) {
            return "1001";
        }
        StackTraceElement[] stackTrace = (b2 == null || b2.length == 0) ? th.getStackTrace() : b2;
        if (stackTrace == null || stackTrace.length == 0) {
            return "1002";
        }
        String str2 = null;
        if (!TextUtils.isEmpty(th.toString()) && (indexOf = th.toString().indexOf(":")) != -1) {
            str2 = th.toString().substring(0, indexOf);
        }
        String str3 = "";
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (!TextUtils.isEmpty(stackTraceElement.toString()) && !stackTraceElement.toString().contains("android.os.Parcel") && !stackTraceElement.toString().contains("AsyncTaskEx.java")) {
                String stackTraceElement2 = stackTraceElement.toString();
                if (stackTraceElement2.contains("com.cleanmaster.") || stackTraceElement2.contains("com.keniu.") || stackTraceElement2.contains("com.ijinshan.") || stackTraceElement2.contains("ks.cm.")) {
                    str = stackTraceElement.toString();
                    break;
                }
                if (!z) {
                    str3 = stackTraceElement.toString();
                    z = true;
                }
            }
        }
        str = "";
        String a2 = !TextUtils.isEmpty(str) ? a(str) : a(str3);
        if (!TextUtils.isEmpty(str2)) {
            a2 = a2 + "|" + str2;
        }
        CRC32 crc32 = new CRC32();
        crc32.update(a2.getBytes());
        return Long.toString(crc32.getValue());
    }

    private static StackTraceElement[] b(Throwable th) {
        StackTraceElement[] stackTraceElementArr = null;
        while (th != null) {
            stackTraceElementArr = th.getStackTrace();
            th = th.getCause();
        }
        return stackTraceElementArr;
    }
}
