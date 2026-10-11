package com.cmcm.dmc.sdk.d;

import com.mopub.common.Constants;
import java.io.InputStream;
import java.net.HttpURLConnection;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private boolean f712a;

    /* renamed from: b, reason: collision with root package name */
    private Thread f713b;
    private boolean c;
    private String d;
    private int e = Constants.TEN_SECONDS_MILLIS;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a() {
        /*
            r8 = this;
            r3 = 0
            r2 = 1
            r1 = 0
            java.net.URL r0 = new java.net.URL     // Catch: java.lang.Exception -> L77 java.lang.Throwable -> L9f
            java.lang.String r4 = r8.d     // Catch: java.lang.Exception -> L77 java.lang.Throwable -> L9f
            r0.<init>(r4)     // Catch: java.lang.Exception -> L77 java.lang.Throwable -> L9f
            java.net.URLConnection r0 = r0.openConnection()     // Catch: java.lang.Exception -> L77 java.lang.Throwable -> L9f
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch: java.lang.Exception -> L77 java.lang.Throwable -> L9f
            int r4 = r8.e     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lb0
            r0.setConnectTimeout(r4)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lb0
            int r4 = r8.e     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lb0
            r0.setReadTimeout(r4)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lb0
            java.lang.String r4 = "GET"
            r0.setRequestMethod(r4)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lb0
            r4 = 0
            r0.setUseCaches(r4)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lb0
            r4 = 1
            r0.setDoInput(r4)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lb0
            r4 = 0
            r0.setDoOutput(r4)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lb0
            boolean r4 = r8.a(r0)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lb0
            if (r4 != 0) goto L3b
            com.cmcm.dmc.sdk.a.q.a(r3)
            if (r0 == 0) goto L39
            r0.disconnect()
        L39:
            r0 = r1
        L3a:
            return r0
        L3b:
            r0.connect()     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lb0
            java.io.InputStream r3 = r0.getInputStream()     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lb0
            boolean r4 = r8.a(r0, r3)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lb0
            if (r4 != 0) goto L52
            com.cmcm.dmc.sdk.a.q.a(r3)
            if (r0 == 0) goto L50
            r0.disconnect()
        L50:
            r0 = r1
            goto L3a
        L52:
            r4 = 4096(0x1000, float:5.74E-42)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lb0
        L56:
            int r5 = r3.read(r4)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lb0
            if (r5 > 0) goto L66
            com.cmcm.dmc.sdk.a.q.a(r3)
            if (r0 == 0) goto L64
            r0.disconnect()
        L64:
            r0 = r2
            goto L3a
        L66:
            r6 = 0
            boolean r5 = r8.a(r0, r4, r6, r5)     // Catch: java.lang.Throwable -> Laa java.lang.Exception -> Lb0
            if (r5 != 0) goto L56
            com.cmcm.dmc.sdk.a.q.a(r3)
            if (r0 == 0) goto L75
            r0.disconnect()
        L75:
            r0 = r1
            goto L3a
        L77:
            r0 = move-exception
            r2 = r3
        L79:
            java.lang.String r4 = "HttpDownloader"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lae
            r5.<init>()     // Catch: java.lang.Throwable -> Lae
            java.lang.String r6 = "failed to download : "
            java.lang.StringBuilder r5 = r5.append(r6)     // Catch: java.lang.Throwable -> Lae
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> Lae
            java.lang.StringBuilder r0 = r5.append(r0)     // Catch: java.lang.Throwable -> Lae
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> Lae
            com.cmcm.dmc.sdk.a.i.a(r4, r0)     // Catch: java.lang.Throwable -> Lae
            com.cmcm.dmc.sdk.a.q.a(r3)
            if (r2 == 0) goto L9d
            r2.disconnect()
        L9d:
            r0 = r1
            goto L3a
        L9f:
            r0 = move-exception
            r2 = r3
        La1:
            com.cmcm.dmc.sdk.a.q.a(r3)
            if (r2 == 0) goto La9
            r2.disconnect()
        La9:
            throw r0
        Laa:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto La1
        Lae:
            r0 = move-exception
            goto La1
        Lb0:
            r2 = move-exception
            r7 = r2
            r2 = r0
            r0 = r7
            goto L79
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmcm.dmc.sdk.d.a.a():boolean");
    }

    public void a(String str, int i) {
        this.d = str;
        this.e = i;
        synchronized (this) {
            this.f712a = false;
            this.c = false;
        }
        this.f713b = new Thread(new Runnable() { // from class: com.cmcm.dmc.sdk.d.a.1
            @Override // java.lang.Runnable
            public void run() {
                a.this.a(a.this.a());
            }
        });
        this.f713b.start();
    }

    public void a(boolean z) {
        b(z);
    }

    public boolean a(HttpURLConnection httpURLConnection) {
        return !b();
    }

    public boolean a(HttpURLConnection httpURLConnection, InputStream inputStream) {
        if (b()) {
            return false;
        }
        return httpURLConnection.getResponseCode() == 200;
    }

    public boolean a(HttpURLConnection httpURLConnection, byte[] bArr, int i, int i2) {
        return !b();
    }

    public final synchronized void b(boolean z) {
        this.f712a = z;
    }

    public final synchronized boolean b() {
        return this.c;
    }

    public final String c() {
        return this.d;
    }

    public void c(String str) {
        a(str, Constants.TEN_SECONDS_MILLIS);
    }
}
