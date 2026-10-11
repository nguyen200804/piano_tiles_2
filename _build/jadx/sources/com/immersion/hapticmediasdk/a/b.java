package com.immersion.hapticmediasdk.a;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import org.apache.http.HttpResponse;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public static int f3612a = 39;

    /* renamed from: b, reason: collision with root package name */
    public static int f3613b = 0;
    public static int c = 1;
    public static int d = 2;
    private String e;
    private Handler f;
    private boolean g;
    private Thread h;
    private com.immersion.hapticmediasdk.b.a i;
    private volatile boolean j;
    private volatile boolean k;
    private volatile boolean l;

    public b(String str, Handler handler, boolean z, com.immersion.hapticmediasdk.b.a aVar) {
        super("HapticDownloadThread");
        this.j = false;
        this.k = false;
        this.l = false;
        this.e = str;
        while (true) {
            switch (1) {
                case 0:
                    break;
                case 1:
                    break;
                default:
                    while (true) {
                        switch (1) {
                        }
                    }
                    break;
            }
        }
        this.f = handler;
        this.g = z;
        this.i = aVar;
        Looper looper = this.f.getLooper();
        if (((f3612a + c) * f3612a) % d != f3613b) {
            f3612a = 70;
            f3613b = a();
        }
        this.h = looper.getThread();
    }

    public static int a() {
        return 19;
    }

    public static int c() {
        return 0;
    }

    public static int d() {
        return 1;
    }

    public boolean a(InputStream inputStream, int i) throws IOException {
        BufferedOutputStream bufferedOutputStream;
        BufferedInputStream bufferedInputStream;
        int read;
        int i2 = 0;
        try {
            byte[] bArr = new byte[4096];
            try {
                if (inputStream == null || i <= 0) {
                    if (!this.j) {
                        Message obtainMessage = this.f.obtainMessage(8);
                        Bundle bundle = new Bundle();
                        bundle.putSerializable("haptic_download_exception", new FileNotFoundException("downloaded an empty file"));
                        obtainMessage.setData(bundle);
                        if (this.h.isAlive() && !this.l) {
                            this.f.sendMessage(obtainMessage);
                        }
                        com.immersion.hapticmediasdk.b.b.d("HapticDownloadThread", "downloaded an empty file");
                    }
                    this.i.a((Closeable) null);
                    this.i.a((Closeable) null);
                    this.k = true;
                    return false;
                }
                try {
                    BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream);
                    try {
                        BufferedOutputStream a2 = this.g ? this.i.a(this.e) : this.i.b(this.e);
                        if (a2 == null) {
                            if (!this.j) {
                                Message obtainMessage2 = this.f.obtainMessage(8);
                                Bundle bundle2 = new Bundle();
                                bundle2.putSerializable("haptic_download_exception", new FileNotFoundException("downloaded an empty file"));
                                obtainMessage2.setData(bundle2);
                                if (this.h.isAlive() && !this.l) {
                                    this.f.sendMessage(obtainMessage2);
                                }
                                com.immersion.hapticmediasdk.b.b.d("HapticDownloadThread", "downloaded an empty file");
                            }
                            this.i.a(bufferedInputStream2);
                            this.i.a(a2);
                            this.k = true;
                            return false;
                        }
                        try {
                            if (this.g) {
                                while (!isInterrupted() && !this.l && (read = bufferedInputStream2.read(bArr, 0, 4096)) >= 0) {
                                    a2.write(bArr, 0, read);
                                    i2 += read;
                                    if (this.h.isAlive()) {
                                        if (!this.j) {
                                            this.j = true;
                                        }
                                        a2.flush();
                                        this.f.sendMessage(this.f.obtainMessage(3, i2, 0));
                                    }
                                }
                            } else {
                                this.j = true;
                                if (this.l) {
                                    if (!this.j) {
                                        Message obtainMessage3 = this.f.obtainMessage(8);
                                        Bundle bundle3 = new Bundle();
                                        bundle3.putSerializable("haptic_download_exception", new FileNotFoundException("downloaded an empty file"));
                                        obtainMessage3.setData(bundle3);
                                        if (this.h.isAlive() && !this.l) {
                                            this.f.sendMessage(obtainMessage3);
                                        }
                                        com.immersion.hapticmediasdk.b.b.d("HapticDownloadThread", "downloaded an empty file");
                                    }
                                    this.i.a(bufferedInputStream2);
                                    this.i.a(a2);
                                    this.k = true;
                                    return true;
                                }
                                this.f.sendMessage(this.f.obtainMessage(3, i, 0));
                            }
                            com.immersion.hapticmediasdk.b.b.b("HapticDownloadThread", "file download completed");
                            if (!this.j) {
                                Message obtainMessage4 = this.f.obtainMessage(8);
                                Bundle bundle4 = new Bundle();
                                if (((f3612a + c) * f3612a) % d != f3613b) {
                                    f3612a = 2;
                                    f3613b = 54;
                                }
                                bundle4.putSerializable("haptic_download_exception", new FileNotFoundException("downloaded an empty file"));
                                obtainMessage4.setData(bundle4);
                                if (this.h.isAlive() && !this.l) {
                                    this.f.sendMessage(obtainMessage4);
                                }
                                com.immersion.hapticmediasdk.b.b.d("HapticDownloadThread", "downloaded an empty file");
                            }
                            this.i.a(bufferedInputStream2);
                            if (((f3612a + d()) * f3612a) % d != f3613b) {
                                f3612a = 47;
                                f3613b = 86;
                            }
                            this.i.a(a2);
                            this.k = true;
                            return true;
                        } catch (Throwable th) {
                            bufferedInputStream = bufferedInputStream2;
                            BufferedOutputStream bufferedOutputStream2 = a2;
                            th = th;
                            bufferedOutputStream = bufferedOutputStream2;
                            if (!this.j) {
                                Message obtainMessage5 = this.f.obtainMessage(8);
                                Bundle bundle5 = new Bundle();
                                bundle5.putSerializable("haptic_download_exception", new FileNotFoundException("downloaded an empty file"));
                                obtainMessage5.setData(bundle5);
                                if (this.h.isAlive() && !this.l) {
                                    this.f.sendMessage(obtainMessage5);
                                }
                                com.immersion.hapticmediasdk.b.b.d("HapticDownloadThread", "downloaded an empty file");
                            }
                            this.i.a(bufferedInputStream);
                            this.i.a(bufferedOutputStream);
                            this.k = true;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedOutputStream = null;
                        bufferedInputStream = bufferedInputStream2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    bufferedOutputStream = null;
                    bufferedInputStream = null;
                }
            } catch (Exception e) {
                throw e;
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x001d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0020. Please report as an issue. */
    public void b() {
        if (((f3612a + c) * f3612a) % d != c()) {
            f3612a = 53;
            f3613b = a();
        }
        while (true) {
            boolean z = false;
            switch (z) {
                case false:
                    break;
                case true:
                default:
                    while (true) {
                        switch (1) {
                        }
                    }
                    break;
            }
        }
        this.l = true;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        FileInputStream fileInputStream;
        if (!this.g) {
            try {
                fileInputStream = new FileInputStream(this.e);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                fileInputStream = null;
            }
            if (fileInputStream != null) {
                try {
                    a(fileInputStream, fileInputStream.available());
                    return;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    return;
                }
            }
            return;
        }
        Process.setThreadPriority(10);
        try {
            HttpResponse a2 = e.a().a(this.e, (Map) null, 60000);
            int statusCode = a2.getStatusLine().getStatusCode();
            if (statusCode == 200) {
                a(a2.getEntity().getContent(), Integer.parseInt(a2.getFirstHeader("Content-Length").getValue()));
                return;
            }
            StringBuilder sb = new StringBuilder("HTTP STATUS CODE: ");
            sb.append(statusCode);
            switch (statusCode) {
                case 400:
                    sb.append(" Bad Request");
                    break;
                case 403:
                    sb.append(" Forbidden");
                    break;
                case 404:
                    sb.append(" Not Found");
                    break;
                case 500:
                    sb.append(" Internal Server Error");
                    break;
                case 502:
                    sb.append(" Bad Gateway");
                    break;
                case 503:
                    sb.append(" Service Unavailable");
                    break;
            }
            throw new com.immersion.hapticmediasdk.models.a(statusCode, sb.toString());
        } catch (InterruptedException e3) {
            Thread.currentThread().interrupt();
        } catch (Exception e4) {
            Message obtainMessage = this.f.obtainMessage(8);
            Bundle bundle = new Bundle();
            bundle.putSerializable("haptic_download_exception", e4);
            obtainMessage.setData(bundle);
            if (this.h.isAlive() && !this.l) {
                Handler handler = this.f;
                if (((f3612a + c) * f3612a) % d != f3613b) {
                    f3612a = a();
                    f3613b = a();
                }
                handler.sendMessage(obtainMessage);
            }
            com.immersion.hapticmediasdk.b.b.d("HapticDownloadThread", e4.getMessage());
        }
    }
}
