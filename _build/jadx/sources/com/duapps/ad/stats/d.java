package com.duapps.ad.stats;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.duapps.ad.R;
import com.duapps.ad.base.l;
import com.duapps.ad.base.m;
import com.duapps.ad.base.t;
import com.duapps.ad.entity.AdData;
import com.mopub.common.Constants;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.protocol.HttpContext;
import org.json.JSONArray;

/* compiled from: ToolClickHandler.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d extends e {
    private String c;
    private String d;
    private String e;
    private String f;
    private boolean g;
    private boolean h;
    private List<String> i;
    private Context j;
    private WebView k;
    private a l;

    /* compiled from: ToolClickHandler.java */
    protected interface a {
    }

    /* compiled from: ToolClickHandler.java */
    class b implements a, RedirectHandler {

        /* renamed from: b, reason: collision with root package name */
        private f f2262b;
        private volatile boolean c = false;

        public b(f fVar) {
            this.f2262b = fVar;
        }

        @Override // org.apache.http.client.RedirectHandler
        public boolean isRedirectRequested(HttpResponse httpResponse, HttpContext httpContext) {
            if (this.c) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.c("ToolClickHandler", "[Http]Action canceled.");
                }
                h.g(d.this.j, this.f2262b);
                d.this.f();
            } else {
                int p = this.f2262b.p();
                int statusCode = httpResponse.getStatusLine().getStatusCode();
                com.duapps.ad.base.h.c("ToolClickHandler", "statusCode " + statusCode);
                if (statusCode == 303 || statusCode == 302 || statusCode == 301 || statusCode == 307) {
                    String value = httpResponse.getHeaders("Location")[0].getValue();
                    if (value == null) {
                        if (p != 0) {
                            h.a(d.this.j, this.f2262b, p > 0 ? 2L : 1L, statusCode);
                        }
                        if (com.duapps.ad.base.h.a()) {
                            com.duapps.ad.base.h.c("ToolClickHandler", "[Http] null URL.");
                        }
                        if (!this.f2262b.n()) {
                            d.this.b();
                            d.this.i(this.f2262b, this.f2262b.i());
                        }
                        d.this.f();
                    } else if (e.b(value)) {
                        if (p != 0) {
                            h.a(d.this.j, this.f2262b, p <= 0 ? 1L : 2L, statusCode, "tctp");
                        }
                        if (com.duapps.ad.base.h.a()) {
                            com.duapps.ad.base.h.c("ToolClickHandler", "[Http] Market URL: " + value);
                        }
                        d.this.a(this.f2262b, value);
                        this.f2262b.b(true);
                        if (!this.f2262b.n()) {
                            d.this.b();
                            if (!TextUtils.isEmpty(d.this.e)) {
                                h.a(d.this.j, this.f2262b, d.this.d, d.this.e, d.this.f);
                                h.a(d.this.j, this.f2262b, d.this.h ? "1" : "0", d.this.e);
                            }
                            d.this.h(this.f2262b, value);
                        }
                        d.this.f();
                    } else {
                        d.this.c(this.f2262b, value);
                    }
                } else {
                    if (p != 0) {
                        h.a(d.this.j, this.f2262b, p <= 0 ? 1L : 2L, statusCode);
                    }
                    if (com.duapps.ad.base.h.a()) {
                        com.duapps.ad.base.h.c("ToolClickHandler", "[Http] non-Market URL: " + this.f2262b.i());
                    }
                    if (!this.f2262b.n()) {
                        d.this.b();
                        if (!TextUtils.isEmpty(d.this.e)) {
                            h.a(d.this.j, this.f2262b, d.this.d, d.this.e, d.this.f);
                            h.a(d.this.j, this.f2262b, d.this.h ? "1" : "0", d.this.e);
                        }
                        d.this.g(this.f2262b, this.f2262b.i());
                    }
                    d.this.f();
                }
            }
            return false;
        }

        @Override // org.apache.http.client.RedirectHandler
        public URI getLocationURI(HttpResponse httpResponse, HttpContext httpContext) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(f fVar, String str) {
        if (!this.f2268b) {
            AdData f = fVar.f();
            String str2 = f != null ? f.d : null;
            if (TextUtils.isEmpty(str2)) {
                com.duapps.ad.base.h.c("ToolClickHandler", "browserUrl：" + str + " no pkgname");
                if (!TextUtils.isEmpty(this.e)) {
                    h.a(this.j, fVar, this.d, this.e, this.f);
                    h.a(this.j, fVar, this.h ? "1" : "0", this.e);
                }
                g(fVar, str);
                return;
            }
            String str3 = "https://play.google.com/store/apps/details?id=" + str2;
            com.duapps.ad.base.h.c("ToolClickHandler", fVar.f().c + " start google play via mock url -->" + str3);
            if (com.duapps.ad.c.b.c.a(this.j, "com.android.vending")) {
                h(fVar, str3);
            } else {
                g(fVar, str);
            }
            if (!TextUtils.isEmpty(this.e)) {
                h.a(this.j, fVar, this.d, this.e, this.f);
                h.a(this.j, fVar, this.h ? "1" : "0", this.e);
            }
        }
    }

    void a(f fVar, String str) {
        if (fVar.d() > 0) {
            com.duapps.ad.base.j jVar = new com.duapps.ad.base.j();
            jVar.f2043a = fVar.i();
            jVar.d = str;
            jVar.f2044b = fVar.a();
            jVar.c = 1;
            jVar.e = System.currentTimeMillis();
            i.a(this.j).a(jVar);
        }
    }

    /* compiled from: ToolClickHandler.java */
    class c extends WebViewClient implements a {

        /* renamed from: a, reason: collision with root package name */
        f f2263a;

        /* renamed from: b, reason: collision with root package name */
        WebView f2264b;
        private Runnable d = new Runnable() { // from class: com.duapps.ad.stats.d.c.1
            @Override // java.lang.Runnable
            public void run() {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] timeout TIMEOUT_FINISH.");
                }
                if (!c.this.f && !c.this.h) {
                    c.this.f = true;
                    if (c.this.g) {
                        if (com.duapps.ad.base.h.a()) {
                            com.duapps.ad.base.h.c("ToolClickHandler", "[WebView]FinishRunnable canceled.");
                        }
                        h.g(d.this.j, c.this.f2263a);
                        d.this.f();
                        return;
                    }
                    if (c.this.f2264b != null) {
                        c.this.f2264b.stopLoading();
                    }
                    d.this.b();
                    d.this.i(c.this.f2263a, c.this.f2263a.i());
                    d.this.f();
                }
            }
        };
        private Runnable e = new Runnable() { // from class: com.duapps.ad.stats.d.c.2
            @Override // java.lang.Runnable
            public void run() {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] Timeout TIMEOUT_START.");
                }
                if (!c.this.f && !c.this.h) {
                    c.this.f = true;
                    if (c.this.g) {
                        if (com.duapps.ad.base.h.a()) {
                            com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] StartRunnable canceled.");
                        }
                        h.g(d.this.j, c.this.f2263a);
                        d.this.f();
                        return;
                    }
                    if (c.this.f2264b != null) {
                        c.this.f2264b.stopLoading();
                    }
                    d.this.b();
                    com.duapps.ad.base.h.c("ToolClickHandler", "timeout_上报_exg:" + d.this.e);
                    d.this.i(c.this.f2263a, c.this.f2263a.i());
                    d.this.f();
                }
            }
        };
        private volatile boolean f = false;
        private volatile boolean g = false;
        private volatile boolean h = false;

        public c(f fVar) {
            this.f2263a = fVar;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            a("Error: " + i);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            if (com.duapps.ad.base.h.a()) {
                com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] onPageStarted.");
            }
            this.f2264b = webView;
            this.f = false;
            this.h = false;
            d.this.f2267a.removeCallbacks(this.e);
            d.this.f2267a.removeCallbacks(this.d);
            if (com.duapps.ad.base.h.a()) {
                com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] start TIMEOUT_START: " + str);
            }
            d.this.f2267a.postDelayed(this.e, 4000L);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            com.duapps.ad.base.h.c("ToolClickHandler", "url:" + str);
            if (com.duapps.ad.base.h.a()) {
                com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] shouldOverrideUrlLoading.");
            }
            String a2 = d.this.a(str, this.f2263a);
            com.duapps.ad.base.h.c("ToolClickHandler", "needUrl:" + a2);
            d.this.f2267a.removeCallbacks(this.e);
            d.this.f2267a.removeCallbacks(this.d);
            if (this.g || this.h || this.f) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.c("ToolClickHandler", "[WebView]Action canceled.");
                }
                this.h = true;
                d.this.f();
                return true;
            }
            if (a2 == null) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] null URL.");
                }
                d.this.b();
                d.this.i(this.f2263a, this.f2263a.i());
                if (this.f2264b != null) {
                    this.f2264b.stopLoading();
                }
                d.this.f();
                this.h = true;
                return true;
            }
            if (e.b(a2)) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] Market URL: " + a2);
                }
                d.this.a(this.f2263a, a2);
                this.f2263a.b(true);
                d.this.b();
                com.duapps.ad.base.h.c("ToolClickHandler", "上报_mExgName:" + d.this.e);
                if (!TextUtils.isEmpty(d.this.e)) {
                    h.a(d.this.j, this.f2263a, d.this.d, d.this.e, d.this.f);
                    h.a(d.this.j, this.f2263a, d.this.h ? "1" : "0", d.this.e);
                }
                d.this.h(this.f2263a, a2);
                if (this.f2264b != null) {
                    this.f2264b.stopLoading();
                }
                d.this.f();
                this.h = true;
                return true;
            }
            if (com.duapps.ad.base.h.a()) {
                com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] Decode URL: " + a2);
            }
            if (!this.f) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] start TIMEOUT_START: " + a2);
                }
                d.this.f2267a.postDelayed(this.e, 4000L);
            }
            return false;
        }

        private void a(String str) {
            if (com.duapps.ad.base.h.a()) {
                com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] handleError");
            }
            d.this.f2267a.removeCallbacks(this.e);
            d.this.f2267a.removeCallbacks(this.d);
            if (this.g) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.c("ToolClickHandler", "[WebView]Action canceled.");
                }
                h.g(d.this.j, this.f2263a);
                d.this.f();
                return;
            }
            if (this.h) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] already consumed");
                    return;
                }
                return;
            }
            if (com.duapps.ad.base.h.a()) {
                com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] onReceivedError: " + str);
            }
            if (this.f2264b != null) {
                this.f2264b.stopLoading();
            }
            this.h = true;
            d.this.b();
            d.this.i(this.f2263a, this.f2263a.i());
            d.this.f();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (com.duapps.ad.base.h.a()) {
                com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] Page finished");
            }
            d.this.f2267a.removeCallbacks(this.e);
            d.this.f2267a.removeCallbacks(this.d);
            if (this.g) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.c("ToolClickHandler", "[WebView]Action canceled.");
                }
                h.g(d.this.j, this.f2263a);
                d.this.f();
                return;
            }
            if (this.h) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] already consumed");
                }
            } else if (!this.f) {
                if (com.duapps.ad.base.h.a()) {
                    com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] start TIMEOUT_FINISH: " + str);
                }
                d.this.f2267a.postDelayed(this.d, 2000L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, f fVar) {
        String e;
        if (fVar != null) {
            try {
                String str2 = fVar.f().v;
                if (TextUtils.isEmpty(str2)) {
                    String z = m.z(this.j);
                    if (!TextUtils.isEmpty(z)) {
                        e = com.duapps.ad.c.b.c.f(z);
                    } else {
                        return str;
                    }
                } else {
                    e = com.duapps.ad.c.b.c.e(str2);
                }
                str = a(str, e);
                return str;
            } catch (Exception e2) {
                com.duapps.ad.base.h.c("ToolClickHandler", "getExgUrl exception:" + e2.getMessage());
                return str;
            }
        }
        return str;
    }

    public String a(String str, String str2) {
        try {
            com.duapps.ad.base.h.c("ToolClickHandler", "decode:" + str2);
            JSONArray jSONArray = new JSONArray(str2);
            com.duapps.ad.base.h.c("ToolClickHandler", jSONArray.length() + "长度");
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < jSONArray.length()) {
                    com.duapps.ad.base.h.c("ToolClickHandler", "jsonArray.length():" + jSONArray.length() + ",i:" + i2);
                    String d = d(str, (String) jSONArray.get(i2));
                    if (!this.g) {
                        i = i2 + 1;
                    } else {
                        com.duapps.ad.base.h.c("ToolClickHandler", "jsonArray_url:" + d);
                        return d;
                    }
                } else {
                    return str;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            com.duapps.ad.base.h.d("ToolClickHandler", "解析失败:" + e.getMessage());
            return str;
        }
    }

    @TargetApi(11)
    private String d(String str, String str2) {
        String str3;
        String str4;
        String str5;
        String a2;
        try {
        } catch (Exception e) {
            e = e;
            str3 = str;
        }
        if (!TextUtils.isEmpty(str2) && str2.contains("@")) {
            String[] split = str2.split("@");
            String str6 = split[0];
            this.g = c(str6, str);
            com.duapps.ad.base.h.c("ToolClickHandler", "isMatchUrl:" + this.g);
            if (this.g) {
                if (this.i != null && this.i.size() > 0) {
                    this.i.clear();
                }
                this.e = str6;
                com.duapps.ad.base.h.c("ToolClickHandler", "exg_hostname:" + this.e);
                com.duapps.ad.base.h.c("ToolClickHandler", "split[0]:" + split[0]);
                com.duapps.ad.base.h.c("ToolClickHandler", "split[1]:" + split[1]);
                int i = 1;
                str3 = str;
                while (i < split.length) {
                    try {
                        String str7 = split[i];
                        com.duapps.ad.base.h.c("ToolClickHandler", "str:" + str7 + ",i:" + i + ",split.length:" + split.length);
                        if (str7.contains("=")) {
                            String[] split2 = str7.split("=");
                            String str8 = split2[0];
                            if (split2.length <= 1) {
                                str5 = "";
                            } else {
                                str5 = split2[1];
                            }
                            Uri parse = Uri.parse(str3);
                            String queryParameter = parse.getQueryParameter(str8);
                            Iterator<String> it = parse.getQueryParameterNames().iterator();
                            while (it.hasNext()) {
                                this.i.add(it.next());
                            }
                            com.duapps.ad.base.h.c("ToolClickHandler", "oldKeyValue:" + queryParameter);
                            String b2 = b(str8, str5);
                            com.duapps.ad.base.h.c("ToolClickHandler", "type:" + b2);
                            com.duapps.ad.base.h.c("ToolClickHandler", "isHasKey:" + a(str8, this.i));
                            if (!TextUtils.isEmpty(queryParameter) || a(str8, this.i)) {
                                a2 = a(str3, str8, b2);
                            } else {
                                a2 = b(str3, str8, b2);
                            }
                            str4 = c(a2, str8, b2);
                            try {
                                this.h = !str.equals(str4);
                                com.duapps.ad.base.h.c("ToolClickHandler", "isUrlModify:" + this.h);
                            } catch (Exception e2) {
                                str3 = str4;
                                e = e2;
                                com.duapps.ad.base.h.c("ToolClickHandler", "getGaidUrl exception:" + e.getMessage());
                                return str3;
                            }
                        } else {
                            str4 = str3;
                        }
                        i++;
                        str3 = str4;
                    } catch (Exception e3) {
                        e = e3;
                    }
                }
            } else {
                str3 = str;
            }
            return str3;
        }
        return str;
    }

    private boolean a(String str, List<String> list) {
        if (TextUtils.isEmpty(str) || list.size() <= 0) {
            return false;
        }
        for (String str2 : list) {
            if (str.equals(str2)) {
                com.duapps.ad.base.h.c("ToolClickHandler", "key:" + str + ",dataKey:" + str2);
                return true;
            }
        }
        return false;
    }

    private String b(String str, String str2, String str3) {
        String str4 = str + "&" + str2 + "=" + str3;
        this.h = true;
        com.duapps.ad.base.h.c("ToolClickHandler", "appendNewUrl:" + str4);
        return str4;
    }

    private String c(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str3) && "delete".equals(str3)) {
            String str4 = "&" + str2 + "=delete";
            if (str.contains(str4)) {
                String replace = str.replace(str4, "");
                com.duapps.ad.base.h.c("ToolClickHandler", "@null:" + replace);
                this.h = true;
                return replace;
            }
            return str;
        }
        return str;
    }

    public String b(String str, String str2) {
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            return "";
        }
        if (str2.equals("{gaid}")) {
            String str3 = this.c;
            this.f = str;
            this.d = "gaid";
            return str3;
        }
        if (str2.equals("{aid}")) {
            String c2 = com.duapps.ad.c.b.c.c(this.j);
            if (TextUtils.isEmpty(this.f)) {
                this.f = str;
                this.d = "anid";
                return c2;
            }
            return c2;
        }
        if (str2.equals("{gaid_md5}")) {
            String h = com.duapps.ad.c.b.c.h(this.c);
            this.f = str + "_md5";
            this.d = "gaid";
            return h;
        }
        if (str2.equals("{gaid_sha1}")) {
            String g = com.duapps.ad.c.b.c.g(this.c);
            this.d = "gaid";
            this.f = str + "_sha1";
            return g;
        }
        if (str2.equals("{aid_md5}")) {
            String h2 = com.duapps.ad.c.b.c.h(com.duapps.ad.c.b.c.c(this.j));
            if (TextUtils.isEmpty(this.f)) {
                this.f = str + "_md5";
                this.d = "anid";
                return h2;
            }
            return h2;
        }
        if (str2.equals("{aid_sha1}")) {
            String g2 = com.duapps.ad.c.b.c.g(com.duapps.ad.c.b.c.c(this.j));
            if (TextUtils.isEmpty(this.f)) {
                this.f = str + "_sha1";
                this.d = "anid";
                return g2;
            }
            return g2;
        }
        if (str2.equals("{null}")) {
            return "delete";
        }
        return str2;
    }

    public String a(String str, String str2, String str3) {
        int indexOf;
        if (!TextUtils.isEmpty(str) && ((!TextUtils.isEmpty(str3) || !TextUtils.isEmpty(str2)) && (indexOf = str.indexOf(str2 + "=")) != -1)) {
            StringBuilder sb = new StringBuilder();
            sb.append(str.substring(0, indexOf)).append(str2 + "=").append(str3);
            int indexOf2 = str.indexOf("&", indexOf);
            if (indexOf2 != -1) {
                sb.append(str.substring(indexOf2));
            }
            str = sb.toString();
            this.h = true;
        }
        com.duapps.ad.base.h.c("ToolClickHandler", "replaceGaidUrl:" + str);
        return str;
    }

    public static boolean c(String str, String str2) {
        return str2.matches(str);
    }

    public d(Context context) {
        super(context);
        this.c = "";
        this.d = "";
        this.e = "";
        this.f = "";
        this.h = false;
        this.i = new ArrayList();
        g();
        this.j = context;
    }

    private void g() {
    }

    public void a(f fVar) {
        if (!e()) {
            com.duapps.ad.base.h.c("ToolClickHandler", "exg点击了广告");
            this.h = false;
            this.f = "";
            this.d = "";
            this.e = "";
            t.a().a(new Runnable() { // from class: com.duapps.ad.stats.d.1
                @Override // java.lang.Runnable
                public void run() {
                    d.this.c = com.duapps.ad.base.f.a(d.this.j);
                }
            });
            Toast.makeText(this.j.getApplicationContext(), R.string.duapps_ad_offer_wall_footer_loading, 0).show();
            a(true);
            a(fVar, true);
        }
    }

    public void a(f fVar, boolean z) {
        this.f2268b = false;
        if (com.duapps.ad.c.b.c.a(this.j, fVar.a())) {
            b(fVar);
            f();
            return;
        }
        if (z) {
            h.a(this.j, fVar);
        }
        if (!com.duapps.ad.c.b.c.a(this.j)) {
            c(fVar);
            f();
            return;
        }
        if (fVar.g()) {
            f(fVar, fVar.i());
            return;
        }
        if (fVar.h()) {
            fVar.b(false);
            if (com.duapps.ad.base.h.a()) {
                com.duapps.ad.base.h.c("ToolClickHandler", "Clicked URL: " + fVar.i());
            }
            d(fVar);
            return;
        }
        if (com.duapps.ad.base.h.a()) {
            com.duapps.ad.base.h.c("ToolClickHandler", "Unknown Open type: " + fVar.c());
        }
    }

    private void d(f fVar) {
        boolean a2 = com.duapps.ad.c.b.c.a(this.j, "com.android.vending");
        if (com.duapps.ad.base.h.a()) {
            com.duapps.ad.base.h.c("ToolClickHandler", "Click with Play installed? " + a2);
        }
        if (a2) {
            String i = fVar.i();
            if (b(i)) {
                fVar.b(true);
                if (!TextUtils.isEmpty(this.e)) {
                    h.a(this.j, fVar, this.d, this.e, this.f);
                    h.a(this.j, fVar, this.h ? "1" : "0", this.e);
                }
                h(fVar, i);
                f();
                return;
            }
            if (fVar.d() > 0) {
                com.duapps.ad.base.j a3 = com.duapps.ad.base.k.a(this.j).a(i);
                fVar.a(a3);
                if (1 == a3.c) {
                    fVar.b(true);
                    if (!TextUtils.isEmpty(this.e)) {
                        h.a(this.j, fVar, this.d, this.e, this.f);
                        h.a(this.j, fVar, this.h ? "1" : "0", this.e);
                    }
                    h(fVar, a3.d);
                    f();
                    return;
                }
                if (a3.c == 2 || a3.c == 3) {
                    String str = "https://play.google.com/store/apps/details?id=" + fVar.f().d;
                    com.duapps.ad.base.h.c("ToolClickHandler", fVar.f().c + " parse result is " + a3.c + " and start google play via url -->" + str);
                    if (!TextUtils.isEmpty(this.e)) {
                        h.a(this.j, fVar, this.d, this.e, this.f);
                        h.a(this.j, fVar, this.h ? "1" : "0", this.e);
                    }
                    h(fVar, str);
                    f();
                    return;
                }
                a();
                b(fVar, i);
                return;
            }
            if (fVar.q() == 1 || fVar.q() == 2) {
                com.duapps.ad.base.j a4 = l.a(this.j).a(fVar.a());
                if (a4.c == 1) {
                    fVar.b(true);
                    if (!TextUtils.isEmpty(this.e)) {
                        h.a(this.j, fVar, this.d, this.e, this.f);
                        h.a(this.j, fVar, this.h ? "1" : "0", this.e);
                    }
                    h(fVar, a4.d);
                    f();
                    return;
                }
                if (a4.c == 2 || a4.c == 3) {
                    String str2 = "https://play.google.com/store/apps/details?id=" + fVar.f().d;
                    com.duapps.ad.base.h.c("ToolClickHandler", fVar.f().c + " parse result is " + a4.c + " and start google play via url -->" + str2);
                    if (!TextUtils.isEmpty(this.e)) {
                        h.a(this.j, fVar, this.d, this.e, this.f);
                        h.a(this.j, fVar, this.h ? "1" : "0", this.e);
                    }
                    h(fVar, str2);
                    f();
                    return;
                }
                b(fVar, i);
                return;
            }
            a();
            b(fVar, i);
            return;
        }
        if (!TextUtils.isEmpty(this.e)) {
            h.a(this.j, fVar, this.d, this.e, this.f);
            h.a(this.j, fVar, this.h ? "1" : "0", this.e);
        }
        g(fVar, fVar.i());
        f();
    }

    protected void b(final f fVar, final String str) {
        if (com.duapps.ad.c.b.c.a()) {
            if (com.duapps.ad.base.h.a()) {
                com.duapps.ad.base.h.c("ToolClickHandler", "Newer OS, use WebView redirect.");
            }
            try {
                d(fVar, str);
                return;
            } catch (Throwable th) {
                t.b(new Runnable() { // from class: com.duapps.ad.stats.d.2
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.c(fVar, str);
                    }
                });
                return;
            }
        }
        if (com.duapps.ad.base.h.a()) {
            com.duapps.ad.base.h.c("ToolClickHandler", "Older OS, use Http redirect.");
        }
        t.b(new Runnable() { // from class: com.duapps.ad.stats.d.3
            @Override // java.lang.Runnable
            public void run() {
                d.this.c(fVar, str);
            }
        });
    }

    protected void c(f fVar, String str) {
        DefaultHttpClient d = d();
        b bVar = new b(fVar);
        this.l = bVar;
        d.setRedirectHandler(bVar);
        if (com.duapps.ad.base.h.a()) {
            com.duapps.ad.base.h.c("ToolClickHandler", "[Http] Decode URL: " + str);
        }
        try {
            HttpGet httpGet = new HttpGet(str);
            HttpConnectionParams.setConnectionTimeout(httpGet.getParams(), Constants.TEN_SECONDS_MILLIS);
            HttpConnectionParams.setSoTimeout(httpGet.getParams(), 4000);
            d.execute(httpGet).getEntity();
        } catch (Exception e) {
            com.duapps.ad.base.h.c("ToolClickHandler", "[Http] Others error: ", e);
            if (fVar.p() != 0) {
                h.a(this.j, fVar, fVar.p() > 0 ? 2L : 1L, 0, e.getClass().getSimpleName());
            }
            StringBuilder sb = new StringBuilder();
            sb.append(e.getMessage());
            for (StackTraceElement stackTraceElement : e.getStackTrace()) {
                sb.append(",").append(stackTraceElement);
            }
            h.a(this.j, fVar, sb.toString());
            if (!fVar.n()) {
                b();
                i(fVar, str);
            }
            f();
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    @TargetApi(11)
    protected void d(f fVar, String str) {
        if (this.k == null) {
            this.k = new WebView(this.j);
            WebSettings settings = this.k.getSettings();
            settings.setAllowContentAccess(true);
            settings.setJavaScriptEnabled(true);
            settings.setUserAgentString(com.duapps.ad.base.i.f2039b);
            if (Build.VERSION.SDK_INT >= 11) {
                this.k.removeJavascriptInterface("searchBoxJavaBridge_");
                this.k.removeJavascriptInterface("accessibility");
                this.k.removeJavascriptInterface("accessibilityTraversal");
            }
        }
        this.k.stopLoading();
        c cVar = new c(fVar);
        this.l = cVar;
        this.k.setWebViewClient(cVar);
        if (com.duapps.ad.base.h.a()) {
            com.duapps.ad.base.h.c("ToolClickHandler", "[WebView] Decode URL: " + str);
        }
        HashMap hashMap = new HashMap();
        hashMap.put("X-Requested-With", "");
        this.k.loadUrl(str, hashMap);
    }

    public void e(final f fVar, final String str) {
        h.h(this.j, fVar);
        t.b(new Runnable() { // from class: com.duapps.ad.stats.d.4
            @Override // java.lang.Runnable
            public void run() {
                d.this.c(fVar, str);
            }
        });
    }
}
