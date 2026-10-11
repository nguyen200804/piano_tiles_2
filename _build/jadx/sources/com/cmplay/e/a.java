package com.cmplay.e;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import com.mopub.common.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: MessageBoxImageLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static a f1326a;

    /* renamed from: b, reason: collision with root package name */
    private ExecutorService f1327b;
    private Handler c;

    /* compiled from: MessageBoxImageLoader.java */
    /* renamed from: com.cmplay.e.a$a, reason: collision with other inner class name */
    public interface InterfaceC0041a {
        void a(Bitmap bitmap);
    }

    public static a a() {
        if (f1326a == null) {
            synchronized (a.class) {
                if (f1326a == null) {
                    f1326a = new a();
                }
            }
        }
        return f1326a;
    }

    public a() {
        this(1);
    }

    public a(int i) {
        this(i, new Handler());
    }

    public a(int i, Handler handler) {
        this.f1327b = Executors.newFixedThreadPool(i);
        this.c = handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap a(String str) {
        InputStream inputStream;
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        InputStream inputStream2 = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setConnectTimeout(Constants.TEN_SECONDS_MILLIS);
                httpURLConnection.setReadTimeout(Constants.TEN_SECONDS_MILLIS);
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setRequestMethod("GET");
                if (httpURLConnection.getResponseCode() != 200) {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    if (0 != 0) {
                        try {
                            inputStream2.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    return null;
                }
                inputStream = httpURLConnection.getInputStream();
                try {
                    Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    return decodeStream;
                } catch (Exception e3) {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    httpURLConnection2 = httpURLConnection;
                    th = th;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e6) {
                inputStream = null;
            } catch (Throwable th2) {
                inputStream = null;
                httpURLConnection2 = httpURLConnection;
                th = th2;
            }
        } catch (Exception e7) {
            httpURLConnection = null;
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    public void a(String str, InterfaceC0041a interfaceC0041a) {
        a(str, interfaceC0041a, this.c);
    }

    public void a(final String str, final InterfaceC0041a interfaceC0041a, final Handler handler) {
        this.f1327b.execute(new Runnable() { // from class: com.cmplay.e.a.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    final Bitmap a2 = a.this.a(str);
                    handler.post(new Runnable() { // from class: com.cmplay.e.a.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            interfaceC0041a.a(a2);
                        }
                    });
                } catch (Exception e) {
                    handler.post(new Runnable() { // from class: com.cmplay.e.a.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            interfaceC0041a.a(null);
                        }
                    });
                    e.printStackTrace();
                }
            }
        });
    }
}
