package com.mnt.impl.f;

import android.net.Uri;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.IOException;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    private int f4009a = 1000;

    /* renamed from: b, reason: collision with root package name */
    private int f4010b = 1;
    private String c;

    static {
        String str = com.mnt.impl.e.gf;
    }

    public final String a(String str) {
        String str2 = "";
        for (int i = 0; i < this.f4010b; i++) {
            str2 = b(str);
            if (!TextUtils.isEmpty(str2)) {
                break;
            }
            try {
                Thread.sleep(this.f4009a * i);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String b(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mnt.impl.f.e.b(java.lang.String):java.lang.String");
    }

    private static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public final String a(String str, Map<String, String> map, String str2) {
        return a(str, a(map), str2, 0, 0);
    }

    public final String a(String str, Map<String, String> map, int i, int i2) {
        return a(str, a(map), null, i, i2);
    }

    private String a(String str, String str2, String str3, int i, int i2) {
        String str4 = "";
        for (int i3 = 0; i3 < this.f4010b; i3++) {
            str4 = b(str, str2, str3, i, i2);
            if (!TextUtils.isEmpty(str4)) {
                break;
            }
            try {
                Thread.sleep(this.f4009a * i3);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return str4;
    }

    public final String a(String str, String str2) {
        return a(str, str2, null, 0, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00aa A[Catch: all -> 0x0127, TRY_LEAVE, TryCatch #2 {all -> 0x0127, blocks: (B:44:0x00a1, B:46:0x00aa), top: B:43:0x00a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x010b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String b(java.lang.String r11, java.lang.String r12, java.lang.String r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mnt.impl.f.e.b(java.lang.String, java.lang.String, java.lang.String, int, int):java.lang.String");
    }

    private static String a(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return "";
        }
        Uri.Builder builder = new Uri.Builder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builder.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        return builder.toString().substring(1);
    }
}
