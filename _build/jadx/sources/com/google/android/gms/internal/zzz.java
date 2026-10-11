package com.google.android.gms.internal;

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

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzz implements zzy {
    private final zza zzce;
    private final SSLSocketFactory zzcf;

    public interface zza {
        String zzh(String str);
    }

    public zzz() {
        this(null);
    }

    public zzz(zza zzaVar) {
        this(zzaVar, null);
    }

    public zzz(zza zzaVar, SSLSocketFactory sSLSocketFactory) {
        this.zzce = zzaVar;
        this.zzcf = sSLSocketFactory;
    }

    private HttpURLConnection zza(URL url, zzk<?> zzkVar) throws IOException {
        HttpURLConnection zza2 = zza(url);
        int zzs = zzkVar.zzs();
        zza2.setConnectTimeout(zzs);
        zza2.setReadTimeout(zzs);
        zza2.setUseCaches(false);
        zza2.setDoInput(true);
        if (Constants.HTTPS.equals(url.getProtocol()) && this.zzcf != null) {
            ((HttpsURLConnection) zza2).setSSLSocketFactory(this.zzcf);
        }
        return zza2;
    }

    private static HttpEntity zza(HttpURLConnection httpURLConnection) {
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

    static void zza(HttpURLConnection httpURLConnection, zzk<?> zzkVar) throws IOException, com.google.android.gms.internal.zza {
        switch (zzkVar.getMethod()) {
            case -1:
                byte[] zzl = zzkVar.zzl();
                if (zzl != null) {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.addRequestProperty("Content-Type", zzkVar.zzk());
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(zzl);
                    dataOutputStream.close();
                    return;
                }
                return;
            case 0:
                httpURLConnection.setRequestMethod("GET");
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                zzb(httpURLConnection, zzkVar);
                return;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                zzb(httpURLConnection, zzkVar);
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
                zzb(httpURLConnection, zzkVar);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    private static void zzb(HttpURLConnection httpURLConnection, zzk<?> zzkVar) throws IOException, com.google.android.gms.internal.zza {
        byte[] zzp = zzkVar.zzp();
        if (zzp != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.addRequestProperty("Content-Type", zzkVar.zzo());
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(zzp);
            dataOutputStream.close();
        }
    }

    protected HttpURLConnection zza(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    @Override // com.google.android.gms.internal.zzy
    public HttpResponse zza(zzk<?> zzkVar, Map<String, String> map) throws IOException, com.google.android.gms.internal.zza {
        String str;
        String url = zzkVar.getUrl();
        HashMap hashMap = new HashMap();
        hashMap.putAll(zzkVar.getHeaders());
        hashMap.putAll(map);
        if (this.zzce != null) {
            str = this.zzce.zzh(url);
            if (str == null) {
                String valueOf = String.valueOf(url);
                throw new IOException(valueOf.length() != 0 ? "URL blocked by rewriter: ".concat(valueOf) : new String("URL blocked by rewriter: "));
            }
        } else {
            str = url;
        }
        HttpURLConnection zza2 = zza(new URL(str), zzkVar);
        for (String str2 : hashMap.keySet()) {
            zza2.addRequestProperty(str2, (String) hashMap.get(str2));
        }
        zza(zza2, zzkVar);
        ProtocolVersion protocolVersion = new ProtocolVersion("HTTP", 1, 1);
        if (zza2.getResponseCode() == -1) {
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        }
        BasicHttpResponse basicHttpResponse = new BasicHttpResponse(new BasicStatusLine(protocolVersion, zza2.getResponseCode(), zza2.getResponseMessage()));
        basicHttpResponse.setEntity(zza(zza2));
        for (Map.Entry<String, List<String>> entry : zza2.getHeaderFields().entrySet()) {
            if (entry.getKey() != null) {
                basicHttpResponse.addHeader(new BasicHeader(entry.getKey(), entry.getValue().get(0)));
            }
        }
        return basicHttpResponse;
    }
}
