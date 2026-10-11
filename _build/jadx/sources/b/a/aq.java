package b.a;

import com.applovin.sdk.AppLovinEventTypes;
import com.mopub.common.Constants;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Map;
import java.util.Random;
import java.util.zip.GZIPInputStream;
import java.util.zip.InflaterInputStream;
import org.apache.commons.io.IOUtils;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: UClient.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class aq {

    /* renamed from: a, reason: collision with root package name */
    private static final String f68a = aq.class.getName();

    /* renamed from: b, reason: collision with root package name */
    private Map<String, String> f69b;

    public <T extends as> T a(ar arVar, Class<T> cls) {
        JSONObject a2;
        String trim = arVar.c().trim();
        b(trim);
        if (ar.c.equals(trim)) {
            a2 = a(arVar.b());
        } else {
            a2 = ar.f70b.equals(trim) ? a(arVar.d, arVar.a()) : null;
        }
        if (a2 == null) {
            return null;
        }
        try {
            return cls.getConstructor(JSONObject.class).newInstance(a2);
        } catch (IllegalAccessException e) {
            ap.b(f68a, "IllegalAccessException", e);
            return null;
        } catch (IllegalArgumentException e2) {
            ap.b(f68a, "IllegalArgumentException", e2);
            return null;
        } catch (InstantiationException e3) {
            ap.b(f68a, "InstantiationException", e3);
            return null;
        } catch (NoSuchMethodException e4) {
            ap.b(f68a, "NoSuchMethodException", e4);
            return null;
        } catch (SecurityException e5) {
            ap.b(f68a, "SecurityException", e5);
            return null;
        } catch (InvocationTargetException e6) {
            ap.b(f68a, "InvocationTargetException", e6);
            return null;
        }
    }

    private JSONObject a(String str, JSONObject jSONObject) {
        String jSONObject2 = jSONObject.toString();
        int nextInt = new Random().nextInt(1000);
        ap.c(f68a, String.valueOf(nextInt) + ":\trequest: " + str + av.f74a + jSONObject2);
        HttpPost httpPost = new HttpPost(str);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(b());
        try {
            if (a()) {
                byte[] a2 = au.a(jSONObject2, Charset.defaultCharset().name());
                httpPost.addHeader("Content-Encoding", "deflate");
                httpPost.setEntity(new InputStreamEntity(new ByteArrayInputStream(a2), a2.length));
            } else {
                ArrayList arrayList = new ArrayList(1);
                arrayList.add(new BasicNameValuePair(AppLovinEventTypes.USER_VIEWED_CONTENT, jSONObject2));
                httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
            }
            HttpResponse execute = defaultHttpClient.execute(httpPost);
            Header firstHeader = execute.getFirstHeader("Content-Type");
            boolean z = execute.getStatusLine().getStatusCode() == 200;
            boolean a3 = av.a(firstHeader, "application/json");
            if (z && a3) {
                HttpEntity entity = execute.getEntity();
                if (entity == null) {
                    return null;
                }
                InputStream content = entity.getContent();
                Header firstHeader2 = execute.getFirstHeader("Content-Encoding");
                String a4 = a((firstHeader2 == null || !firstHeader2.getValue().equalsIgnoreCase("deflate")) ? content : new InflaterInputStream(content));
                ap.a(f68a, String.valueOf(nextInt) + ":\tresponse: " + av.f74a + a4);
                if (a4 == null) {
                    return null;
                }
                return new JSONObject(a4);
            }
            ap.c(f68a, String.valueOf(nextInt) + ":\tFailed to send message. StatusCode = " + execute.getStatusLine().getStatusCode() + av.f74a + str);
            return null;
        } catch (ClientProtocolException e) {
            ap.c(f68a, String.valueOf(nextInt) + ":\tClientProtocolException,Failed to send message." + str, e);
            return null;
        } catch (IOException e2) {
            ap.c(f68a, String.valueOf(nextInt) + ":\tIOException,Failed to send message." + str, e2);
            return null;
        } catch (JSONException e3) {
            ap.c(f68a, String.valueOf(nextInt) + ":\tIOException,Failed to send message." + str, e3);
            return null;
        }
    }

    public boolean a() {
        return false;
    }

    private static String a(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 8192);
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb.append(String.valueOf(readLine) + IOUtils.LINE_SEPARATOR_UNIX);
                    } else {
                        try {
                            inputStream.close();
                            return sb.toString();
                        } catch (IOException e) {
                            ap.b(f68a, "Caught IOException in convertStreamToString()", e);
                            return null;
                        }
                    }
                } catch (IOException e2) {
                    ap.b(f68a, "Caught IOException in convertStreamToString()", e2);
                    try {
                        inputStream.close();
                        return null;
                    } catch (IOException e3) {
                        ap.b(f68a, "Caught IOException in convertStreamToString()", e3);
                        return null;
                    }
                }
            } catch (Throwable th) {
                try {
                    inputStream.close();
                    throw th;
                } catch (IOException e4) {
                    ap.b(f68a, "Caught IOException in convertStreamToString()", e4);
                    return null;
                }
            }
        }
    }

    private JSONObject a(String str) {
        InputStream inputStream;
        int nextInt = new Random().nextInt(1000);
        try {
            String property = System.getProperty("line.separator");
            if (str.length() <= 1) {
                ap.b(f68a, String.valueOf(nextInt) + ":\tInvalid baseUrl.");
                return null;
            }
            ap.a(f68a, String.valueOf(nextInt) + ":\tget: " + str);
            HttpGet httpGet = new HttpGet(str);
            if (this.f69b != null && this.f69b.size() > 0) {
                for (String str2 : this.f69b.keySet()) {
                    httpGet.addHeader(str2, this.f69b.get(str2));
                }
            }
            HttpResponse execute = new DefaultHttpClient(b()).execute(httpGet);
            if (execute.getStatusLine().getStatusCode() == 200) {
                HttpEntity entity = execute.getEntity();
                if (entity != null) {
                    InputStream content = entity.getContent();
                    Header firstHeader = execute.getFirstHeader("Content-Encoding");
                    if (firstHeader != null && firstHeader.getValue().equalsIgnoreCase("gzip")) {
                        ap.a(f68a, String.valueOf(nextInt) + "  Use GZIPInputStream get data....");
                        inputStream = new GZIPInputStream(content);
                    } else if (firstHeader == null || !firstHeader.getValue().equalsIgnoreCase("deflate")) {
                        inputStream = content;
                    } else {
                        ap.a(f68a, String.valueOf(nextInt) + "  Use InflaterInputStream get data....");
                        inputStream = new InflaterInputStream(content);
                    }
                    String a2 = a(inputStream);
                    ap.a(f68a, String.valueOf(nextInt) + ":\tresponse: " + property + a2);
                    if (a2 == null) {
                        return null;
                    }
                    return new JSONObject(a2);
                }
            } else {
                ap.c(f68a, String.valueOf(nextInt) + ":\tFailed to send message. StatusCode = " + execute.getStatusLine().getStatusCode() + av.f74a + str);
            }
            return null;
        } catch (ClientProtocolException e) {
            ap.c(f68a, String.valueOf(nextInt) + ":\tClientProtocolException,Failed to send message." + str, e);
            return null;
        } catch (Exception e2) {
            ap.c(f68a, String.valueOf(nextInt) + ":\tIOException,Failed to send message." + str, e2);
            return null;
        }
    }

    private HttpParams b() {
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, Constants.TEN_SECONDS_MILLIS);
        HttpConnectionParams.setSoTimeout(basicHttpParams, 20000);
        HttpProtocolParams.setUserAgent(basicHttpParams, System.getProperty("http.agent"));
        return basicHttpParams;
    }

    private void b(String str) {
        if (av.c(str) || !(ar.c.equals(str.trim()) ^ ar.f70b.equals(str.trim()))) {
            throw new RuntimeException("验证请求方式失败[" + str + "]");
        }
    }
}
