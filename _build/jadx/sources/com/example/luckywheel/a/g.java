package com.example.luckywheel.a;

import android.os.Build;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HttpsURLConnection;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g {

    public interface a extends b {
        void a(long j, long j2);
    }

    public interface b {
        boolean a();
    }

    public static class c {

        /* renamed from: b, reason: collision with root package name */
        protected final b f2280b;
        protected final boolean c;

        public c(b bVar) {
            this(bVar, true);
        }

        public c(b bVar, boolean z) {
            this.f2280b = bVar;
            this.c = z;
        }

        public void a(int i, String str) throws Exception {
            throw new ProtocolException(str);
        }

        public void a(int i, String str, InputStream inputStream) throws Exception {
            String str2;
            try {
                try {
                    str2 = g.a(inputStream, str, this.f2280b);
                } catch (Throwable th) {
                    Log.e("HttpClient", "Read error stream: ", th);
                    g.a(inputStream);
                    str2 = "";
                }
                if (i == 404) {
                    Log.e("HttpClient", "on4xxError statusCode == 404");
                    throw new FileNotFoundException(str2);
                }
                a(i, str2);
            } finally {
                g.a(inputStream);
            }
        }

        public void a(int i, String str, String str2, long j, InputStream inputStream) throws Exception {
            Log.d("HttpClient", "default download");
            try {
                do {
                } while (inputStream.read(new byte[16384]) >= 0);
            } catch (Throwable th) {
                Log.e("HttpClient", "default download: ", th);
            } finally {
                g.a(inputStream);
            }
        }

        public void a(HttpURLConnection httpURLConnection) throws Exception {
            Log.d("HttpClient", "default upload");
            if (Build.VERSION.SDK_INT < 11) {
                httpURLConnection.setRequestProperty("Content-Length", "0");
            }
        }

        public void a(HttpURLConnection httpURLConnection, int i) throws Exception {
            if (i >= 200 && i < 300) {
                String contentType = httpURLConnection.getContentType();
                a(i, g.b(contentType), g.a(contentType), httpURLConnection.getContentLength(), g.b(httpURLConnection));
            } else {
                if (i < 400 || i >= 500) {
                    Log.e("HttpClient", "onResponse throw UnknownHostException!");
                    throw new UnknownHostException(Integer.toString(i) + " " + httpURLConnection.getResponseMessage());
                }
                a(i, g.a(httpURLConnection.getContentType()), g.a(httpURLConnection.getErrorStream(), httpURLConnection.getContentEncoding()));
            }
        }

        public void a(HttpsURLConnection httpsURLConnection) throws Exception {
        }

        public boolean a(HttpURLConnection httpURLConnection, String str) throws Exception {
            return true;
        }

        public void b(HttpURLConnection httpURLConnection) {
            g.a(httpURLConnection);
        }
    }

    public static long a(InputStream inputStream, OutputStream outputStream, long j, int i, b bVar) throws Exception {
        long j2 = 0;
        if (j <= 0) {
            j = inputStream.available();
        }
        a aVar = (!(bVar instanceof a) || j <= 0) ? null : (a) bVar;
        byte[] bArr = new byte[i];
        while (true) {
            int read = inputStream.read(bArr);
            if (read < 0) {
                return j2;
            }
            if (read > 0) {
                outputStream.write(bArr, 0, read);
                j2 += read;
                if (aVar != null) {
                    aVar.a(j2, j);
                }
            }
            a(bVar);
        }
    }

    public static long a(InputStream inputStream, OutputStream outputStream, long j, b bVar) throws Exception {
        return a(inputStream, outputStream, j, 16384, bVar);
    }

    public static InputStream a(InputStream inputStream, String str) throws Exception {
        return (inputStream != null && "gzip".equals(str)) ? new GZIPInputStream(inputStream, 16384) : inputStream;
    }

    public static String a(InputStream inputStream, String str, long j, b bVar) throws Exception {
        ByteArrayOutputStream byteArrayOutputStream;
        if (inputStream == null) {
            return "";
        }
        try {
            byteArrayOutputStream = new ByteArrayOutputStream(262144);
            try {
                a(inputStream, byteArrayOutputStream, j, bVar);
                String str2 = new String(byteArrayOutputStream.toByteArray(), str);
                a(byteArrayOutputStream);
                return str2;
            } catch (Throwable th) {
                th = th;
                a(byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream = null;
        }
    }

    public static String a(InputStream inputStream, String str, b bVar) throws Exception {
        return a(inputStream, str, -1L, bVar);
    }

    public static String a(String str) {
        if (str != null) {
            String[] split = str.split(";");
            for (int i = 1; i < split.length; i++) {
                String[] split2 = split[i].trim().split("=");
                if (split2.length == 2 && split2[0].equals("charset")) {
                    return split2[1];
                }
            }
        }
        return "UTF-8";
    }

    public static HttpURLConnection a(String str, String str2, Map<String, String> map, int i, int i2) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setConnectTimeout(i);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setReadTimeout(i2);
        a(httpURLConnection, str2);
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        return httpURLConnection;
    }

    public static void a(b bVar) throws com.example.luckywheel.a.b {
        if (bVar != null && bVar.a()) {
            throw new com.example.luckywheel.a.b();
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                Log.e("HttpClient", "close: ", th);
            }
        }
    }

    public static void a(String str, String str2, Map<String, String> map, c cVar, int i, int i2) throws Exception {
        HttpURLConnection httpURLConnection;
        int responseCode;
        int i3 = 5;
        String str3 = null;
        while (true) {
            if (map == null) {
                try {
                    map = new HashMap<>(1);
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = null;
                    cVar.b(httpURLConnection);
                    throw th;
                }
            }
            if (!map.containsKey("Accept-Encoding")) {
                map.put("Accept-Encoding", cVar.c ? "gzip, identity" : "identity");
            }
            httpURLConnection = a(str, str2, map, i, i2);
            try {
                httpURLConnection.setInstanceFollowRedirects(false);
                if (str3 != null) {
                    int indexOf = str3.indexOf(59);
                    if (indexOf != -1) {
                        str3 = str3.substring(0, indexOf);
                    }
                    httpURLConnection.setRequestProperty("Cookie", str3);
                }
                if (httpURLConnection instanceof HttpsURLConnection) {
                    cVar.a((HttpsURLConnection) httpURLConnection);
                }
                if ("POST".equals(str2) || "PUT".equals(str2) || "DELETE".equals(str2) || "MOVE".equals(str2)) {
                    cVar.a(httpURLConnection);
                }
                try {
                    responseCode = httpURLConnection.getResponseCode();
                } catch (IOException e) {
                    String message = e.getMessage();
                    if (message == null || !message.contains("authentication challenge")) {
                        throw e;
                    }
                    responseCode = httpURLConnection.getResponseCode();
                }
                if ((responseCode == 302 || responseCode == 301 || responseCode == 303) && (str = httpURLConnection.getHeaderField("Location")) != null) {
                    str3 = httpURLConnection.getHeaderField("Set-Cookie");
                    if (!cVar.a(httpURLConnection, str)) {
                        break;
                    }
                    cVar.b(httpURLConnection);
                    int i4 = i3 - 1;
                    if (i4 <= 0) {
                        throw new UnknownHostException("HTTP error or redirect too many times");
                    }
                    i3 = i4;
                }
            } catch (Throwable th2) {
                th = th2;
                cVar.b(httpURLConnection);
                throw th;
            }
        }
        cVar.a(httpURLConnection, responseCode);
        if (responseCode < 200 || responseCode >= 300) {
        }
        cVar.b(httpURLConnection);
    }

    public static void a(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Throwable th) {
                Log.e("HttpClient", "disconnect: ", th);
            }
        }
    }

    public static void a(HttpURLConnection httpURLConnection, long j) {
        Class<?> cls = httpURLConnection.getClass();
        try {
            Field declaredField = cls.getDeclaredField("delegate");
            declaredField.setAccessible(true);
            a((HttpURLConnection) declaredField.get(httpURLConnection), j);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (IllegalArgumentException e2) {
            throw new RuntimeException(e2);
        } catch (NoSuchFieldException e3) {
            try {
                Field declaredField2 = cls.getDeclaredField("httpsEngine");
                declaredField2.setAccessible(true);
                a((HttpURLConnection) declaredField2.get(httpURLConnection), j);
            } catch (Exception e4) {
            }
        }
        httpURLConnection.setRequestProperty("Content-Length", Long.toString(j));
        if (Build.VERSION.SDK_INT >= 19) {
            httpURLConnection.setFixedLengthStreamingMode(j);
        } else if (j <= 2147483647L) {
            httpURLConnection.setFixedLengthStreamingMode((int) j);
        }
    }

    public static void a(HttpURLConnection httpURLConnection, String str) {
        Class<?> cls;
        try {
            httpURLConnection.setRequestMethod(str);
        } catch (ProtocolException e) {
            Class<?> cls2 = httpURLConnection.getClass();
            try {
                Field declaredField = cls2.getDeclaredField("delegate");
                declaredField.setAccessible(true);
                a((HttpURLConnection) declaredField.get(httpURLConnection), str);
                cls = cls2;
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(e2);
            } catch (IllegalArgumentException e3) {
                throw new RuntimeException(e3);
            } catch (NoSuchFieldException e4) {
                try {
                    Field declaredField2 = cls2.getDeclaredField("httpsEngine");
                    declaredField2.setAccessible(true);
                    a((HttpURLConnection) declaredField2.get(httpURLConnection), str);
                } catch (Exception e5) {
                }
                cls = cls2;
            }
            while (cls != null) {
                try {
                    Field declaredField3 = cls.getDeclaredField("method");
                    declaredField3.setAccessible(true);
                    declaredField3.set(httpURLConnection, str);
                    return;
                } catch (NoSuchFieldException e6) {
                    cls = cls.getSuperclass();
                } catch (Exception e7) {
                    throw new RuntimeException(e7);
                }
            }
        }
    }

    public static void a(HttpURLConnection httpURLConnection, String str, String str2) throws Exception {
        byte[] bytes = str2.getBytes("UTF-8");
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestProperty("Content-Type", str);
        httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bytes.length));
        a(httpURLConnection, bytes.length);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        outputStream.write(bytes);
        outputStream.flush();
        outputStream.close();
    }

    public static InputStream b(HttpURLConnection httpURLConnection) throws Exception {
        return a(httpURLConnection.getInputStream(), httpURLConnection.getContentEncoding());
    }

    public static String b(String str) {
        String str2 = "";
        if (str != null) {
            int indexOf = str.indexOf(";");
            if (indexOf > 0) {
                str = str.substring(0, indexOf);
            }
            str2 = str.toLowerCase().trim();
        }
        return str2.length() == 0 ? "*/*" : str2;
    }
}
