package com.mopub.nativesdk.c;

import android.os.Message;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;

/* compiled from: AbsHttpLoader.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ int f4620a;

    /* renamed from: b, reason: collision with root package name */
    private /* synthetic */ a f4621b;

    b(a aVar, int i) {
        this.f4621b = aVar;
        this.f4620a = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        c cVar;
        c cVar2;
        c cVar3;
        String b2;
        HttpURLConnection httpURLConnection;
        c cVar4;
        c cVar5;
        c cVar6;
        byte[] c;
        c cVar7;
        HttpURLConnection httpURLConnection2 = null;
        HttpURLConnection httpURLConnection3 = null;
        HttpURLConnection httpURLConnection4 = null;
        try {
            try {
                cVar3 = this.f4621b.c;
                Message obtainMessage = cVar3.obtainMessage(101);
                obtainMessage.arg1 = this.f4620a;
                obtainMessage.sendToTarget();
                b2 = this.f4621b.b();
                new StringBuilder("REQUEST URL: ").append(b2);
                httpURLConnection = (HttpURLConnection) new URL(b2).openConnection();
            } catch (Throwable th) {
                th = th;
            }
            try {
                int a2 = this.f4621b.a();
                if (a2 != 1 && a2 != 2) {
                    a2 = 2;
                }
                if (a2 == 1) {
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setUseCaches(false);
                }
                if (this.f4621b.f4618a) {
                    cVar7 = this.f4621b.c;
                    Message obtainMessage2 = cVar7.obtainMessage(114);
                    obtainMessage2.arg1 = this.f4620a;
                    obtainMessage2.sendToTarget();
                    httpURLConnection2 = obtainMessage2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                        httpURLConnection2 = obtainMessage2;
                    }
                } else {
                    httpURLConnection.setConnectTimeout(20000);
                    httpURLConnection.connect();
                    if (a2 == 1 && (c = this.f4621b.c()) != null) {
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        outputStream.write(c);
                        outputStream.flush();
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode != 200) {
                        cVar6 = this.f4621b.c;
                        Message obtainMessage3 = cVar6.obtainMessage(111);
                        obtainMessage3.arg1 = this.f4620a;
                        obtainMessage3.obj = "http respond status code is " + responseCode;
                        obtainMessage3.sendToTarget();
                        StringBuilder append = new StringBuilder("http respond status code is ").append(responseCode).append(" ! url=");
                        append.append(b2);
                        httpURLConnection2 = append;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                            httpURLConnection2 = append;
                        }
                    } else if (this.f4621b.f4618a) {
                        cVar5 = this.f4621b.c;
                        Message obtainMessage4 = cVar5.obtainMessage(114);
                        obtainMessage4.arg1 = this.f4620a;
                        obtainMessage4.sendToTarget();
                        httpURLConnection2 = obtainMessage4;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                            httpURLConnection2 = obtainMessage4;
                        }
                    } else {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read == -1) {
                                break;
                            } else {
                                byteArrayOutputStream.write(bArr, 0, read);
                            }
                        }
                        Object a3 = this.f4621b.a(httpURLConnection.getHeaderFields(), byteArrayOutputStream.toByteArray());
                        cVar4 = this.f4621b.c;
                        Message obtainMessage5 = cVar4.obtainMessage(100);
                        obtainMessage5.obj = a3;
                        int i = this.f4620a;
                        obtainMessage5.arg1 = i;
                        obtainMessage5.sendToTarget();
                        httpURLConnection2 = i;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                            httpURLConnection2 = i;
                        }
                    }
                }
            } catch (SocketTimeoutException e) {
                httpURLConnection3 = httpURLConnection;
                e = e;
                cVar2 = this.f4621b.c;
                Message obtainMessage6 = cVar2.obtainMessage(110);
                obtainMessage6.arg1 = this.f4620a;
                obtainMessage6.sendToTarget();
                new StringBuilder("http connect time out ! ").append(e.toString());
                httpURLConnection2 = httpURLConnection3;
                if (httpURLConnection3 != null) {
                    httpURLConnection3.disconnect();
                    httpURLConnection2 = httpURLConnection3;
                }
            } catch (Exception e2) {
                httpURLConnection4 = httpURLConnection;
                e = e2;
                cVar = this.f4621b.c;
                Message obtainMessage7 = cVar.obtainMessage(111);
                obtainMessage7.arg1 = this.f4620a;
                obtainMessage7.obj = e.getMessage();
                obtainMessage7.sendToTarget();
                httpURLConnection2 = httpURLConnection4;
                if (httpURLConnection4 != null) {
                    httpURLConnection4.disconnect();
                    httpURLConnection2 = httpURLConnection4;
                }
            } catch (Throwable th2) {
                httpURLConnection2 = httpURLConnection;
                th = th2;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                throw th;
            }
        } catch (SocketTimeoutException e3) {
            e = e3;
        } catch (Exception e4) {
            e = e4;
        }
    }
}
