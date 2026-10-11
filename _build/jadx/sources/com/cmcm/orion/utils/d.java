package com.cmcm.orion.utils;

import android.net.SSLCertificateSocketFactory;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.TypedValue;
import com.cmcm.orion.picks.a.a.h;
import com.cmcm.orion.picks.impl.a;
import com.mopub.common.Constants;
import com.mopub.volley.toolbox.HttpClientStack;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.Socket;
import java.net.URL;
import java.util.HashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: Networking.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    private static final int f1066a;

    /* renamed from: b, reason: collision with root package name */
    private static final int f1067b;
    private static Executor c;
    private static Executor d;

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f1066a = availableProcessors;
        f1067b = Math.max(availableProcessors, 5);
        c = a();
        d = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(128), Executors.defaultThreadFactory());
    }

    private static Executor a() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f1067b, f1067b, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(128), Executors.defaultThreadFactory());
        try {
            threadPoolExecutor.allowCoreThreadTimeOut(true);
        } catch (Exception e) {
        } catch (NoSuchMethodError e2) {
        }
        return threadPoolExecutor;
    }

    public static b a(String str) {
        return a(str, (a.InterfaceC0019a) null);
    }

    public static b a(String str, String str2, a.InterfaceC0019a interfaceC0019a) {
        return b(str, str2, interfaceC0019a);
    }

    private static b b(String str, String str2, a.InterfaceC0019a interfaceC0019a) {
        b bVar = new b();
        if (!TextUtils.isEmpty(str2)) {
            try {
                bVar.a(str2.getBytes("UTF-8"));
            } catch (UnsupportedEncodingException e) {
            }
        }
        bVar.a(str);
        bVar.a(interfaceC0019a);
        bVar.a(1);
        if (a(c, bVar)) {
            return bVar;
        }
        return null;
    }

    private static boolean a(Executor executor, final b bVar) {
        try {
            executor.execute(new Runnable() { // from class: com.cmcm.orion.utils.d.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        d.a(b.this);
                    } catch (Exception e) {
                    }
                }
            });
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x005b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.cmcm.orion.utils.b.AnonymousClass1 b(java.lang.String r6) {
        /*
            r0 = 0
            com.cmcm.orion.utils.d$b r1 = new com.cmcm.orion.utils.d$b
            r1.<init>()
            r1.a(r6)
            r2 = -1
            java.net.HttpURLConnection r4 = b(r1)     // Catch: java.lang.Throwable -> L3c java.lang.Throwable -> L55
            int r2 = r4.getResponseCode()     // Catch: java.lang.Throwable -> L6a java.lang.Throwable -> L70
            r1 = 200(0xc8, float:2.8E-43)
            if (r2 != r1) goto L79
            java.lang.String r1 = r4.getContentType()     // Catch: java.lang.Throwable -> L6a java.lang.Throwable -> L70
            java.lang.String r1 = d(r1)     // Catch: java.lang.Throwable -> L6a java.lang.Throwable -> L70
            java.io.InputStream r3 = r4.getInputStream()     // Catch: java.lang.Throwable -> L6a java.lang.Throwable -> L70
            java.lang.String r1 = a(r3, r1)     // Catch: java.lang.Throwable -> L6e java.lang.Throwable -> L73
        L26:
            if (r3 == 0) goto L2b
            r3.close()     // Catch: java.io.IOException -> L64
        L2b:
            if (r4 == 0) goto L30
            r4.disconnect()
        L30:
            com.cmcm.orion.utils.b$1 r3 = new com.cmcm.orion.utils.b$1
            r3.<init>()
            r3.f1063a = r1
            r3.f1064b = r2
            r3.c = r0
            return r3
        L3c:
            r1 = move-exception
            r3 = r0
            r4 = r0
        L3f:
            java.lang.Class r1 = r1.getClass()     // Catch: java.lang.Throwable -> L6e
            java.lang.String r1 = r1.getName()     // Catch: java.lang.Throwable -> L6e
            if (r3 == 0) goto L4c
            r3.close()     // Catch: java.io.IOException -> L66
        L4c:
            if (r4 == 0) goto L75
            r4.disconnect()
            r5 = r1
            r1 = r0
            r0 = r5
            goto L30
        L55:
            r1 = move-exception
            r3 = r0
            r4 = r0
            r0 = r1
        L59:
            if (r3 == 0) goto L5e
            r3.close()     // Catch: java.io.IOException -> L68
        L5e:
            if (r4 == 0) goto L63
            r4.disconnect()
        L63:
            throw r0
        L64:
            r3 = move-exception
            goto L2b
        L66:
            r3 = move-exception
            goto L4c
        L68:
            r1 = move-exception
            goto L5e
        L6a:
            r1 = move-exception
            r3 = r0
            r0 = r1
            goto L59
        L6e:
            r0 = move-exception
            goto L59
        L70:
            r1 = move-exception
            r3 = r0
            goto L3f
        L73:
            r1 = move-exception
            goto L3f
        L75:
            r5 = r1
            r1 = r0
            r0 = r5
            goto L30
        L79:
            r1 = r0
            r3 = r0
            goto L26
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmcm.orion.utils.d.b(java.lang.String):com.cmcm.orion.utils.b$1");
    }

    public static String c(String str) {
        TypedValue typedValue = new TypedValue();
        byte[] a2 = a(str, typedValue);
        if (a2 != null) {
            try {
                return new String(a2, String.valueOf(typedValue.string));
            } catch (UnsupportedEncodingException e) {
            }
        }
        return null;
    }

    private static byte[] a(String str, TypedValue typedValue) {
        HttpURLConnection httpURLConnection;
        Throwable th;
        InputStream inputStream;
        byte[] bArr = null;
        b bVar = new b();
        bVar.a(str);
        try {
            httpURLConnection = b(bVar);
        } catch (Throwable th2) {
            httpURLConnection = null;
            th = th2;
            inputStream = null;
        }
        if (httpURLConnection != null) {
            try {
            } catch (Throwable th3) {
                inputStream = null;
                th = th3;
            }
            if (httpURLConnection.getResponseCode() == 200) {
                typedValue.string = d(httpURLConnection.getContentType());
                inputStream = httpURLConnection.getInputStream();
                try {
                    bArr = a(inputStream);
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                        }
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } catch (Throwable th4) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e2) {
                        }
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    return bArr;
                }
                return bArr;
            }
        }
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        return bArr;
    }

    public static String a(InputStream inputStream, String str) {
        try {
            byte[] a2 = a(inputStream);
            if (a2 != null) {
                return new String(a2, str);
            }
        } catch (Exception e) {
        }
        return null;
    }

    private static byte[] a(InputStream inputStream) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read >= 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (Exception e) {
            return null;
        }
    }

    /* compiled from: Networking.java */
    public static class b {

        /* renamed from: b, reason: collision with root package name */
        private String f1071b;
        private byte[] d;
        private a.InterfaceC0019a e;
        private String g;

        /* renamed from: a, reason: collision with root package name */
        private int f1070a = 0;
        private HashMap<String, String> c = new HashMap<>();
        private boolean f = false;
        private int h = Constants.TEN_SECONDS_MILLIS;

        b() {
            this.c.put("User-Agent", h.d());
        }

        public final void a(a.InterfaceC0019a interfaceC0019a) {
            this.e = interfaceC0019a;
        }

        public final void a(String str) {
            this.f1071b = str;
        }

        public final int a() {
            return this.h;
        }

        public final byte[] b() {
            return this.d;
        }

        public final void a(byte[] bArr) {
            this.d = bArr;
        }

        public final void a(int i) {
            this.f1070a = i;
        }

        public final String c() {
            return this.g;
        }
    }

    /* compiled from: Networking.java */
    public static class a extends SSLSocketFactory {

        /* renamed from: a, reason: collision with root package name */
        private SSLSocketFactory f1069a;

        private a() {
        }

        public static a a(int i) {
            a aVar = new a();
            aVar.f1069a = SSLCertificateSocketFactory.getDefault(i, null);
            return aVar;
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket() throws IOException {
            Socket createSocket = this.f1069a.createSocket();
            a(createSocket);
            return createSocket;
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket(String host, int i) throws IOException {
            Socket createSocket = this.f1069a.createSocket(host, i);
            a(createSocket);
            return createSocket;
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket(String host, int port, InetAddress localhost, int localPort) throws IOException {
            Socket createSocket = this.f1069a.createSocket(host, port, localhost, localPort);
            a(createSocket);
            return createSocket;
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket(InetAddress address, int port) throws IOException {
            Socket createSocket = this.f1069a.createSocket(address, port);
            a(createSocket);
            return createSocket;
        }

        @Override // javax.net.SocketFactory
        public final Socket createSocket(InetAddress address, int port, InetAddress localhost, int localPort) throws IOException {
            Socket createSocket = this.f1069a.createSocket(address, port, localhost, localPort);
            a(createSocket);
            return createSocket;
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public final String[] getDefaultCipherSuites() {
            return this.f1069a.getDefaultCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public final String[] getSupportedCipherSuites() {
            return this.f1069a.getSupportedCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocketFactory
        public final Socket createSocket(Socket socketParam, String host, int port, boolean autoClose) throws IOException {
            Socket createSocket = this.f1069a.createSocket(socketParam, host, port, autoClose);
            a(createSocket);
            return createSocket;
        }

        private static void a(Socket socket) {
            if (socket instanceof SSLSocket) {
                SSLSocket sSLSocket = (SSLSocket) socket;
                sSLSocket.setEnabledProtocols(sSLSocket.getSupportedProtocols());
            }
        }
    }

    private static void a(a.InterfaceC0019a interfaceC0019a, int i, com.cmcm.orion.adsdk.d dVar) {
        if (interfaceC0019a != null) {
            interfaceC0019a.a(i, dVar);
        }
    }

    private static String d(String str) {
        if (!TextUtils.isEmpty(str)) {
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

    private static void a(@NonNull HttpURLConnection httpURLConnection, @NonNull b bVar) throws IOException {
        HashMap hashMap = bVar.c;
        for (String str : hashMap.keySet()) {
            httpURLConnection.addRequestProperty(str, (String) hashMap.get(str));
        }
        switch (bVar.f1070a) {
            case -1:
                byte[] b2 = bVar.b();
                if (b2 != null) {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod("POST");
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(b2);
                    dataOutputStream.close();
                    return;
                }
                return;
            case 0:
                httpURLConnection.setRequestMethod("GET");
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                b(httpURLConnection, bVar);
                return;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                b(httpURLConnection, bVar);
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
                b(httpURLConnection, bVar);
                return;
            default:
                throw new IllegalStateException("Unknown mMethod type.");
        }
    }

    private static void b(HttpURLConnection httpURLConnection, @NonNull b bVar) throws IOException {
        byte[] b2 = bVar.b();
        if (b2 != null) {
            httpURLConnection.setDoOutput(true);
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(b2);
            dataOutputStream.close();
        }
    }

    private static HttpURLConnection b(@NonNull b bVar) throws Exception {
        URL url = new URL(bVar.f1071b);
        URL url2 = url;
        String protocol = url.getProtocol();
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i > 10 || bVar.f) {
                break;
            }
            if (!Constants.HTTPS.equalsIgnoreCase(protocol) && !Constants.HTTP.equalsIgnoreCase(protocol)) {
                throw new Exception("PROTOCOL_ERROR_TAG:url = " + bVar.f1071b);
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) url2.openConnection();
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setConnectTimeout(bVar.a());
            httpURLConnection.setReadTimeout(bVar.a());
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            if (Constants.HTTPS.equals(url2.getProtocol())) {
                ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(a.a(bVar.a()));
            }
            a(httpURLConnection, bVar);
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 301 || responseCode == 302) {
                String headerField = httpURLConnection.getHeaderField("Location");
                bVar.g = headerField;
                httpURLConnection.disconnect();
                URL url3 = new URL(url2, headerField);
                url2 = url3;
                protocol = url3.getProtocol();
                i = i2;
            } else {
                return httpURLConnection;
            }
        }
        throw new Exception("REDIRECT_ERROR_TAG:max count = 10");
    }

    public static b a(String str, a.InterfaceC0019a interfaceC0019a) {
        b bVar = new b();
        if (!TextUtils.isEmpty(null)) {
            if (str.trim().endsWith("?")) {
                str = str + ((String) null);
            } else {
                str = str + "?" + ((String) null);
            }
        }
        bVar.a(str);
        bVar.a(interfaceC0019a);
        bVar.a(0);
        if (a(c, bVar)) {
            return bVar;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v1, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void a(com.cmcm.orion.utils.d.b r9) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.cmcm.orion.utils.d.a(com.cmcm.orion.utils.d$b):void");
    }
}
