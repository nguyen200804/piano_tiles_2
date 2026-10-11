package com.mnt.impl.i;

import android.content.Context;
import com.mnt.impl.b.k;
import com.mnt.impl.e;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private String f4057a;

    /* renamed from: b, reason: collision with root package name */
    private Context f4058b;

    static {
        String str = e.cW;
    }

    private b(Context context, String str) {
        this.f4057a = str;
        this.f4058b = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (int i = 0; i < 3 && !a(); i++) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean a() {
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        HttpURLConnection httpURLConnection2;
        InputStream inputStream2;
        HttpURLConnection httpURLConnection3 = null;
        Object[] objArr = 0;
        try {
            httpURLConnection2 = (HttpURLConnection) new URL(this.f4057a).openConnection();
            try {
                try {
                    httpURLConnection2.setUseCaches(false);
                    httpURLConnection2.setConnectTimeout(60000);
                    httpURLConnection2.setReadTimeout(180000);
                    httpURLConnection2.setRequestMethod(e.cX);
                    httpURLConnection2.setRequestProperty(e.cY, k.j(this.f4058b));
                    inputStream2 = httpURLConnection2.getInputStream();
                    try {
                    } catch (Exception e) {
                        httpURLConnection3 = httpURLConnection2;
                        inputStream = inputStream2;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        if (httpURLConnection3 != null) {
                            httpURLConnection3.disconnect();
                        }
                        return false;
                    }
                } catch (Throwable th) {
                    httpURLConnection = httpURLConnection2;
                    th = th;
                    if (0 != 0) {
                        try {
                            (objArr == true ? 1 : 0).close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    if (httpURLConnection == null) {
                        throw th;
                    }
                    httpURLConnection.disconnect();
                    throw th;
                }
            } catch (Exception e4) {
                httpURLConnection3 = httpURLConnection2;
                inputStream = null;
            }
        } catch (Exception e5) {
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
        }
        if (httpURLConnection2.getResponseCode() == 200) {
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            return true;
        }
        if (inputStream2 != null) {
            try {
                inputStream2.close();
            } catch (IOException e7) {
                e7.printStackTrace();
            }
        }
        if (httpURLConnection2 != null) {
            httpURLConnection2.disconnect();
        }
        return false;
    }

    public static void a(Context context, String str) {
        com.mnt.impl.l.c.a(new b(context, str));
    }
}
