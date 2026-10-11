package com.android.volley.toolbox;

import com.android.volley.l;
import com.mopub.common.Constants;
import com.mopub.volley.toolbox.HttpClientStack;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;

/* compiled from: HurlStack.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g implements f {

    /* renamed from: a, reason: collision with root package name */
    private final a f279a;

    /* renamed from: b, reason: collision with root package name */
    private final SSLSocketFactory f280b;

    /* compiled from: HurlStack.java */
    public interface a {
        String a(String str);
    }

    public g() {
        this(null);
    }

    public g(a aVar) {
        this(aVar, null);
    }

    public g(a aVar, SSLSocketFactory sSLSocketFactory) {
        this.f279a = aVar;
        this.f280b = sSLSocketFactory;
    }

    @Override // com.android.volley.toolbox.f
    public HttpResponse a(l<?> lVar, Map<String, String> map) throws IOException, com.android.volley.a {
        String str;
        String c = lVar.c();
        HashMap hashMap = new HashMap();
        hashMap.putAll(lVar.h());
        hashMap.putAll(map);
        if (this.f279a != null) {
            str = this.f279a.a(c);
            if (str == null) {
                throw new IOException("URL blocked by rewriter: " + c);
            }
        } else {
            str = c;
        }
        HttpURLConnection a2 = a(new URL(str), lVar);
        for (String str2 : hashMap.keySet()) {
            a2.addRequestProperty(str2, (String) hashMap.get(str2));
        }
        a(a2, lVar);
        ProtocolVersion protocolVersion = new ProtocolVersion("HTTP", 1, 1);
        if (a2.getResponseCode() == -1) {
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        }
        BasicHttpResponse basicHttpResponse = new BasicHttpResponse(new BasicStatusLine(protocolVersion, a2.getResponseCode(), a2.getResponseMessage()));
        basicHttpResponse.setEntity(a(a2));
        for (Map.Entry<String, List<String>> entry : a2.getHeaderFields().entrySet()) {
            if (entry.getKey() != null) {
                basicHttpResponse.addHeader(new BasicHeader(entry.getKey(), entry.getValue().get(0)));
            }
        }
        return basicHttpResponse;
    }

    private static HttpEntity a(HttpURLConnection httpURLConnection) {
        InputStream errorStream;
        BasicHttpEntity basicHttpEntity = new BasicHttpEntity();
        try {
            errorStream = httpURLConnection.getInputStream();
        } catch (IOException e) {
            errorStream = httpURLConnection.getErrorStream();
        }
        basicHttpEntity.setContent(errorStream);
        basicHttpEntity.setContentLength(httpURLConnection.getContentLength());
        basicHttpEntity.setContentEncoding(httpURLConnection.getContentEncoding());
        basicHttpEntity.setContentType(httpURLConnection.getContentType());
        return basicHttpEntity;
    }

    protected HttpURLConnection a(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    private HttpURLConnection a(URL url, l<?> lVar) throws IOException {
        HttpURLConnection a2 = a(url);
        int s = lVar.s();
        a2.setConnectTimeout(s);
        a2.setReadTimeout(s);
        a2.setUseCaches(false);
        a2.setDoInput(true);
        if (Constants.HTTPS.equals(url.getProtocol()) && this.f280b != null) {
            ((HttpsURLConnection) a2).setSSLSocketFactory(this.f280b);
        }
        return a2;
    }

    static void a(HttpURLConnection httpURLConnection, l<?> lVar) throws IOException, com.android.volley.a {
        switch (lVar.a()) {
            case -1:
                byte[] l = lVar.l();
                if (l != null) {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.addRequestProperty("Content-Type", lVar.k());
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(l);
                    dataOutputStream.close();
                    return;
                }
                return;
            case 0:
                httpURLConnection.setRequestMethod("GET");
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                b(httpURLConnection, lVar);
                return;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                b(httpURLConnection, lVar);
                return;
            case 3:
                httpURLConnection.setRequestMethod("DELETE");
                return;
            case 4:
                httpURLConnection.setRequestMethod("HEAD");
                return;
            case 5:
                httpURLConnection.setRequestMethod("OPTIONS");
                return;
            case 6:
                httpURLConnection.setRequestMethod("TRACE");
                return;
            case 7:
                httpURLConnection.setRequestMethod(HttpClientStack.HttpPatch.METHOD_NAME);
                b(httpURLConnection, lVar);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    private static void b(HttpURLConnection httpURLConnection, l<?> lVar) throws IOException, com.android.volley.a {
        byte[] p = lVar.p();
        if (p != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.addRequestProperty("Content-Type", lVar.o());
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(p);
            dataOutputStream.close();
        }
    }
}
