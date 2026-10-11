package com.facebook.ads.internal.util;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.StringTokenizer;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ag {
    public static final String a(String str) {
        if (str == null) {
            return str;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, " ", true);
        if (str.length() <= 90) {
            return str;
        }
        if (str.length() <= 93 && str.endsWith("...")) {
            return str;
        }
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            int length = stringTokenizer.nextToken().length();
            if (i + length < 90) {
                i += length;
            }
        }
        return i == 0 ? str.substring(0, 90) + "..." : str.substring(0, i) + "...";
    }

    public static final String a(Throwable th) {
        if (th == null) {
            return null;
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.close();
        return stringWriter.toString();
    }
}
