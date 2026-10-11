package com.duapps.ad.inmobi;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.duapps.ad.base.h;
import com.duapps.ad.inmobi.IMData;
import com.facebook.ads.AudienceNetworkActivity;
import org.apache.commons.io.IOUtils;

/* compiled from: InMobiDataExecutor.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public IMData f2167a;

    /* renamed from: b, reason: collision with root package name */
    public IMData.a f2168b;
    public f c;
    private Context d;
    private a e;
    private String g;
    private volatile boolean f = false;
    private Handler h = new Handler(Looper.getMainLooper()) { // from class: com.duapps.ad.inmobi.b.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 100) {
                b.this.c();
                h.c("InMobiDataExecutor", "loading js:" + b.this.g);
                if (b.this.c != null) {
                    b.this.c.f2180a.loadData(b.this.g, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, "UTF-8");
                }
            }
        }
    };

    /* compiled from: InMobiDataExecutor.java */
    public interface a {
        void a(b bVar);
    }

    public b(Context context, f fVar, IMData iMData, IMData.a aVar, a aVar2) {
        this.d = context;
        this.c = fVar;
        this.f2167a = iMData;
        this.f2168b = aVar;
        if (fVar != null) {
            fVar.c = false;
        }
        this.e = aVar2;
    }

    private void a(String str) {
        if (!com.duapps.ad.c.b.c.a(this.d)) {
            this.f = false;
            if (this.c != null) {
                this.c.c = false;
                return;
            }
            return;
        }
        this.f = true;
        this.g = str;
        this.h.sendEmptyMessage(100);
    }

    private void a() {
        a(this.f2167a.a(this.f2168b));
    }

    private void b() {
        a(this.f2167a.b());
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z = true;
        h.c("InMobiDataExecutor", " started");
        if (!this.f) {
            this.f = true;
            if (this.f2168b != IMData.a.Impression || this.f2167a.w) {
                if (this.f2168b == IMData.a.Click && !this.f2167a.x) {
                    if (!this.f2167a.w) {
                        b();
                    }
                }
                z = false;
            }
            if (z) {
                a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.c == null) {
            this.f = false;
        } else {
            this.c.f2180a.setWebViewClient(new WebViewClient() { // from class: com.duapps.ad.inmobi.b.2
                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    b.this.f = false;
                    if (b.this.c != null) {
                        b.this.c.c = false;
                    }
                    b.this.d();
                    h.c("InMobiDataExecutor", "page finished:" + b.this.f2167a.u);
                    h.c("InMobiDataExecutor", "AdOperationType==" + (b.this.f2168b != IMData.a.Impression ? 1 : 0));
                    h.c("InMobiDataExecutor", " completed");
                }

                @Override // android.webkit.WebViewClient
                public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                    h.c("InMobiDataExecutor", "page started:");
                }

                @Override // android.webkit.WebViewClient
                public void onLoadResource(WebView webView, String str) {
                    h.c("InMobiDataExecutor", "resource load:");
                }

                @Override // android.webkit.WebViewClient
                public void onReceivedError(WebView webView, int i, String str, String str2) {
                    h.c("InMobiDataExecutor", "received error:" + i + "\tdesc:" + str + IOUtils.LINE_SEPARATOR_UNIX + str2);
                    b.this.f = false;
                    if (b.this.c != null) {
                        b.this.c.c = false;
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.e != null) {
            this.e.a(this);
        }
    }
}
