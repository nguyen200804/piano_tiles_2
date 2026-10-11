package com.duapps.ad.base;

import com.mopub.common.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URI;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.DefaultHttpRequestRetryHandler;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicHeader;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.CharArrayBuffer;
import org.json.JSONObject;

/* compiled from: ToolboxRequestHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    private static final Header f2085a = new BasicHeader("Content-Encoding", "gzip");

    /* renamed from: b, reason: collision with root package name */
    private static final Header f2086b = new BasicHeader("Accept-Encoding", "gzip");
    private static r c = new r();
    private static DefaultHttpClient d;

    private r() {
    }

    public static void a(URL url, b bVar, long j) {
        try {
            a aVar = new a();
            ArrayList arrayList = new ArrayList();
            arrayList.add(a(j));
            int a2 = a(url, arrayList, aVar, 1);
            if (200 == a2 || 304 == a2) {
                bVar.a(a2, (int) aVar);
            } else {
                bVar.a(a2, aVar.a());
            }
        } catch (Exception e) {
            bVar.a(e, (a) null);
            h.b("ToolboxRequestHelper", "failed to get project", e);
        }
    }

    private static int a(URL url, List<Header> list, a aVar, int i) {
        if (i > 2) {
            throw new IOException("Too much recursion:2");
        }
        HttpResponse a2 = a(url, list, true);
        try {
            int statusCode = a2.getStatusLine().getStatusCode();
            if (statusCode == 200 || statusCode == 304) {
                if (statusCode == 200) {
                    JSONObject c2 = c(a2);
                    JSONObject jSONObject = c2.getJSONObject("responseHeader");
                    aVar.f2088b = jSONObject;
                    statusCode = jSONObject.getInt("status");
                    if (statusCode == 200) {
                        aVar.f2087a = c2.getJSONObject("response");
                        aVar.c = b(a2);
                    }
                }
            }
            return statusCode;
        } finally {
            a(a2);
        }
    }

    public static void a(HttpResponse httpResponse) {
        if (httpResponse != null && httpResponse.getEntity() != null) {
            try {
                httpResponse.getEntity().consumeContent();
            } catch (Exception e) {
                h.b("ToolboxRequestHelper", "failed to cosume entity", e);
            }
        }
    }

    private static long b(HttpResponse httpResponse) {
        Header firstHeader = httpResponse.getFirstHeader("Last-Modified");
        if (firstHeader != null) {
            return a(firstHeader.getValue()).getTime();
        }
        return 0L;
    }

    private static Header a(long j) {
        return new BasicHeader("If-Modified-Since", a(new Date(j)));
    }

    private static JSONObject c(HttpResponse httpResponse) {
        HttpEntity entity = httpResponse.getEntity();
        InputStream content = entity.getContent();
        int contentLength = (int) entity.getContentLength();
        if (contentLength < 0) {
            contentLength = 1024;
        }
        Header contentEncoding = entity.getContentEncoding();
        InputStreamReader inputStreamReader = new InputStreamReader((contentEncoding == null || contentEncoding.getValue().indexOf("gzip") == -1) ? content : new GZIPInputStream(content), "UTF-8");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(contentLength);
        char[] cArr = new char[1024];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read != -1) {
                charArrayBuffer.append(cArr, 0, read);
            } else {
                com.duapps.ad.c.b.c.a(inputStreamReader);
                return new JSONObject(charArrayBuffer.toString());
            }
        }
    }

    public static HttpResponse a(URI uri, String str, List<Header> list) {
        HttpPost httpPost = new HttpPost(uri.toString());
        if (list != null) {
            Iterator<Header> it = list.iterator();
            while (it.hasNext()) {
                httpPost.addHeader(it.next());
            }
        }
        httpPost.addHeader(f2085a);
        httpPost.addHeader(f2086b);
        httpPost.setEntity(new ByteArrayEntity(com.duapps.ad.c.b.c.b(str)));
        if (h.a()) {
            h.c("ToolboxRequestHelper", "request uri:" + httpPost.getURI() + ",body:" + str + ",headers:" + Arrays.asList(httpPost.getAllHeaders()));
        }
        httpPost.getParams().setParameter("http.socket.timeout", 20000);
        try {
            return a().execute(httpPost);
        } catch (IOException e) {
            httpPost.abort();
            throw e;
        }
    }

    public static HttpResponse a(URL url, List<Header> list, boolean z) {
        HttpGet httpGet = new HttpGet(url.toString());
        if (list != null) {
            Iterator<Header> it = list.iterator();
            while (it.hasNext()) {
                httpGet.addHeader(it.next());
            }
        }
        if (z) {
            httpGet.addHeader(f2086b);
        }
        if (h.a()) {
            h.c("ToolboxRequestHelper", "request uri: " + httpGet.getURI() + ", headers: " + Arrays.asList(httpGet.getAllHeaders()));
        }
        httpGet.getParams().setParameter("http.socket.timeout", 20000);
        try {
            return a().execute(httpGet);
        } catch (IOException e) {
            httpGet.abort();
            throw e;
        }
    }

    public static synchronized DefaultHttpClient a() {
        DefaultHttpClient defaultHttpClient;
        synchronized (r.class) {
            if (d != null) {
                defaultHttpClient = d;
            } else {
                SchemeRegistry schemeRegistry = new SchemeRegistry();
                schemeRegistry.register(new Scheme(Constants.HTTP, PlainSocketFactory.getSocketFactory(), 80));
                schemeRegistry.register(new Scheme(Constants.HTTPS, SSLSocketFactory.getSocketFactory(), 443));
                BasicHttpParams basicHttpParams = new BasicHttpParams();
                d = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
                HttpConnectionParams.setSoTimeout(d.getParams(), 30000);
                HttpConnectionParams.setConnectionTimeout(d.getParams(), 30000);
                d.getParams().setIntParameter("http.protocol.max-redirects", 10);
                HttpClientParams.setCookiePolicy(d.getParams(), "compatibility");
                HttpProtocolParams.setUserAgent(d.getParams(), "Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.9.2.18) Gecko/20110628 Ubuntu/10.04 (lucid) Firefox/3.6.18");
                d.setHttpRequestRetryHandler(new DefaultHttpRequestRetryHandler(3, true));
                defaultHttpClient = d;
            }
        }
        return defaultHttpClient;
    }

    /* compiled from: ToolboxRequestHelper.java */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public JSONObject f2087a;

        /* renamed from: b, reason: collision with root package name */
        public JSONObject f2088b;
        public long c;

        public String a() {
            return this.f2088b == null ? "NETWORK_FAIL" : this.f2088b.optString("msg");
        }
    }

    /* compiled from: ToolboxRequestHelper.java */
    public static abstract class b implements c<a> {
        public void a(Exception exc, a aVar) {
            a(-1, com.duapps.ad.c.b.c.a(exc));
        }
    }

    public static String a(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat.format(date);
    }

    public static Date a(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat.parse(str);
    }
}
