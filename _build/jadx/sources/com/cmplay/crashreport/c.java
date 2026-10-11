package com.cmplay.crashreport;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import java.util.zip.CRC32;
import org.apache.commons.io.IOUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    static c f1295a = null;
    private static long g = 10000;
    private static long h = g + 5000;

    /* renamed from: b, reason: collision with root package name */
    private Thread f1296b = null;
    private HandlerThread c = new HandlerThread("anr_checker");
    private Handler d = null;
    private Handler e = null;
    private f f = null;
    private Runnable i = new d(this);
    private Runnable j = new e(this);

    c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long a(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr == null || stackTraceElementArr.length <= 1) {
            return 0L;
        }
        StackTraceElement stackTraceElement = stackTraceElementArr[0];
        CRC32 crc32 = new CRC32();
        crc32.update(stackTraceElement.toString().getBytes());
        return crc32.getValue();
    }

    public static synchronized c a() {
        c cVar;
        synchronized (c.class) {
            if (f1295a == null) {
                f1295a = new c();
            }
            cVar = f1295a;
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Thread thread, StackTraceElement[] stackTraceElementArr, StringBuilder sb) {
        sb.append("\t");
        sb.append(thread.toString());
        sb.append(IOUtils.LINE_SEPARATOR_UNIX);
        if (stackTraceElementArr == null || stackTraceElementArr.length <= 0) {
            return;
        }
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            sb.append("\t\t");
            sb.append(stackTraceElement.toString());
            sb.append(IOUtils.LINE_SEPARATOR_UNIX);
        }
    }

    public synchronized void a(f fVar) {
        if (this.d == null) {
            this.f1296b = Thread.currentThread();
            if (this.f1296b.getName().compareToIgnoreCase("main") != 0) {
                throw new RuntimeException("Anr checker Start Must run on Main thread");
            }
            this.c.start();
            this.e = new Handler(Looper.getMainLooper());
            this.d = new Handler(this.c.getLooper());
            this.e.postDelayed(this.i, g);
            this.d.removeCallbacks(this.j);
            this.d.postDelayed(this.j, h);
            this.f = fVar;
        }
    }
}
