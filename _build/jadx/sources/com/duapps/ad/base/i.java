package com.duapps.ad.base;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import com.duapps.ad.entity.AdData;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashSet;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ParseExecutor.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    static final String f2038a = i.class.getSimpleName();

    /* renamed from: b, reason: collision with root package name */
    public static final String f2039b;
    private static i c;
    private static final ThreadFactory d;
    private final PriorityBlockingQueue<Runnable> e = new PriorityBlockingQueue<>(20);
    private HashSet<String> f = new HashSet<>();
    private ThreadPoolExecutor g = new ThreadPoolExecutor(5, 5, 1, TimeUnit.MINUTES, this.e, d);
    private Context h;

    /* compiled from: ParseExecutor.java */
    public interface a {
        void a(AdData adData, int i, int i2, long j);

        void a(AdData adData, j jVar);

        void b(AdData adData, j jVar);
    }

    static {
        String property = System.getProperty("http.agent");
        if (TextUtils.isEmpty(property)) {
            f2039b = "dianxinosdxbs/3.2 (Linux; Android; Tapas OTA) Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.18) Gecko/20110628 Ubuntu/10.04 (lucid) Firefox/3.6.18";
        } else {
            f2039b = property;
        }
        d = new ThreadFactory() { // from class: com.duapps.ad.base.i.1

            /* renamed from: a, reason: collision with root package name */
            private final AtomicInteger f2040a = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "parse #" + this.f2040a.getAndIncrement());
            }
        };
    }

    public static i a(Context context) {
        synchronized (i.class) {
            if (c == null) {
                c = new i(context.getApplicationContext());
            }
        }
        return c;
    }

    private i(Context context) {
        this.h = context;
    }

    public boolean a(AdData adData, String str, a aVar) {
        boolean z = false;
        if (adData != null && !TextUtils.isEmpty(str) && !com.duapps.ad.stats.e.b(adData.i)) {
            synchronized (this.f) {
                if (this.f.contains(str)) {
                    h.c(f2038a, "Task already Running.");
                } else {
                    b bVar = new b(adData, str, aVar);
                    if (this.e.contains(bVar)) {
                        h.c(f2038a, "Task already in Queue");
                    } else {
                        this.g.execute(bVar);
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public boolean a(AdData adData, String str) {
        if (!this.f.contains(str)) {
            return false;
        }
        h.c(f2038a, "task:" + str + " already Running.");
        return true;
    }

    /* compiled from: ParseExecutor.java */
    private class b implements Comparable<b>, Runnable {

        /* renamed from: b, reason: collision with root package name */
        private AdData f2042b;
        private long c;
        private String d;
        private a e;

        public b(AdData adData, String str, a aVar) {
            this.f2042b = adData;
            this.d = str;
            this.e = aVar;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            return bVar.f2042b.A - this.f2042b.A;
        }

        @Override // java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            synchronized (i.this.f) {
                i.this.f.add(this.d);
            }
            a(this.f2042b);
            synchronized (i.this.f) {
                i.this.f.remove(this.d);
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            String str = this.d;
            String str2 = ((b) obj).d;
            if (str != null || str2 == null) {
                return str.equals(str2);
            }
            return false;
        }

        private void a(AdData adData) {
            int i = 0;
            HttpURLConnection httpURLConnection = null;
            try {
                try {
                    String str = adData.i;
                    this.c = SystemClock.elapsedRealtime();
                    while (true) {
                        if (str == null || i >= 10) {
                            break;
                        }
                        i++;
                        HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
                        try {
                            httpURLConnection2.setInstanceFollowRedirects(false);
                            httpURLConnection2.setRequestProperty("User-Agent", i.f2039b);
                            httpURLConnection2.setRequestProperty("Pragma", "no-cache");
                            httpURLConnection2.setRequestProperty("Accept-Encoding", "gzip,deflate");
                            httpURLConnection2.setConnectTimeout(30000);
                            int responseCode = httpURLConnection2.getResponseCode();
                            if (responseCode == 302 || responseCode == 301 || responseCode == 307 || responseCode == 303) {
                                str = httpURLConnection2.getHeaderField("Location");
                                if (com.duapps.ad.stats.e.b(str)) {
                                    if (h.a()) {
                                        h.c(i.f2038a, "DONE [TCTP] url = " + str);
                                    }
                                    a(adData, 1, str, i, SystemClock.elapsedRealtime() - this.c);
                                    httpURLConnection2.disconnect();
                                } else {
                                    if (h.a()) {
                                        h.c(i.f2038a, "Middle LOC = " + str);
                                    }
                                    httpURLConnection2.disconnect();
                                }
                            } else {
                                if (h.a()) {
                                    h.c(i.f2038a, "DONE [TCTB] = " + str);
                                }
                                a(adData, 2, str, i, SystemClock.elapsedRealtime() - this.c);
                                httpURLConnection2.disconnect();
                            }
                        } catch (Exception e) {
                            httpURLConnection = httpURLConnection2;
                            e = e;
                            if (h.a()) {
                                h.c(i.f2038a, "DONE [TCTB] = EXCEPTION; " + e.getMessage());
                            }
                            a(adData, 3, null, i, SystemClock.elapsedRealtime() - this.c);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                                return;
                            }
                            return;
                        } catch (Throwable th) {
                            httpURLConnection = httpURLConnection2;
                            th = th;
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            throw th;
                        }
                    }
                    if (0 != 0) {
                        httpURLConnection.disconnect();
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e2) {
                e = e2;
            }
        }

        private void a(AdData adData, int i, String str, int i2, long j) {
            j jVar = new j();
            jVar.f2043a = adData.i;
            jVar.d = str;
            jVar.f2044b = adData.d;
            jVar.c = i;
            jVar.e = System.currentTimeMillis();
            if (this.e != null) {
                this.e.a(adData, i, i2, j);
                this.e.a(adData, jVar);
                this.e.b(adData, jVar);
            }
        }
    }
}
