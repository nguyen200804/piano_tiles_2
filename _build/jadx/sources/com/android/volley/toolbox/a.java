package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.b;
import com.android.volley.l;
import com.android.volley.p;
import com.android.volley.q;
import com.android.volley.r;
import com.android.volley.s;
import com.android.volley.t;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.impl.cookie.DateUtils;

/* compiled from: BasicNetwork.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a implements com.android.volley.f {

    /* renamed from: a, reason: collision with root package name */
    protected static final boolean f269a = t.f258b;
    private static int d = AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS;
    private static int e = 4096;

    /* renamed from: b, reason: collision with root package name */
    protected final f f270b;
    protected final b c;

    public a(f fVar) {
        this(fVar, new b(e));
    }

    public a(f fVar, b bVar) {
        this.f270b = fVar;
        this.c = bVar;
    }

    @Override // com.android.volley.f
    public com.android.volley.i a(l<?> lVar) throws s {
        byte[] bArr;
        byte[] bArr2;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            HttpResponse httpResponse = null;
            Map<String, String> emptyMap = Collections.emptyMap();
            try {
                try {
                    HashMap hashMap = new HashMap();
                    a(hashMap, lVar.e());
                    HttpResponse a2 = this.f270b.a(lVar, hashMap);
                    try {
                        StatusLine statusLine = a2.getStatusLine();
                        int statusCode = statusLine.getStatusCode();
                        emptyMap = a(a2.getAllHeaders());
                        if (statusCode == 304) {
                            b.a e2 = lVar.e();
                            if (e2 == null) {
                                return new com.android.volley.i(304, null, emptyMap, true, SystemClock.elapsedRealtime() - elapsedRealtime);
                            }
                            e2.g.putAll(emptyMap);
                            return new com.android.volley.i(304, e2.f228a, e2.g, true, SystemClock.elapsedRealtime() - elapsedRealtime);
                        }
                        if (a2.getEntity() != null) {
                            bArr2 = a(a2.getEntity());
                        } else {
                            bArr2 = new byte[0];
                        }
                        try {
                            a(SystemClock.elapsedRealtime() - elapsedRealtime, lVar, bArr2, statusLine);
                            if (statusCode < 200 || statusCode > 299) {
                                throw new IOException();
                            }
                            return new com.android.volley.i(statusCode, bArr2, emptyMap, false, SystemClock.elapsedRealtime() - elapsedRealtime);
                        } catch (IOException e3) {
                            e = e3;
                            bArr = bArr2;
                            httpResponse = a2;
                            if (httpResponse != null) {
                                int statusCode2 = httpResponse.getStatusLine().getStatusCode();
                                t.c("Unexpected response code %d for %s", Integer.valueOf(statusCode2), lVar.c());
                                if (bArr != null) {
                                    com.android.volley.i iVar = new com.android.volley.i(statusCode2, bArr, emptyMap, false, SystemClock.elapsedRealtime() - elapsedRealtime);
                                    if (statusCode2 == 401 || statusCode2 == 403) {
                                        a("auth", lVar, new com.android.volley.a(iVar));
                                    } else {
                                        throw new q(iVar);
                                    }
                                } else {
                                    throw new com.android.volley.h((com.android.volley.i) null);
                                }
                            } else {
                                throw new com.android.volley.j(e);
                            }
                        }
                    } catch (IOException e4) {
                        e = e4;
                        bArr = null;
                        httpResponse = a2;
                    }
                } catch (IOException e5) {
                    e = e5;
                    bArr = null;
                }
            } catch (MalformedURLException e6) {
                throw new RuntimeException("Bad URL " + lVar.c(), e6);
            } catch (SocketTimeoutException e7) {
                a("socket", lVar, new r());
            } catch (ConnectTimeoutException e8) {
                a("connection", lVar, new r());
            }
        }
    }

    private void a(long j, l<?> lVar, byte[] bArr, StatusLine statusLine) {
        if (f269a || j > d) {
            Object[] objArr = new Object[5];
            objArr[0] = lVar;
            objArr[1] = Long.valueOf(j);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
            objArr[3] = Integer.valueOf(statusLine.getStatusCode());
            objArr[4] = Integer.valueOf(lVar.t().b());
            t.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
    }

    private static void a(String str, l<?> lVar, s sVar) throws s {
        p t = lVar.t();
        int s = lVar.s();
        try {
            t.a(sVar);
            lVar.a(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(s)));
        } catch (s e2) {
            lVar.a(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(s)));
            throw e2;
        }
    }

    private void a(Map<String, String> map, b.a aVar) {
        if (aVar != null) {
            if (aVar.f229b != null) {
                map.put("If-None-Match", aVar.f229b);
            }
            if (aVar.d > 0) {
                map.put("If-Modified-Since", DateUtils.formatDate(new Date(aVar.d)));
            }
        }
    }

    private byte[] a(HttpEntity httpEntity) throws IOException, q {
        j jVar = new j(this.c, (int) httpEntity.getContentLength());
        try {
            InputStream content = httpEntity.getContent();
            if (content == null) {
                throw new q();
            }
            byte[] a2 = this.c.a(1024);
            while (true) {
                int read = content.read(a2);
                if (read == -1) {
                    break;
                }
                jVar.write(a2, 0, read);
            }
            byte[] byteArray = jVar.toByteArray();
            try {
                httpEntity.consumeContent();
            } catch (IOException e2) {
                t.a("Error occured when calling consumingContent", new Object[0]);
            }
            this.c.a(a2);
            jVar.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                httpEntity.consumeContent();
            } catch (IOException e3) {
                t.a("Error occured when calling consumingContent", new Object[0]);
            }
            this.c.a((byte[]) null);
            jVar.close();
            throw th;
        }
    }

    protected static Map<String, String> a(Header[] headerArr) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i = 0; i < headerArr.length; i++) {
            treeMap.put(headerArr[i].getName(), headerArr[i].getValue());
        }
        return treeMap;
    }
}
