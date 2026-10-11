package com.duapps.ad.stats;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.common.Constants;
import java.util.Iterator;
import java.util.List;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.DefaultHttpRequestRetryHandler;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;

/* compiled from: ToolClickHandlerBase.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class e implements Handler.Callback {
    private static DefaultHttpClient c;

    /* renamed from: a, reason: collision with root package name */
    protected Handler f2267a;

    /* renamed from: b, reason: collision with root package name */
    protected volatile boolean f2268b;
    private Context d;
    private Toast e;
    private boolean f;
    private com.duapps.ad.e g;

    public e(Context context) {
        this.d = context;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            this.f2267a = new Handler(this);
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        return false;
    }

    public void a(com.duapps.ad.e eVar) {
        this.g = eVar;
    }

    protected void a() {
        com.duapps.ad.e eVar = this.g;
        if (eVar != null) {
            eVar.a();
        }
    }

    protected void b() {
        com.duapps.ad.e eVar = this.g;
        if (eVar != null) {
            eVar.b();
        }
    }

    protected void a(final String str) {
        this.f2267a.post(new Runnable() { // from class: com.duapps.ad.stats.e.1
            @Override // java.lang.Runnable
            public void run() {
                if (e.this.e == null) {
                    e.this.e = Toast.makeText(e.this.d, str, 0);
                }
                e.this.e.setText(str);
                e.this.e.show();
            }
        });
    }

    protected void b(f fVar) {
        if (com.duapps.ad.base.h.a()) {
            com.duapps.ad.base.h.c("BaseClickHandler", "Goto installed App: " + fVar.a());
        }
        h.b(this.d, fVar);
        com.duapps.ad.c.b.c.b(this.d, fVar.a());
    }

    protected void c(f fVar) {
        a(false);
        if (com.duapps.ad.base.h.a()) {
            com.duapps.ad.base.h.c("BaseClickHandler", "No network.");
        }
        c();
    }

    public void c() {
        a("Network Error.");
        com.duapps.ad.base.h.c("BaseClickHandler", "Please check you network and try again.");
    }

    protected void f(f fVar, String str) {
        if (com.duapps.ad.base.h.a()) {
            com.duapps.ad.base.h.c("BaseClickHandler", "An apk link.");
        }
        g(fVar, str);
    }

    protected void g(f fVar, String str) {
        String str2;
        if (this.f2268b) {
            com.duapps.ad.base.h.c("BaseClickHandler", "Has already report");
            return;
        }
        this.f2268b = true;
        if (str == null) {
            if (com.duapps.ad.base.h.a()) {
                com.duapps.ad.base.h.c("BaseClickHandler", "startBrowser: url is null");
            }
            h.c(this.d, fVar);
            com.duapps.ad.base.h.c("BaseClickHandler", "Please check you network and try again.");
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.addFlags(268435456);
        PackageManager packageManager = this.d.getPackageManager();
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
        if (resolveActivity == null) {
            if (com.duapps.ad.base.h.a()) {
                com.duapps.ad.base.h.c("BaseClickHandler", "Goto browser failed.");
            }
            a("No browser or Google Play installed");
            com.duapps.ad.base.h.c("BaseClickHandler", "No browser or Google Play installed");
            h.c(this.d, fVar);
            return;
        }
        com.duapps.ad.base.h.c("BaseClickHandler", "defaultInfo.activityInfo.packageName : " + resolveActivity.activityInfo.packageName);
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
        Iterator<String> it = com.duapps.ad.c.b.c.b(this.d).iterator();
        loop0: while (true) {
            if (!it.hasNext()) {
                str2 = null;
                break;
            }
            str2 = it.next();
            for (ResolveInfo resolveInfo : queryIntentActivities) {
                com.duapps.ad.base.h.c("BaseClickHandler", "for loop browser : " + str2 + ", actInfo.packageName : " + resolveInfo.activityInfo.packageName);
                if (str2.equals(resolveInfo.activityInfo.packageName)) {
                    break loop0;
                }
            }
        }
        if (str2 == null) {
            str2 = queryIntentActivities.get(0).activityInfo.packageName;
        }
        intent.setPackage(str2);
        if (com.duapps.ad.base.h.a()) {
            com.duapps.ad.base.h.c("BaseClickHandler", "Goto browser");
        }
        this.d.startActivity(intent);
        h.d(this.d, fVar);
        f();
    }

    private Uri a(f fVar, String str) {
        String a2 = fVar.a();
        Uri parse = Uri.parse(str);
        String queryParameter = parse.getQueryParameter(FacebookAdapter.KEY_ID);
        int indexOf = str.indexOf("id=");
        if (!TextUtils.isEmpty(queryParameter) || indexOf > 0) {
            if (!queryParameter.equals(a2)) {
                parse = Uri.parse(str.replaceAll("(id=[^&]*)", "id=" + a2));
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.c("BaseClickHandler", "Url contains & :" + (indexOf > 0) + ", direct url:" + parse.toString());
                    return parse;
                }
            }
        } else {
            StringBuilder sb = new StringBuilder(str);
            if (parse.getQueryParameterNames().size() <= 0) {
                sb.append("?").append("id=").append(a2);
            } else {
                if (str.lastIndexOf("?") > 0) {
                    sb.append("id=").append(a2);
                } else {
                    sb.append(str.lastIndexOf("&") > 0 ? "id=" : "&id=").append(a2);
                }
            }
            parse = Uri.parse(sb.toString());
            if (com.duapps.ad.base.h.a()) {
                com.duapps.ad.base.h.c("BaseClickHandler", "Url contains & :" + (indexOf > 0) + ", direct url:" + sb.toString());
            }
        }
        return parse;
    }

    protected void h(f fVar, String str) {
        if (this.f2268b) {
            com.duapps.ad.base.h.c("BaseClickHandler", "Has already report");
            return;
        }
        this.f2268b = true;
        Uri parse = Uri.parse(str);
        try {
            parse = a(fVar, str);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append(e.getMessage());
            StackTraceElement[] stackTrace = e.getStackTrace();
            for (StackTraceElement stackTraceElement : stackTrace) {
                sb.append(",").append(stackTraceElement);
            }
            h.a(this.d, fVar, sb.toString());
        }
        c.a(this.d, fVar, str, parse.toString());
        Intent intent = new Intent("android.intent.action.VIEW", parse);
        intent.setFlags(268435456);
        intent.setPackage("com.android.vending");
        try {
            if (com.duapps.ad.base.h.a()) {
                com.duapps.ad.base.h.c("BaseClickHandler", "Goto Play");
            }
            this.d.startActivity(intent);
            h.e(this.d, fVar);
        } catch (Exception e2) {
            if (com.duapps.ad.base.h.a()) {
                com.duapps.ad.base.h.b("BaseClickHandler", "Goto Play failed:", e2);
            }
            this.f2268b = false;
            g(fVar, str);
        }
    }

    public static boolean b(String str) {
        if (str == null || str.trim().length() == 0) {
            return false;
        }
        return str.startsWith("http://market.android.com") || str.startsWith("https://market.android.com") || str.startsWith("https://play.google.com") || str.startsWith("http://play.google.com") || str.startsWith("market://");
    }

    static synchronized DefaultHttpClient d() {
        DefaultHttpClient defaultHttpClient;
        synchronized (e.class) {
            if (c != null) {
                defaultHttpClient = c;
            } else {
                SchemeRegistry schemeRegistry = new SchemeRegistry();
                schemeRegistry.register(new Scheme(Constants.HTTP, PlainSocketFactory.getSocketFactory(), 80));
                schemeRegistry.register(new Scheme(Constants.HTTPS, SSLSocketFactory.getSocketFactory(), 443));
                BasicHttpParams basicHttpParams = new BasicHttpParams();
                defaultHttpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
                HttpConnectionParams.setConnectionTimeout(defaultHttpClient.getParams(), Constants.TEN_SECONDS_MILLIS);
                HttpConnectionParams.setSoTimeout(defaultHttpClient.getParams(), 4000);
                defaultHttpClient.getParams().setIntParameter("http.protocol.max-redirects", 10);
                HttpClientParams.setCookiePolicy(defaultHttpClient.getParams(), "compatibility");
                HttpProtocolParams.setUserAgent(defaultHttpClient.getParams(), com.duapps.ad.base.i.f2039b);
                defaultHttpClient.setHttpRequestRetryHandler(new DefaultHttpRequestRetryHandler(3, true));
                c = defaultHttpClient;
            }
        }
        return defaultHttpClient;
    }

    public synchronized boolean e() {
        return this.f;
    }

    public synchronized void a(boolean z) {
        this.f = z;
    }

    public synchronized void f() {
        this.f = false;
    }
}
