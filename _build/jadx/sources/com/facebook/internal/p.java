package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import com.facebook.internal.k;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

/* compiled from: ImageResponseCache.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class p {

    /* renamed from: a, reason: collision with root package name */
    static final String f3242a = p.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    private static volatile k f3243b;

    p() {
    }

    static synchronized k a(Context context) throws IOException {
        k kVar;
        synchronized (p.class) {
            if (f3243b == null) {
                f3243b = new k(f3242a, new k.d());
            }
            kVar = f3243b;
        }
        return kVar;
    }

    static InputStream a(Uri uri, Context context) {
        if (uri == null || !a(uri)) {
            return null;
        }
        try {
            return a(context).a(uri.toString());
        } catch (IOException e) {
            s.a(com.facebook.u.CACHE, 5, f3242a, e.toString());
            return null;
        }
    }

    static InputStream a(Context context, HttpURLConnection httpURLConnection) throws IOException {
        if (httpURLConnection.getResponseCode() != 200) {
            return null;
        }
        Uri parse = Uri.parse(httpURLConnection.getURL().toString());
        InputStream inputStream = httpURLConnection.getInputStream();
        try {
            if (a(parse)) {
                return a(context).a(parse.toString(), new a(inputStream, httpURLConnection));
            }
            return inputStream;
        } catch (IOException e) {
            return inputStream;
        }
    }

    private static boolean a(Uri uri) {
        if (uri != null) {
            String host = uri.getHost();
            if (host.endsWith("fbcdn.net")) {
                return true;
            }
            if (host.startsWith("fbcdn") && host.endsWith("akamaihd.net")) {
                return true;
            }
        }
        return false;
    }

    /* compiled from: ImageResponseCache.java */
    private static class a extends BufferedInputStream {

        /* renamed from: a, reason: collision with root package name */
        HttpURLConnection f3244a;

        a(InputStream inputStream, HttpURLConnection httpURLConnection) {
            super(inputStream, 8192);
            this.f3244a = httpURLConnection;
        }

        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            aa.a(this.f3244a);
        }
    }
}
