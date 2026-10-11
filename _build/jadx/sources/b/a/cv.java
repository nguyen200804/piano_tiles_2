package b.a;

import android.content.Context;
import android.os.Build;
import com.mopub.common.Constants;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

/* compiled from: NetworkHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class cv {

    /* renamed from: a, reason: collision with root package name */
    private String f148a;

    /* renamed from: b, reason: collision with root package name */
    private String f149b = "10.0.0.172";
    private int c = 80;
    private Context d;
    private ct e;

    public cv(Context context) {
        this.d = context;
        this.f148a = a(context);
    }

    public void a(ct ctVar) {
        this.e = ctVar;
    }

    public byte[] a(byte[] bArr) {
        byte[] bArr2 = null;
        int i = 0;
        while (true) {
            if (i >= com.b.a.d.f636a.length) {
                break;
            }
            bArr2 = a(bArr, com.b.a.d.f636a[i]);
            if (bArr2 != null) {
                if (this.e != null) {
                    this.e.m();
                }
            } else {
                if (this.e != null) {
                    this.e.n();
                }
                i++;
            }
        }
        return bArr2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004a, code lost:
    
        if (r0.equals("uniwap") != false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a() {
        /*
            r5 = this;
            r2 = 1
            r1 = 0
            android.content.Context r0 = r5.d
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            java.lang.String r3 = "android.permission.ACCESS_NETWORK_STATE"
            android.content.Context r4 = r5.d
            java.lang.String r4 = r4.getPackageName()
            int r0 = r0.checkPermission(r3, r4)
            if (r0 == 0) goto L18
            r0 = r1
        L17:
            return r0
        L18:
            android.content.Context r0 = r5.d     // Catch: java.lang.Exception -> L4e
            java.lang.String r3 = "connectivity"
            java.lang.Object r0 = r0.getSystemService(r3)     // Catch: java.lang.Exception -> L4e
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0     // Catch: java.lang.Exception -> L4e
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()     // Catch: java.lang.Exception -> L4e
            if (r0 == 0) goto L52
            int r3 = r0.getType()     // Catch: java.lang.Exception -> L4e
            if (r3 == r2) goto L52
            java.lang.String r0 = r0.getExtraInfo()     // Catch: java.lang.Exception -> L4e
            if (r0 == 0) goto L52
            java.lang.String r3 = "cmwap"
            boolean r3 = r0.equals(r3)     // Catch: java.lang.Exception -> L4e
            if (r3 != 0) goto L4c
            java.lang.String r3 = "3gwap"
            boolean r3 = r0.equals(r3)     // Catch: java.lang.Exception -> L4e
            if (r3 != 0) goto L4c
            java.lang.String r3 = "uniwap"
            boolean r0 = r0.equals(r3)     // Catch: java.lang.Exception -> L4e
            if (r0 == 0) goto L52
        L4c:
            r0 = r2
            goto L17
        L4e:
            r0 = move-exception
            r0.printStackTrace()
        L52:
            r0 = r1
            goto L17
        */
        throw new UnsupportedOperationException("Method not decompiled: b.a.cv.a():boolean");
    }

    private byte[] a(byte[] bArr, String str) {
        HttpPost httpPost = new HttpPost(str);
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, Constants.TEN_SECONDS_MILLIS);
        HttpConnectionParams.setSoTimeout(basicHttpParams, 30000);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
        httpPost.addHeader("X-Umeng-UTC", String.valueOf(System.currentTimeMillis()));
        httpPost.addHeader("X-Umeng-Sdk", this.f148a);
        httpPost.addHeader("Msg-Type", "envelope");
        try {
            if (a()) {
                defaultHttpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(this.f149b, this.c));
            }
            httpPost.setEntity(new InputStreamEntity(new ByteArrayInputStream(bArr), bArr.length));
            if (this.e != null) {
                this.e.k();
            }
            HttpResponse execute = defaultHttpClient.execute(httpPost);
            if (this.e != null) {
                this.e.l();
            }
            int statusCode = execute.getStatusLine().getStatusCode();
            boolean a2 = av.a(execute.getFirstHeader("Content-Type"), "application/thrift");
            ap.c("MobclickAgent", "status code : " + statusCode);
            if (statusCode != 200 || !a2) {
                return null;
            }
            ap.a("MobclickAgent", "Send message to " + str);
            HttpEntity entity = execute.getEntity();
            if (entity == null) {
                return null;
            }
            InputStream content = entity.getContent();
            try {
                return av.b(content);
            } finally {
                av.c(content);
            }
        } catch (ClientProtocolException e) {
            ap.b("MobclickAgent", "ClientProtocolException,Failed to send message.", e);
            return null;
        } catch (IOException e2) {
            ap.b("MobclickAgent", "IOException,Failed to send message.", e2);
            return null;
        }
    }

    private String a(Context context) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Android");
        stringBuffer.append("/");
        stringBuffer.append("5.5.3");
        stringBuffer.append(" ");
        try {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(ao.p(context));
            stringBuffer2.append("/");
            stringBuffer2.append(ao.b(context));
            stringBuffer2.append(" ");
            stringBuffer2.append(Build.MODEL);
            stringBuffer2.append("/");
            stringBuffer2.append(Build.VERSION.RELEASE);
            stringBuffer2.append(" ");
            stringBuffer2.append(av.a(com.b.a.a.a(context)));
            stringBuffer.append(URLEncoder.encode(stringBuffer2.toString(), "UTF-8"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stringBuffer.toString();
    }
}
