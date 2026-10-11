package com.cmplay.util;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.mopub.common.Constants;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.net.ConnectException;
import java.net.MalformedURLException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URI;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.NoHttpResponseException;
import org.apache.http.ProtocolException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

/* compiled from: ParseUrlUtils.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    private Context f1917a;

    /* renamed from: b, reason: collision with root package name */
    private b f1918b = null;

    /* compiled from: ParseUrlUtils.java */
    public interface b {
        void a(String str);
    }

    public w() {
    }

    public w(Context context) {
        this.f1917a = context;
    }

    public void a(b bVar) {
        this.f1918b = bVar;
    }

    public HttpResponse a(String str) {
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        basicHttpParams.setParameter("http.useragent", a());
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, Constants.TEN_SECONDS_MILLIS);
        HttpConnectionParams.setSoTimeout(basicHttpParams, Constants.TEN_SECONDS_MILLIS);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
        defaultHttpClient.setRedirectHandler(new RedirectHandler() { // from class: com.cmplay.util.w.1
            @Override // org.apache.http.client.RedirectHandler
            public URI getLocationURI(HttpResponse response, HttpContext context) throws ProtocolException {
                return null;
            }

            @Override // org.apache.http.client.RedirectHandler
            public boolean isRedirectRequested(HttpResponse response, HttpContext context) {
                return false;
            }
        });
        try {
            return defaultHttpClient.execute(new HttpGet(str), new BasicHttpContext());
        } catch (NullPointerException e) {
            e.printStackTrace();
            return null;
        } catch (ConnectException e2) {
            e2.printStackTrace();
            return null;
        } catch (MalformedURLException e3) {
            e3.printStackTrace();
            return null;
        } catch (SocketException e4) {
            e4.printStackTrace();
            return null;
        } catch (SocketTimeoutException e5) {
            e5.printStackTrace();
            return null;
        } catch (NoHttpResponseException e6) {
            e6.printStackTrace();
            return null;
        } catch (ClientProtocolException e7) {
            e7.printStackTrace();
            return null;
        } catch (ConnectionPoolTimeoutException e8) {
            e8.printStackTrace();
            return null;
        } catch (ConnectTimeoutException e9) {
            e9.printStackTrace();
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public String a() {
        if (this.f1917a == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            return WebSettings.getDefaultUserAgent(this.f1917a);
        }
        try {
            return a(this.f1917a, "android.webkit.WebSettings", "android.webkit.WebView");
        } catch (Exception e) {
            try {
                return a(this.f1917a, "android.webkit.WebSettingsClassic", "android.webkit.WebViewClassic");
            } catch (Exception e2) {
                WebView webView = new WebView(this.f1917a);
                String userAgentString = webView.getSettings().getUserAgentString();
                webView.destroy();
                return userAgentString;
            }
        }
    }

    private String a(Context context, String str, String str2) throws Exception {
        Class<?> cls = Class.forName(str);
        Constructor<?> declaredConstructor = cls.getDeclaredConstructor(Context.class, Class.forName(str2));
        declaredConstructor.setAccessible(true);
        try {
            return (String) cls.getMethod("getUserAgentString", new Class[0]).invoke(declaredConstructor.newInstance(context, null), new Object[0]);
        } finally {
            declaredConstructor.setAccessible(false);
        }
    }

    /* compiled from: ParseUrlUtils.java */
    public class a extends com.cmplay.util.b<String, Void, String> {
        String e = "";
        String f = "";
        String g = "";

        public a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.cmplay.util.b
        public String a(String... strArr) {
            int statusCode;
            Header firstHeader;
            String str = strArr[0];
            do {
                HttpResponse a2 = w.this.a(str);
                if (a2 == null || a2.getStatusLine() == null || (((statusCode = a2.getStatusLine().getStatusCode()) != 301 && statusCode != 302) || (firstHeader = a2.getFirstHeader("Location")) == null || (str = firstHeader.getValue()) == null)) {
                    break;
                }
            } while (!n.a(str));
            return str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.cmplay.util.b
        public void a(String str) {
            if (TextUtils.isEmpty(str) || n.a(str)) {
                w.this.c(str);
            } else {
                w.this.c(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        if (this.f1918b != null) {
            this.f1918b.a(str);
        }
    }

    public a b(String str) {
        a aVar = new a();
        aVar.c((Object[]) new String[]{str});
        return aVar;
    }
}
