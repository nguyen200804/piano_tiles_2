package com.cmplay.b;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.cmplay.b.f;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: AppCardImageLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static String f1180a = "/appcard/";

    /* renamed from: b, reason: collision with root package name */
    private static String f1181b;

    public static void a(final a aVar, final String str, boolean z, boolean z2) {
        try {
            if (!TextUtils.isEmpty(aVar.i) && !a(aVar.i)) {
                com.cmplay.g.d.a(d.a(str), aVar.f1169a, aVar.h, 1);
                if (z2) {
                    com.cmplay.g.d.a(d.a(str), aVar.f1169a, aVar.h, 6);
                } else if (!z) {
                    com.cmplay.g.d.a(d.a(str), aVar.f1169a, aVar.h, 5);
                } else {
                    f.a().a(str, aVar, new f.a() { // from class: com.cmplay.b.c.1
                        @Override // com.cmplay.b.f.a
                        public void a(Bitmap bitmap) {
                            int i;
                            if (bitmap != null) {
                                if (c.b(bitmap, a.this.i)) {
                                    i = 2;
                                } else {
                                    i = 4;
                                }
                                bitmap.recycle();
                                com.cmplay.g.d.a(d.a(str), a.this.f1169a, a.this.h, i);
                            }
                        }
                    });
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:42:0x005f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(android.graphics.Bitmap r5, java.lang.String r6) {
        /*
            r0 = 0
            boolean r1 = r5.isRecycled()
            if (r1 != 0) goto Ld
            boolean r1 = android.text.TextUtils.isEmpty(r6)
            if (r1 == 0) goto Le
        Ld:
            return r0
        Le:
            r3 = 0
            java.lang.String r1 = b(r6)     // Catch: java.io.IOException -> L4c java.lang.Throwable -> L5c
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.io.IOException -> L4c java.lang.Throwable -> L5c
            if (r2 == 0) goto L24
            if (r3 == 0) goto Ld
            r3.close()     // Catch: java.lang.Exception -> L1f
            goto Ld
        L1f:
            r1 = move-exception
            r1.printStackTrace()
            goto Ld
        L24:
            java.io.File r4 = new java.io.File     // Catch: java.io.IOException -> L4c java.lang.Throwable -> L5c
            r4.<init>(r1)     // Catch: java.io.IOException -> L4c java.lang.Throwable -> L5c
            java.io.BufferedOutputStream r2 = new java.io.BufferedOutputStream     // Catch: java.io.IOException -> L4c java.lang.Throwable -> L5c
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L4c java.lang.Throwable -> L5c
            r1.<init>(r4)     // Catch: java.io.IOException -> L4c java.lang.Throwable -> L5c
            r2.<init>(r1)     // Catch: java.io.IOException -> L4c java.lang.Throwable -> L5c
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Throwable -> L68 java.io.IOException -> L6b
            r3 = 100
            r5.compress(r1, r3, r2)     // Catch: java.lang.Throwable -> L68 java.io.IOException -> L6b
            r2.flush()     // Catch: java.lang.Throwable -> L68 java.io.IOException -> L6b
            r2.close()     // Catch: java.lang.Throwable -> L68 java.io.IOException -> L6b
            r0 = 1
            if (r2 == 0) goto Ld
            r2.close()     // Catch: java.lang.Exception -> L47
            goto Ld
        L47:
            r1 = move-exception
            r1.printStackTrace()
            goto Ld
        L4c:
            r1 = move-exception
            r2 = r3
        L4e:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L68
            if (r2 == 0) goto Ld
            r2.close()     // Catch: java.lang.Exception -> L57
            goto Ld
        L57:
            r1 = move-exception
            r1.printStackTrace()
            goto Ld
        L5c:
            r0 = move-exception
        L5d:
            if (r3 == 0) goto L62
            r3.close()     // Catch: java.lang.Exception -> L63
        L62:
            throw r0
        L63:
            r1 = move-exception
            r1.printStackTrace()
            goto L62
        L68:
            r0 = move-exception
            r3 = r2
            goto L5d
        L6b:
            r1 = move-exception
            goto L4e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.b.c.b(android.graphics.Bitmap, java.lang.String):boolean");
    }

    public static boolean a(String str) {
        String b2 = b(str);
        return !TextUtils.isEmpty(b2) && new File(b2).exists();
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(f1181b)) {
            f1181b = com.cmplay.webview.d.a.a(f1180a, ".nomedia");
        }
        if (TextUtils.isEmpty(f1181b)) {
            return null;
        }
        return f1181b + c(str) + ".png";
    }

    public static String c(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes());
            return a(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            return String.valueOf(str.hashCode());
        }
    }

    private static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return sb.toString();
    }
}
