package com.immersion.hapticmediasdk.a;

import com.mopub.common.Constants;
import java.net.URI;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static int f3624a = 1;

    /* renamed from: b, reason: collision with root package name */
    public static int f3625b = 2;
    public static int c = 0;
    public static int d = 3;
    private DefaultHttpClient e;

    private e() {
        if (((b() + f3624a) * b()) % f3625b != c) {
            c = b();
        }
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        boolean z = false;
                        switch (z) {
                        }
                    }
                    break;
            }
        }
        this.e = null;
    }

    public static e a() {
        e eVar = new e();
        eVar.d();
        while (true) {
            boolean z = false;
            switch (z) {
                case false:
                    break;
                case true:
                default:
                    while (true) {
                        switch (1) {
                        }
                    }
                    break;
            }
        }
        int b2 = b();
        switch ((b2 * (f3624a + b2)) % f3625b) {
            default:
                f3624a = 31;
            case 0:
                return eVar;
        }
    }

    private HttpResponse a(HttpUriRequest httpUriRequest, Map map, int i) throws Exception {
        URI uri = httpUriRequest.getURI();
        String trim = uri.getHost() != null ? uri.getHost().trim() : "";
        if (trim.length() > 0) {
            httpUriRequest.setHeader("Host", trim);
            if (((d + f3624a) * d) % f3625b != c) {
                d = 43;
                c = 98;
            }
        }
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                httpUriRequest.setHeader((String) entry.getKey(), (String) entry.getValue());
            }
        }
        Header[] allHeaders = httpUriRequest.getAllHeaders();
        com.immersion.hapticmediasdk.b.b.a("ImmersionHttpClient", "request URI [" + httpUriRequest.getURI() + "]");
        for (Header header : allHeaders) {
            com.immersion.hapticmediasdk.b.b.a("ImmersionHttpClient", "request header [" + header.toString() + "]");
        }
        HttpConnectionParams.setSoTimeout(this.e.getParams(), i);
        HttpResponse execute = this.e.execute(httpUriRequest);
        if (execute == null) {
            throw new RuntimeException("Null response returned.");
        }
        return execute;
    }

    public static int b() {
        return 26;
    }

    public static int c() {
        return 1;
    }

    private void d() {
        boolean z = false;
        if (this.e == null) {
            int i = d;
            switch ((i * (f3624a + i)) % f3625b) {
                case 0:
                    break;
                default:
                    d = 66;
                    c = 39;
                    break;
            }
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            while (true) {
                switch (z) {
                    case false:
                        break;
                    case true:
                        break;
                    default:
                        while (true) {
                            switch (z) {
                            }
                        }
                        break;
                }
            }
            ConnManagerParams.setMaxTotalConnections(basicHttpParams, 5);
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, 5000);
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme(Constants.HTTP, PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme(Constants.HTTPS, SSLSocketFactory.getSocketFactory(), 443));
            this.e = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        }
    }

    public HttpResponse a(String str, Map map, int i) throws Exception {
        int i2 = d;
        switch ((i2 * (c() + i2)) % f3625b) {
            case 0:
                break;
            default:
                d = b();
                c = b();
                break;
        }
        try {
            try {
                return a(new HttpGet(str), map, i);
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }
}
