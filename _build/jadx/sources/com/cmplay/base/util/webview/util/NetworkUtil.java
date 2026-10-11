package com.cmplay.base.util.webview.util;

import com.cmplay.base.util.g;
import com.mopub.common.Constants;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.EntityUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class NetworkUtil {
    private static final int CONNECTION_TIMEOUT = 10000;
    public static final int NATIVE_ERROR = 600;
    public static final int SOCKET_TIMEOUT = 602;
    private static final int SO_SOCKET_TIMEOUT = 10000;
    public static final int UNKNOWN_HOST = 601;
    private static NetworkUtil sInstance;
    private ExecutorService mExecutorService = Executors.newFixedThreadPool(5);

    public static NetworkUtil getInstance() {
        if (sInstance == null) {
            synchronized (NetworkUtil.class) {
                if (sInstance == null) {
                    sInstance = new NetworkUtil();
                }
            }
        }
        return sInstance;
    }

    private NetworkUtil() {
    }

    public void post(final String url, final HashMap<String, String> params) {
        final DefaultHttpClient httpClient = getHttpClient();
        this.mExecutorService.execute(new Runnable() { // from class: com.cmplay.base.util.webview.util.NetworkUtil.1
            @Override // java.lang.Runnable
            public void run() {
                String str = null;
                int i = NetworkUtil.NATIVE_ERROR;
                try {
                    HttpPost httpPost = new HttpPost(url);
                    g.a("feedback url is " + url);
                    NetworkUtil.this.addMultipartEntityToHttpPost(httpPost, params);
                    HttpResponse execute = httpClient.execute(httpPost);
                    HttpEntity entity = execute.getEntity();
                    i = execute.getStatusLine().getStatusCode();
                    String entityUtils = EntityUtils.toString(entity);
                    NetworkUtil.this.closeHttpClientConnection(httpClient);
                    g.a("Report feedback,status is " + i + ",response msg is " + entityUtils);
                } catch (Exception e) {
                    int i2 = i;
                    try {
                        g.b(e.getMessage());
                        str = e.getMessage();
                        if (e instanceof UnknownHostException) {
                            i2 = NetworkUtil.UNKNOWN_HOST;
                        } else if (e instanceof InterruptedIOException) {
                            i2 = NetworkUtil.SOCKET_TIMEOUT;
                        }
                        NetworkUtil.this.closeHttpClientConnection(httpClient);
                        g.a("Report feedback,status is " + i2 + ",response msg is " + str);
                    } catch (Throwable th) {
                        i = i2;
                        th = th;
                        NetworkUtil.this.closeHttpClientConnection(httpClient);
                        g.a("Report feedback,status is " + i + ",response msg is " + str);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    NetworkUtil.this.closeHttpClientConnection(httpClient);
                    g.a("Report feedback,status is " + i + ",response msg is " + str);
                    throw th;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addMultipartEntityToHttpPost(HttpPost m, HashMap<String, String> params) {
        if (params != null && !params.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<String, String> entry : params.entrySet()) {
                arrayList.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
            }
            try {
                m.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
            } catch (Exception e) {
                g.b(e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void closeHttpClientConnection(DefaultHttpClient client) {
        if (client != null) {
            client.getConnectionManager().shutdown();
        }
    }

    public DefaultHttpClient getHttpClient() {
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, Constants.TEN_SECONDS_MILLIS);
        HttpConnectionParams.setSoTimeout(basicHttpParams, Constants.TEN_SECONDS_MILLIS);
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme(Constants.HTTP, PlainSocketFactory.getSocketFactory(), 80));
        schemeRegistry.register(new Scheme(Constants.HTTPS, getSocketFactory(), 443));
        return new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
    }

    public SSLSocketFactory getSocketFactory() {
        SSLSocketFactory sSLSocketFactory;
        Exception e;
        SSLSocketFactory socketFactory = SSLSocketFactory.getSocketFactory();
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            sSLSocketFactory = new MySSLSocketFactory(keyStore);
        } catch (Exception e2) {
            sSLSocketFactory = socketFactory;
            e = e2;
        }
        try {
            sSLSocketFactory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            return sSLSocketFactory;
        }
        return sSLSocketFactory;
    }

    public class MySSLSocketFactory extends SSLSocketFactory {
        SSLContext sslContext;

        public MySSLSocketFactory(KeyStore truststore) throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException {
            super(truststore);
            this.sslContext = SSLContext.getInstance("TLS");
            this.sslContext.init(null, new TrustManager[]{new X509TrustManager() { // from class: com.cmplay.base.util.webview.util.NetworkUtil.MySSLSocketFactory.1
                @Override // javax.net.ssl.X509TrustManager
                public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
                }

                @Override // javax.net.ssl.X509TrustManager
                public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
                }

                @Override // javax.net.ssl.X509TrustManager
                public X509Certificate[] getAcceptedIssuers() {
                    return null;
                }
            }}, null);
        }

        @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
        public Socket createSocket(Socket socket, String host, int port, boolean autoClose) throws IOException, UnknownHostException {
            return this.sslContext.getSocketFactory().createSocket(socket, host, port, autoClose);
        }

        @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
        public Socket createSocket() throws IOException {
            return this.sslContext.getSocketFactory().createSocket();
        }
    }
}
