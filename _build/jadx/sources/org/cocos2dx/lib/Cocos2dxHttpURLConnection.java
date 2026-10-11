package org.cocos2dx.lib;

import android.util.Log;
import com.unity3d.ads.metadata.MediationMetaData;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Cocos2dxHttpURLConnection {
    private static final String POST_METHOD = "POST";
    private static final String PUT_METHOD = "PUT";

    static HttpURLConnection createHttpURLConnection(String linkURL) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(linkURL).openConnection();
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        } catch (Exception e) {
            Log.e("Cocos2dxHttpURLConnection exception", e.toString());
            return null;
        }
    }

    static void setReadAndConnectTimeout(HttpURLConnection urlConnection, int readMiliseconds, int connectMiliseconds) {
        urlConnection.setReadTimeout(readMiliseconds);
        urlConnection.setConnectTimeout(connectMiliseconds);
    }

    static void setRequestMethod(HttpURLConnection urlConnection, String method) {
        try {
            urlConnection.setRequestMethod(method);
            if (method.equalsIgnoreCase(POST_METHOD) || method.equalsIgnoreCase(PUT_METHOD)) {
                urlConnection.setDoOutput(true);
            }
        } catch (ProtocolException e) {
            Log.e("Cocos2dxHttpURLConnection exception", e.toString());
        }
    }

    static void setVerifySSL(HttpURLConnection urlConnection, String sslFilename) {
        BufferedInputStream bufferedInputStream;
        if (urlConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) urlConnection;
            try {
                if (sslFilename.startsWith("/")) {
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(sslFilename));
                } else {
                    bufferedInputStream = new BufferedInputStream(Cocos2dxHelper.getActivity().getAssets().open(sslFilename.substring("assets/".length())));
                }
                Certificate generateCertificate = CertificateFactory.getInstance("X.509").generateCertificate(bufferedInputStream);
                System.out.println("ca=" + ((X509Certificate) generateCertificate).getSubjectDN());
                bufferedInputStream.close();
                KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                keyStore.load(null, null);
                keyStore.setCertificateEntry("ca", generateCertificate);
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init(keyStore);
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                sSLContext.init(null, trustManagerFactory.getTrustManagers(), null);
                httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
            } catch (Exception e) {
                Log.e("Cocos2dxHttpURLConnection exception", e.toString());
            }
        }
    }

    static void addRequestHeader(HttpURLConnection urlConnection, String key, String value) {
        urlConnection.setRequestProperty(key, value);
    }

    static int connect(HttpURLConnection http) {
        try {
            http.connect();
            return 0;
        } catch (IOException e) {
            Log.e("cocos2d-x debug info", "come in connect");
            Log.e("cocos2d-x debug info", e.toString());
            return 1;
        }
    }

    static void disconnect(HttpURLConnection http) {
        http.disconnect();
    }

    static void sendRequest(HttpURLConnection http, byte[] byteArray) {
        try {
            OutputStream outputStream = http.getOutputStream();
            if (byteArray != null) {
                outputStream.write(byteArray);
                outputStream.flush();
            }
            outputStream.close();
        } catch (IOException e) {
            Log.e("Cocos2dxHttpURLConnection exception", e.toString());
        }
    }

    static String getResponseHeaders(HttpURLConnection http) {
        Map<String, List<String>> headerFields = http.getHeaderFields();
        if (headerFields == null) {
            return null;
        }
        String str = "";
        Iterator<Map.Entry<String, List<String>>> it = headerFields.entrySet().iterator();
        while (true) {
            String str2 = str;
            if (it.hasNext()) {
                Map.Entry<String, List<String>> next = it.next();
                String key = next.getKey();
                if (key == null) {
                    str = str2 + listToString(next.getValue(), ",") + IOUtils.LINE_SEPARATOR_UNIX;
                } else {
                    str = str2 + key + ":" + listToString(next.getValue(), ",") + IOUtils.LINE_SEPARATOR_UNIX;
                }
            } else {
                return str2;
            }
        }
    }

    static String getResponseHeaderByIdx(HttpURLConnection http, int idx) {
        String str;
        Map<String, List<String>> headerFields = http.getHeaderFields();
        if (headerFields == null) {
            return null;
        }
        int i = 0;
        Iterator<Map.Entry<String, List<String>>> it = headerFields.entrySet().iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                str = null;
                break;
            }
            Map.Entry<String, List<String>> next = it.next();
            if (i2 == idx) {
                String key = next.getKey();
                if (key == null) {
                    str = listToString(next.getValue(), ",") + IOUtils.LINE_SEPARATOR_UNIX;
                } else {
                    str = key + ":" + listToString(next.getValue(), ",") + IOUtils.LINE_SEPARATOR_UNIX;
                }
            } else {
                i = i2 + 1;
            }
        }
        return str;
    }

    static String getResponseHeaderByKey(HttpURLConnection http, String key) {
        Map<String, List<String>> headerFields;
        String str;
        if (key == null || (headerFields = http.getHeaderFields()) == null) {
            return null;
        }
        Iterator<Map.Entry<String, List<String>>> it = headerFields.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                str = null;
                break;
            }
            Map.Entry<String, List<String>> next = it.next();
            if (key.equalsIgnoreCase(next.getKey())) {
                if ("set-cookie".equalsIgnoreCase(key)) {
                    str = combinCookies(next.getValue(), http.getURL().getHost());
                } else {
                    str = listToString(next.getValue(), ",");
                }
            }
        }
        return str;
    }

    static int getResponseHeaderByKeyInt(HttpURLConnection http, String key) {
        String headerField = http.getHeaderField(key);
        if (headerField == null) {
            return 0;
        }
        return Integer.parseInt(headerField);
    }

    static byte[] getResponseContent(HttpURLConnection http) {
        try {
            DataInputStream dataInputStream = new DataInputStream(http.getInputStream());
            byte[] bArr = new byte[1024];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int read = dataInputStream.read(bArr, 0, 1024);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return byteArray;
                }
            }
        } catch (Exception e) {
            Log.e("Cocos2dxHttpURLConnection exception", e.toString());
            return null;
        }
    }

    static int getResponseCode(HttpURLConnection http) {
        try {
            return http.getResponseCode();
        } catch (IOException e) {
            Log.e("Cocos2dxHttpURLConnection exception", e.toString());
            return 0;
        }
    }

    static String getResponseMessage(HttpURLConnection http) {
        try {
            return http.getResponseMessage();
        } catch (IOException e) {
            String iOException = e.toString();
            Log.e("Cocos2dxHttpURLConnection exception", iOException);
            return iOException;
        }
    }

    public static String listToString(List<String> list, String strInterVal) {
        if (list == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        Iterator<String> it = list.iterator();
        while (true) {
            boolean z2 = z;
            if (it.hasNext()) {
                String next = it.next();
                if (z2) {
                    sb.append(strInterVal);
                }
                if (next == null) {
                    next = "";
                }
                sb.append(next);
                z = true;
            } else {
                return sb.toString();
            }
        }
    }

    public static String combinCookies(List<String> list, String hostDomain) {
        StringBuilder sb = new StringBuilder();
        String str = "/";
        String str2 = "FALSE";
        String str3 = null;
        String str4 = null;
        String str5 = null;
        Iterator<String> it = list.iterator();
        while (true) {
            String str6 = str;
            String str7 = str2;
            String str8 = str3;
            String str9 = str4;
            String str10 = str5;
            if (it.hasNext()) {
                str5 = str10;
                str4 = str9;
                str3 = str8;
                str2 = str7;
                str = str6;
                String str11 = hostDomain;
                for (String str12 : it.next().split(";")) {
                    int indexOf = str12.indexOf("=");
                    if (-1 != indexOf) {
                        String[] strArr = {str12.substring(0, indexOf), str12.substring(indexOf + 1)};
                        if ("expires".equalsIgnoreCase(strArr[0].trim())) {
                            str5 = str2Seconds(strArr[1].trim());
                        } else if ("path".equalsIgnoreCase(strArr[0].trim())) {
                            str = strArr[1];
                        } else if ("secure".equalsIgnoreCase(strArr[0].trim())) {
                            str2 = strArr[1];
                        } else if ("domain".equalsIgnoreCase(strArr[0].trim())) {
                            str11 = strArr[1];
                        } else if (!MediationMetaData.KEY_VERSION.equalsIgnoreCase(strArr[0].trim()) && !"max-age".equalsIgnoreCase(strArr[0].trim())) {
                            str3 = strArr[0];
                            str4 = strArr[1];
                        }
                    }
                }
                if (str11 == null) {
                    str11 = "none";
                }
                sb.append(str11);
                sb.append('\t');
                sb.append("FALSE");
                sb.append('\t');
                sb.append(str);
                sb.append('\t');
                sb.append(str2);
                sb.append('\t');
                sb.append(str5);
                sb.append("\t");
                sb.append(str3);
                sb.append("\t");
                sb.append(str4);
                sb.append('\n');
                hostDomain = str11;
            } else {
                return sb.toString();
            }
        }
    }

    private static String str2Seconds(String strTime) {
        Calendar calendar = Calendar.getInstance();
        long j = 0;
        try {
            calendar.setTime(new SimpleDateFormat("EEE, dd-MMM-yy hh:mm:ss zzz", Locale.US).parse(strTime));
            j = calendar.getTimeInMillis() / 1000;
        } catch (ParseException e) {
            Log.e("Cocos2dxHttpURLConnection exception", e.toString());
        }
        return Long.toString(j);
    }
}
