package com.android.volley.toolbox;

import com.android.volley.l;
import com.mopub.volley.toolbox.HttpClientStack;
import java.io.IOException;
import java.net.URI;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* compiled from: HttpClientStack.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d implements f {

    /* renamed from: a, reason: collision with root package name */
    protected final HttpClient f278a;

    public d(HttpClient httpClient) {
        this.f278a = httpClient;
    }

    private static void a(HttpUriRequest httpUriRequest, Map<String, String> map) {
        for (String str : map.keySet()) {
            httpUriRequest.setHeader(str, map.get(str));
        }
    }

    @Override // com.android.volley.toolbox.f
    public HttpResponse a(l<?> lVar, Map<String, String> map) throws IOException, com.android.volley.a {
        HttpUriRequest b2 = b(lVar, map);
        a(b2, map);
        a(b2, lVar.h());
        a(b2);
        HttpParams params = b2.getParams();
        int s = lVar.s();
        HttpConnectionParams.setConnectionTimeout(params, 5000);
        HttpConnectionParams.setSoTimeout(params, s);
        return this.f278a.execute(b2);
    }

    static HttpUriRequest b(l<?> lVar, Map<String, String> map) throws com.android.volley.a {
        switch (lVar.a()) {
            case -1:
                byte[] l = lVar.l();
                if (l != null) {
                    HttpPost httpPost = new HttpPost(lVar.c());
                    httpPost.addHeader("Content-Type", lVar.k());
                    httpPost.setEntity(new ByteArrayEntity(l));
                    return httpPost;
                }
                return new HttpGet(lVar.c());
            case 0:
                return new HttpGet(lVar.c());
            case 1:
                HttpPost httpPost2 = new HttpPost(lVar.c());
                httpPost2.addHeader("Content-Type", lVar.o());
                a(httpPost2, lVar);
                return httpPost2;
            case 2:
                HttpPut httpPut = new HttpPut(lVar.c());
                httpPut.addHeader("Content-Type", lVar.o());
                a(httpPut, lVar);
                return httpPut;
            case 3:
                return new HttpDelete(lVar.c());
            case 4:
                return new HttpHead(lVar.c());
            case 5:
                return new HttpOptions(lVar.c());
            case 6:
                return new HttpTrace(lVar.c());
            case 7:
                a aVar = new a(lVar.c());
                aVar.addHeader("Content-Type", lVar.o());
                a(aVar, lVar);
                return aVar;
            default:
                throw new IllegalStateException("Unknown request method.");
        }
    }

    private static void a(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, l<?> lVar) throws com.android.volley.a {
        byte[] p = lVar.p();
        if (p != null) {
            httpEntityEnclosingRequestBase.setEntity(new ByteArrayEntity(p));
        }
    }

    protected void a(HttpUriRequest httpUriRequest) throws IOException {
    }

    /* compiled from: HttpClientStack.java */
    public static final class a extends HttpEntityEnclosingRequestBase {
        public a() {
        }

        public a(String str) {
            setURI(URI.create(str));
        }

        @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
        public String getMethod() {
            return HttpClientStack.HttpPatch.METHOD_NAME;
        }
    }
}
