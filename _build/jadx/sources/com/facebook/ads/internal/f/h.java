package com.facebook.ads.internal.f;

import android.content.Context;
import android.content.SharedPreferences;
import com.facebook.ads.AdSettings;
import com.facebook.ads.internal.util.p;
import com.facebook.ads.internal.util.u;
import com.facebook.ads.internal.util.y;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f2717a = new AtomicInteger(0);

    /* renamed from: b, reason: collision with root package name */
    private static String f2718b = null;
    private static final p.a c = p.a();
    private final Context d;

    public h(Context context, boolean z) {
        this.d = context;
        a(context, z);
    }

    private static void a(final Context context, boolean z) {
        if (f2717a.compareAndSet(0, 1)) {
            try {
                g.a();
                j.a(context);
                final SharedPreferences sharedPreferences = context.getSharedPreferences("FBAdPrefs", 0);
                f2718b = sharedPreferences.getString("AFP", null);
                FutureTask futureTask = new FutureTask(new Callable<Boolean>() { // from class: com.facebook.ads.internal.f.h.1
                    @Override // java.util.concurrent.Callable
                    /* renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Boolean call() {
                        String unused = h.f2718b = u.a(context, context.getPackageName());
                        sharedPreferences.edit().putString("AFP", h.f2718b).apply();
                        h.f2717a.set(2);
                        return true;
                    }
                });
                Executors.newSingleThreadExecutor().submit(futureTask);
                if (z) {
                    futureTask.get();
                }
            } catch (Exception e) {
                f2717a.set(0);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0057 A[Catch: IOException -> 0x0060, TryCatch #5 {IOException -> 0x0060, blocks: (B:40:0x0052, B:33:0x0057, B:35:0x005c), top: B:39:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x005c A[Catch: IOException -> 0x0060, TRY_LEAVE, TryCatch #5 {IOException -> 0x0060, blocks: (B:40:0x0052, B:33:0x0057, B:35:0x005c), top: B:39:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0052 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a() {
        /*
            r6 = this;
            r2 = 0
            android.content.Context r0 = r6.d
            r1 = 1
            a(r0, r1)
            java.io.ByteArrayOutputStream r4 = new java.io.ByteArrayOutputStream     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L62
            r4.<init>()     // Catch: java.io.IOException -> L42 java.lang.Throwable -> L62
            android.util.Base64OutputStream r3 = new android.util.Base64OutputStream     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L70
            r0 = 0
            r3.<init>(r4, r0)     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L70
            java.util.zip.DeflaterOutputStream r1 = new java.util.zip.DeflaterOutputStream     // Catch: java.lang.Throwable -> L6b java.io.IOException -> L74
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L6b java.io.IOException -> L74
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L79
            java.util.Map r2 = r6.b()     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L79
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L79
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L79
            byte[] r0 = r0.getBytes()     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L79
            r1.write(r0)     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L79
            r1.close()     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L79
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Throwable -> L6e java.io.IOException -> L79
            if (r1 == 0) goto L37
            r1.close()     // Catch: java.io.IOException -> L7d
        L37:
            if (r3 == 0) goto L3c
            r3.close()     // Catch: java.io.IOException -> L7d
        L3c:
            if (r4 == 0) goto L41
            r4.close()     // Catch: java.io.IOException -> L7d
        L41:
            return r0
        L42:
            r0 = move-exception
            r1 = r2
            r3 = r2
        L45:
            java.lang.RuntimeException r4 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L4d
            java.lang.String r5 = "Failed to build user token"
            r4.<init>(r5, r0)     // Catch: java.lang.Throwable -> L4d
            throw r4     // Catch: java.lang.Throwable -> L4d
        L4d:
            r0 = move-exception
            r4 = r3
            r3 = r2
        L50:
            if (r1 == 0) goto L55
            r1.close()     // Catch: java.io.IOException -> L60
        L55:
            if (r3 == 0) goto L5a
            r3.close()     // Catch: java.io.IOException -> L60
        L5a:
            if (r4 == 0) goto L5f
            r4.close()     // Catch: java.io.IOException -> L60
        L5f:
            throw r0
        L60:
            r1 = move-exception
            goto L5f
        L62:
            r0 = move-exception
            r1 = r2
            r3 = r2
            r4 = r2
            goto L50
        L67:
            r0 = move-exception
            r1 = r2
            r3 = r2
            goto L50
        L6b:
            r0 = move-exception
            r1 = r2
            goto L50
        L6e:
            r0 = move-exception
            goto L50
        L70:
            r0 = move-exception
            r1 = r2
            r3 = r4
            goto L45
        L74:
            r0 = move-exception
            r1 = r2
            r2 = r3
            r3 = r4
            goto L45
        L79:
            r0 = move-exception
            r2 = r3
            r3 = r4
            goto L45
        L7d:
            r1 = move-exception
            goto L41
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.internal.f.h.a():java.lang.String");
    }

    public Map<String, String> b() {
        a(this.d, false);
        HashMap hashMap = new HashMap();
        hashMap.put("SDK", "android");
        hashMap.put("SDK_VERSION", "4.26.1");
        hashMap.put("LOCALE", Locale.getDefault().toString());
        float f = this.d.getResources().getDisplayMetrics().density;
        int i = this.d.getResources().getDisplayMetrics().widthPixels;
        int i2 = this.d.getResources().getDisplayMetrics().heightPixels;
        hashMap.put("DENSITY", String.valueOf(f));
        hashMap.put("SCREEN_WIDTH", String.valueOf((int) (i / f)));
        hashMap.put("SCREEN_HEIGHT", String.valueOf((int) (i2 / f)));
        hashMap.put("ATTRIBUTION_ID", j.n);
        hashMap.put("ID_SOURCE", j.q);
        hashMap.put("OS", "Android");
        hashMap.put("OSVERS", j.f2723a);
        hashMap.put("BUNDLE", j.d);
        hashMap.put("APPNAME", j.e);
        hashMap.put("APPVERS", j.f);
        hashMap.put("APPBUILD", String.valueOf(j.g));
        hashMap.put("CARRIER", j.i);
        hashMap.put("MAKE", j.f2724b);
        hashMap.put("MODEL", j.c);
        hashMap.put("ROOTED", String.valueOf(c.d));
        hashMap.put("INSTALLER", j.h);
        hashMap.put("SDK_CAPABILITY", com.facebook.ads.internal.e.b());
        hashMap.put("NETWORK_TYPE", String.valueOf(y.c(this.d).g));
        hashMap.put("SESSION_TIME", com.facebook.ads.internal.util.g.a(g.b()));
        hashMap.put("SESSION_ID", g.c());
        if (f2718b != null) {
            hashMap.put("AFP", f2718b);
        }
        hashMap.put("UNITY", String.valueOf(com.facebook.ads.internal.util.g.a(this.d)));
        String mediationService = AdSettings.getMediationService();
        if (mediationService != null) {
            hashMap.put("MEDIATION_SERVICE", mediationService);
        }
        return hashMap;
    }
}
