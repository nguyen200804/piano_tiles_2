package com.tencent.wxop.stat;

import android.content.Context;
import com.mopub.common.AdType;
import com.mopub.common.Constants;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.GZIPOutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ak {
    private static com.tencent.wxop.stat.b.b cx = com.tencent.wxop.stat.b.l.av();
    private static ak dj = null;
    private static Context dk = null;
    private long cv;
    DefaultHttpClient dg;
    com.tencent.wxop.stat.b.f dh;
    StringBuilder di = new StringBuilder(4096);

    private ak(Context context) {
        this.dg = null;
        this.dh = null;
        this.cv = 0L;
        try {
            dk = context.getApplicationContext();
            this.cv = System.currentTimeMillis() / 1000;
            this.dh = new com.tencent.wxop.stat.b.f();
            if (c.k()) {
                try {
                    Logger.getLogger("org.apache.http.wire").setLevel(Level.FINER);
                    Logger.getLogger("org.apache.http.headers").setLevel(Level.FINER);
                    System.setProperty("org.apache.commons.logging.Log", "org.apache.commons.logging.impl.SimpleLog");
                    System.setProperty("org.apache.commons.logging.simplelog.showdatetime", "true");
                    System.setProperty("org.apache.commons.logging.simplelog.log.httpclient.wire", "debug");
                    System.setProperty("org.apache.commons.logging.simplelog.log.org.apache.http", "debug");
                    System.setProperty("org.apache.commons.logging.simplelog.log.org.apache.http.headers", "debug");
                } catch (Throwable th) {
                }
            }
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpConnectionParams.setStaleCheckingEnabled(basicHttpParams, false);
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, Constants.TEN_SECONDS_MILLIS);
            HttpConnectionParams.setSoTimeout(basicHttpParams, Constants.TEN_SECONDS_MILLIS);
            this.dg = new DefaultHttpClient(basicHttpParams);
            this.dg.setKeepAliveStrategy(new al(this));
        } catch (Throwable th2) {
            cx.b(th2);
        }
    }

    static ak Z(Context context) {
        if (dj == null) {
            synchronized (ak.class) {
                if (dj == null) {
                    dj = new ak(context);
                }
            }
        }
        return dj;
    }

    static Context aB() {
        return dk;
    }

    static void j(Context context) {
        dk = context.getApplicationContext();
    }

    final void a(com.tencent.wxop.stat.a.d dVar, aj ajVar) {
        b(Arrays.asList(dVar.af()), ajVar);
    }

    final void a(List<?> list, aj ajVar) {
        ByteArrayOutputStream byteArrayOutputStream;
        HttpResponse execute;
        HttpEntity entity;
        int statusCode;
        long contentLength;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = list.size();
        list.get(0);
        try {
            this.di.delete(0, this.di.length());
            this.di.append("[");
            for (int i = 0; i < size; i++) {
                this.di.append(list.get(i).toString());
                if (i != size - 1) {
                    this.di.append(",");
                }
            }
            this.di.append("]");
            String sb = this.di.toString();
            int length = sb.length();
            String str = c.y() + "/?index=" + this.cv;
            this.cv++;
            if (c.k()) {
                cx.b("[" + str + "]Send request(" + length + "bytes), content:" + sb);
            }
            HttpPost httpPost = new HttpPost(str);
            httpPost.addHeader("Accept-Encoding", "gzip");
            httpPost.setHeader("Connection", "Keep-Alive");
            httpPost.removeHeaders("Cache-Control");
            HttpHost V = g.r(dk).V();
            httpPost.addHeader("Content-Encoding", "rc4");
            if (V == null) {
                this.dg.getParams().removeParameter("http.route.default-proxy");
            } else {
                if (c.k()) {
                    cx.e("proxy:" + V.toHostString());
                }
                httpPost.addHeader("X-Content-Encoding", "rc4");
                this.dg.getParams().setParameter("http.route.default-proxy", V);
                httpPost.addHeader("X-Online-Host", c.al);
                httpPost.addHeader("Accept", "*/*");
                httpPost.addHeader("Content-Type", AdType.STATIC_NATIVE);
            }
            byteArrayOutputStream = new ByteArrayOutputStream(length);
            byte[] bytes = sb.getBytes("UTF-8");
            int length2 = bytes.length;
            if (length > c.aA) {
                httpPost.removeHeaders("Content-Encoding");
                String str2 = "rc4,gzip";
                httpPost.addHeader("Content-Encoding", str2);
                if (V != null) {
                    httpPost.removeHeaders("X-Content-Encoding");
                    httpPost.addHeader("X-Content-Encoding", str2);
                }
                byteArrayOutputStream.write(new byte[4]);
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                gZIPOutputStream.write(bytes);
                gZIPOutputStream.close();
                bytes = byteArrayOutputStream.toByteArray();
                ByteBuffer.wrap(bytes, 0, 4).putInt(length2);
                if (c.k()) {
                    cx.e("before Gzip:" + length2 + " bytes, after Gzip:" + bytes.length + " bytes");
                }
            }
            httpPost.setEntity(new ByteArrayEntity(com.tencent.wxop.stat.b.g.b(bytes)));
            execute = this.dg.execute(httpPost);
            entity = execute.getEntity();
            statusCode = execute.getStatusLine().getStatusCode();
            contentLength = entity.getContentLength();
            if (c.k()) {
                cx.b("http recv response status code:" + statusCode + ", content length:" + contentLength);
            }
        } catch (Throwable th) {
            th = th;
        }
        if (contentLength <= 0) {
            cx.d("Server response no data.");
            if (ajVar != null) {
                ajVar.B();
            }
            EntityUtils.toString(entity);
            return;
        }
        if (contentLength > 0) {
            InputStream content = entity.getContent();
            DataInputStream dataInputStream = new DataInputStream(content);
            byte[] bArr = new byte[(int) entity.getContentLength()];
            dataInputStream.readFully(bArr);
            content.close();
            dataInputStream.close();
            Header firstHeader = execute.getFirstHeader("Content-Encoding");
            if (firstHeader != null) {
                if (firstHeader.getValue().equalsIgnoreCase("gzip,rc4")) {
                    bArr = com.tencent.wxop.stat.b.g.c(com.tencent.wxop.stat.b.l.b(bArr));
                } else if (firstHeader.getValue().equalsIgnoreCase("rc4,gzip")) {
                    bArr = com.tencent.wxop.stat.b.l.b(com.tencent.wxop.stat.b.g.c(bArr));
                } else if (firstHeader.getValue().equalsIgnoreCase("gzip")) {
                    bArr = com.tencent.wxop.stat.b.l.b(bArr);
                } else if (firstHeader.getValue().equalsIgnoreCase("rc4")) {
                    bArr = com.tencent.wxop.stat.b.g.c(bArr);
                }
            }
            String str3 = new String(bArr, "UTF-8");
            if (c.k()) {
                cx.b("http get response data:" + str3);
            }
            JSONObject jSONObject = new JSONObject(str3);
            if (statusCode == 200) {
                try {
                    String optString = jSONObject.optString("mid");
                    if (com.tencent.a.a.a.a.h.e(optString)) {
                        if (c.k()) {
                            cx.b("update mid:" + optString);
                        }
                        com.tencent.a.a.a.a.g.a(dk).b(optString);
                    }
                    if (!jSONObject.isNull("cfg")) {
                        c.a(dk, jSONObject.getJSONObject("cfg"));
                    }
                    if (!jSONObject.isNull("ncts")) {
                        int i2 = jSONObject.getInt("ncts");
                        int currentTimeMillis = (int) (i2 - (System.currentTimeMillis() / 1000));
                        if (c.k()) {
                            cx.b("server time:" + i2 + ", diff time:" + currentTimeMillis);
                        }
                        com.tencent.wxop.stat.b.l.Q(dk);
                        com.tencent.wxop.stat.b.l.a(dk, currentTimeMillis);
                    }
                } catch (Throwable th2) {
                    cx.c(th2);
                }
                if (ajVar != null) {
                    if (jSONObject.optInt("ret") == 0) {
                        ajVar.ah();
                    } else {
                        cx.error("response error data.");
                        ajVar.B();
                    }
                }
            } else {
                cx.error("Server response error code:" + statusCode + ", error:" + new String(bArr, "UTF-8"));
                if (ajVar != null) {
                    ajVar.B();
                }
            }
            content.close();
        } else {
            EntityUtils.toString(entity);
        }
        byteArrayOutputStream.close();
        th = null;
        if (th != null) {
            cx.a(th);
            if (ajVar != null) {
                try {
                    ajVar.B();
                } catch (Throwable th3) {
                    cx.b(th3);
                }
            }
            if (th instanceof OutOfMemoryError) {
                System.gc();
                this.di = null;
                this.di = new StringBuilder(2048);
            }
            g.r(dk).I();
        }
    }

    final void b(List<?> list, aj ajVar) {
        if (this.dh != null) {
            this.dh.a(new am(this, list, ajVar));
        }
    }
}
