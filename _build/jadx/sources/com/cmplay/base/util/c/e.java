package com.cmplay.base.util.c;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.cmplay.base.util.g;
import com.cmplay.base.util.j;
import com.cmplay.base.util.l;
import com.mopub.common.Constants;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

/* compiled from: LoaderImpl.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private Map<String, SoftReference<Bitmap>> f1234a;

    /* renamed from: b, reason: collision with root package name */
    private f<String, Bitmap> f1235b;
    private boolean c = false;
    private String d;

    public e(Map<String, SoftReference<Bitmap>> map) {
        this.f1234a = map;
    }

    @SuppressLint({"NewApi"})
    public void a(Context context) {
        int memoryClass = ((ActivityManager) context.getSystemService("activity")).getMemoryClass();
        int i = (1048576 * memoryClass) / 8;
        g.a("cache:-----" + memoryClass + "/" + ((i / 1024) / 1024));
        this.f1235b = new f<String, Bitmap>(i) { // from class: com.cmplay.base.util.c.e.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.cmplay.base.util.c.f
            public int a(String str, Bitmap bitmap) {
                return bitmap.getRowBytes() * bitmap.getHeight();
            }
        };
    }

    public void a(boolean z) {
        this.c = z;
    }

    public void a(String str) {
        this.d = str;
    }

    public synchronized Bitmap a(Context context, String str, boolean z) {
        Bitmap bitmap;
        Bitmap a2;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setConnectTimeout(Constants.TEN_SECONDS_MILLIS);
            InputStream inputStream = httpURLConnection.getInputStream();
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if ("GIF".equals(com.cmplay.base.util.f.a(byteArray))) {
                    a2 = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
                } else {
                    a2 = com.cmplay.base.util.f.a(byteArray, j.c(context), j.d(context));
                }
                if (z) {
                    if (this.f1235b != null) {
                        g.a("存入：bitmap=" + a2);
                        this.f1235b.b(str, a2);
                    } else {
                        this.f1234a.put(str, new SoftReference<>(a2));
                    }
                    if (this.c) {
                        FileOutputStream fileOutputStream = new FileOutputStream(this.d + "/" + b(str));
                        if ("GIF".equals(com.cmplay.base.util.f.a(byteArray))) {
                            fileOutputStream.write(byteArray);
                        } else {
                            a2.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                        }
                    }
                }
                bitmap = a2;
            } finally {
                inputStream.close();
                httpURLConnection.disconnect();
            }
        } catch (Exception e) {
            e.printStackTrace();
            bitmap = null;
        }
        return bitmap;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap a(android.content.Context r4, java.lang.String r5) {
        /*
            r3 = this;
            r1 = 0
            com.cmplay.base.util.c.f<java.lang.String, android.graphics.Bitmap> r0 = r3.f1235b
            if (r0 == 0) goto L15
            com.cmplay.base.util.c.f<java.lang.String, android.graphics.Bitmap> r0 = r3.f1235b
            java.lang.Object r0 = r0.a(r5)
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0
            if (r0 == 0) goto L37
            java.lang.String r1 = "cache 中获取"
            com.cmplay.base.util.g.a(r1)
        L14:
            return r0
        L15:
            java.util.Map<java.lang.String, java.lang.ref.SoftReference<android.graphics.Bitmap>> r0 = r3.f1234a
            boolean r0 = r0.containsKey(r5)
            if (r0 == 0) goto L5b
            java.util.Map<java.lang.String, java.lang.ref.SoftReference<android.graphics.Bitmap>> r2 = r3.f1234a
            monitor-enter(r2)
            java.util.Map<java.lang.String, java.lang.ref.SoftReference<android.graphics.Bitmap>> r0 = r3.f1234a     // Catch: java.lang.Throwable -> L32
            java.lang.Object r0 = r0.get(r5)     // Catch: java.lang.Throwable -> L32
            java.lang.ref.SoftReference r0 = (java.lang.ref.SoftReference) r0     // Catch: java.lang.Throwable -> L32
            if (r0 == 0) goto L35
            java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> L32
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0     // Catch: java.lang.Throwable -> L32
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L32
            goto L14
        L32:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L32
            throw r0
        L35:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L32
            r0 = r1
        L37:
            boolean r1 = r3.c
            if (r1 == 0) goto L14
            android.graphics.Bitmap r0 = r3.b(r4, r5)
            if (r0 == 0) goto L14
            java.lang.String r1 = "sd卡  中获取"
            com.cmplay.base.util.g.a(r1)
            com.cmplay.base.util.c.f<java.lang.String, android.graphics.Bitmap> r1 = r3.f1235b
            if (r1 == 0) goto L50
            com.cmplay.base.util.c.f<java.lang.String, android.graphics.Bitmap> r1 = r3.f1235b
            r1.b(r5, r0)
            goto L14
        L50:
            java.util.Map<java.lang.String, java.lang.ref.SoftReference<android.graphics.Bitmap>> r1 = r3.f1234a
            java.lang.ref.SoftReference r2 = new java.lang.ref.SoftReference
            r2.<init>(r0)
            r1.put(r5, r2)
            goto L14
        L5b:
            r0 = r1
            goto L37
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmplay.base.util.c.e.a(android.content.Context, java.lang.String):android.graphics.Bitmap");
    }

    private Bitmap b(Context context, String str) {
        String b2 = b(str);
        if (b2 == null) {
            return null;
        }
        String str2 = this.d + "/" + b2;
        try {
            if (new File(str2).exists()) {
                return com.cmplay.base.util.f.a(str2, j.c(context), j.d(context));
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String a2 = l.a(str);
        if (a2 == null) {
            a2 = "";
        }
        return a2 + "_" + str.substring(str.lastIndexOf("/") + 1, str.length());
    }
}
