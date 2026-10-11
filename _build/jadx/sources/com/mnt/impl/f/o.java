package com.mnt.impl.f;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    private static ArrayBlockingQueue<a> f4026a;

    /* renamed from: b, reason: collision with root package name */
    private static c f4027b;
    private static Handler c;
    private static boolean d;

    static {
        String str = com.mnt.impl.e.gs;
        f4026a = new ArrayBlockingQueue<>(50);
        c = new Handler(Looper.getMainLooper());
        d = false;
    }

    private static synchronized void a(Context context) {
        synchronized (o.class) {
            if (context != null) {
                if (!d) {
                    Context applicationContext = context.getApplicationContext();
                    if (f4027b == null) {
                        c cVar = new c(f4026a, applicationContext);
                        f4027b = cVar;
                        new Thread(cVar).start();
                    }
                    d = true;
                }
            }
        }
    }

    static class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        Context f4032a;

        /* renamed from: b, reason: collision with root package name */
        WebView f4033b;
        private BlockingQueue<a> c;
        private boolean d = true;

        static /* synthetic */ boolean a(c cVar) {
            cVar.d = true;
            return true;
        }

        public c(BlockingQueue<a> blockingQueue, Context context) {
            this.c = blockingQueue;
            this.f4032a = context;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(7:2|(5:4|5|6|8|9)|11|12|14|(3:18|19|20)|9) */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                r3 = this;
                r0 = 10
                android.os.Process.setThreadPriority(r0)
            L5:
                boolean r0 = r3.d
                if (r0 != 0) goto L10
                r0 = 200(0xc8, double:9.9E-322)
                java.lang.Thread.sleep(r0)     // Catch: java.lang.Exception -> Lf
                goto L5
            Lf:
                r0 = move-exception
            L10:
                java.util.concurrent.BlockingQueue<com.mnt.impl.f.o$a> r0 = r3.c     // Catch: java.lang.InterruptedException -> L2c
                java.lang.Object r0 = r0.take()     // Catch: java.lang.InterruptedException -> L2c
                com.mnt.impl.f.o$a r0 = (com.mnt.impl.f.o.a) r0     // Catch: java.lang.InterruptedException -> L2c
                if (r0 == 0) goto L5
                if (r0 == 0) goto L5
                r1 = 0
                r3.d = r1     // Catch: java.lang.InterruptedException -> L2c
                android.os.Handler r1 = com.mnt.impl.f.o.a()     // Catch: java.lang.InterruptedException -> L2c
                com.mnt.impl.f.q r2 = new com.mnt.impl.f.q     // Catch: java.lang.InterruptedException -> L2c
                r2.<init>(r3, r0)     // Catch: java.lang.InterruptedException -> L2c
                r1.post(r2)     // Catch: java.lang.InterruptedException -> L2c
                goto L5
            L2c:
                r0 = move-exception
                goto L5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mnt.impl.f.o.c.run():void");
        }
    }

    static class b extends WebViewClient {

        /* renamed from: a, reason: collision with root package name */
        private WebView f4030a;

        /* renamed from: b, reason: collision with root package name */
        private a.InterfaceC0208a f4031b;
        private a c;
        private String d = null;
        private int e = 0;
        private boolean f = false;
        private Runnable g = new p(this);

        interface a {
            void a();
        }

        public b(a.InterfaceC0208a interfaceC0208a, a aVar) {
            this.f4031b = interfaceC0208a;
            this.c = aVar;
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            this.f4030a = webView;
            if (TextUtils.isEmpty(this.d)) {
                this.d = str;
            }
            this.e++;
            if (this.e <= 30) {
                o.c.removeCallbacks(this.g);
                o.c.postDelayed(this.g, 5000L);
            } else {
                webView.stopLoading();
                o.c.removeCallbacks(this.g);
                String str2 = com.mnt.impl.e.gy;
                a();
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            boolean z = false;
            if (str == null) {
                o.c.removeCallbacks(this.g);
                webView.stopLoading();
                String str2 = com.mnt.impl.e.gz;
                a();
            } else {
                if (str != null && str.trim().length() != 0 && (str.startsWith(com.mnt.impl.e.gB) || str.startsWith(com.mnt.impl.e.gC) || str.startsWith(com.mnt.impl.e.gD) || str.startsWith(com.mnt.impl.e.gE) || str.startsWith(com.mnt.impl.e.gF))) {
                    z = true;
                }
                if (z) {
                    o.c.removeCallbacks(this.g);
                    webView.stopLoading();
                    if (!this.f) {
                        this.f = true;
                        if (this.f4031b != null) {
                            this.f4031b.a(str);
                        }
                        b();
                    }
                } else {
                    webView.loadUrl(str);
                    o.c.removeCallbacks(this.g);
                    o.c.postDelayed(this.g, 5000L);
                }
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            webView.stopLoading();
            new StringBuilder().append(com.mnt.impl.e.gA).append(str);
            a();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            if (!this.f) {
                this.f = true;
                if (this.f4031b != null) {
                    this.f4031b.d();
                }
                b();
            }
        }

        private void b() {
            if (this.c != null) {
                this.c.a();
            }
        }
    }

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        String f4028a;

        /* renamed from: b, reason: collision with root package name */
        InterfaceC0208a f4029b;

        /* renamed from: com.mnt.impl.f.o$a$a, reason: collision with other inner class name */
        public interface InterfaceC0208a {
            void a(String str);

            void d();
        }

        public a(String str, InterfaceC0208a interfaceC0208a) {
            this.f4028a = str;
            this.f4029b = interfaceC0208a;
        }
    }

    public static void a(Context context, a aVar) {
        if (!d) {
            a(context);
        }
        try {
            f4026a.add(aVar);
        } catch (Exception e) {
        }
    }
}
