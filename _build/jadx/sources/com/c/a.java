package com.c;

import com.android.volley.m;
import com.android.volley.toolbox.h;
import com.cmplay.tile2.GameApp;

/* compiled from: MyVolley.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static a f653a = null;

    /* renamed from: b, reason: collision with root package name */
    private m f654b;
    private h c;

    private a() {
        a(GameApp.f1598a);
    }

    public static a a() {
        if (f653a == null) {
            synchronized (a.class) {
                if (f653a == null) {
                    f653a = new a();
                }
            }
        }
        return f653a;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:2|3|(1:5)(3:22|(1:24)|14)|6|7|8|9|10|(1:12)(1:18)|13|14) */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0087, code lost:
    
        r1 = "volley/0";
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private synchronized void a(android.content.Context r6) {
        /*
            r5 = this;
            monitor-enter(r5)
            java.lang.String r1 = com.cmplay.util.x.a()     // Catch: java.lang.Throwable -> L93
            boolean r0 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> L93
            if (r0 != 0) goto L7e
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L93
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L93
            r2 = r0
        L11:
            java.lang.String r0 = "volley/0"
            java.lang.String r1 = r6.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L86 java.lang.Throwable -> L93
            android.content.pm.PackageManager r3 = r6.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L86 java.lang.Throwable -> L93
            r4 = 0
            android.content.pm.PackageInfo r3 = r3.getPackageInfo(r1, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L86 java.lang.Throwable -> L93
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L86 java.lang.Throwable -> L93
            r4.<init>()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L86 java.lang.Throwable -> L93
            java.lang.StringBuilder r1 = r4.append(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L86 java.lang.Throwable -> L93
            java.lang.String r4 = "/"
            java.lang.StringBuilder r1 = r1.append(r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L86 java.lang.Throwable -> L93
            int r3 = r3.versionCode     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L86 java.lang.Throwable -> L93
            java.lang.StringBuilder r1 = r1.append(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L86 java.lang.Throwable -> L93
            java.lang.String r0 = r1.toString()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L86 java.lang.Throwable -> L93
            r1 = r0
        L3a:
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L93
            r3 = 9
            if (r0 < r3) goto L89
            com.android.volley.toolbox.g r0 = new com.android.volley.toolbox.g     // Catch: java.lang.Throwable -> L93
            r0.<init>()     // Catch: java.lang.Throwable -> L93
        L45:
            com.android.volley.toolbox.a r1 = new com.android.volley.toolbox.a     // Catch: java.lang.Throwable -> L93
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L93
            com.android.volley.m r0 = new com.android.volley.m     // Catch: java.lang.Throwable -> L93
            com.android.volley.toolbox.c r3 = new com.android.volley.toolbox.c     // Catch: java.lang.Throwable -> L93
            r4 = 104857600(0x6400000, float:3.6111186E-35)
            r3.<init>(r2, r4)     // Catch: java.lang.Throwable -> L93
            r0.<init>(r3, r1)     // Catch: java.lang.Throwable -> L93
            r5.f654b = r0     // Catch: java.lang.Throwable -> L93
            com.android.volley.m r0 = r5.f654b     // Catch: java.lang.Throwable -> L93
            r0.a()     // Catch: java.lang.Throwable -> L93
            java.lang.String r0 = "activity"
            java.lang.Object r0 = r6.getSystemService(r0)     // Catch: java.lang.Throwable -> L93
            android.app.ActivityManager r0 = (android.app.ActivityManager) r0     // Catch: java.lang.Throwable -> L93
            int r0 = r0.getMemoryClass()     // Catch: java.lang.Throwable -> L93
            r1 = 1048576(0x100000, float:1.469368E-39)
            int r0 = r0 * r1
            int r0 = r0 / 8
            com.android.volley.toolbox.h r1 = new com.android.volley.toolbox.h     // Catch: java.lang.Throwable -> L93
            com.android.volley.m r2 = r5.f654b     // Catch: java.lang.Throwable -> L93
            com.cmplay.util.BitmapLruCache r3 = new com.cmplay.util.BitmapLruCache     // Catch: java.lang.Throwable -> L93
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L93
            r1.<init>(r2, r3)     // Catch: java.lang.Throwable -> L93
            r5.c = r1     // Catch: java.lang.Throwable -> L93
        L7c:
            monitor-exit(r5)
            return
        L7e:
            java.io.File r0 = com.cmplay.util.x.b()     // Catch: java.lang.Throwable -> L93
            if (r0 == 0) goto L7c
            r2 = r0
            goto L11
        L86:
            r1 = move-exception
            r1 = r0
            goto L3a
        L89:
            com.android.volley.toolbox.d r0 = new com.android.volley.toolbox.d     // Catch: java.lang.Throwable -> L93
            android.net.http.AndroidHttpClient r1 = android.net.http.AndroidHttpClient.newInstance(r1)     // Catch: java.lang.Throwable -> L93
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L93
            goto L45
        L93:
            r0 = move-exception
            monitor-exit(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.c.a.a(android.content.Context):void");
    }

    public synchronized h b() {
        if (this.c != null) {
        } else {
            throw new IllegalStateException("ImageLoader not initialized");
        }
        return this.c;
    }
}
