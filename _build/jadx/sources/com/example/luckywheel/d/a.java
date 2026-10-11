package com.example.luckywheel.d;

import android.os.Handler;
import android.os.HandlerThread;
import java.io.File;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static HandlerThread f2337a;

    /* renamed from: b, reason: collision with root package name */
    private static Handler f2338b;
    private static int c = c();
    private static int d = (c * 2) + 1;
    private static ThreadPoolExecutor e = new ThreadPoolExecutor(c + 1, d, 1, TimeUnit.MINUTES, new LinkedBlockingQueue(c * 2), new RejectedExecutionHandlerC0065a());

    /* renamed from: com.example.luckywheel.d.a$a, reason: collision with other inner class name */
    public static class RejectedExecutionHandlerC0065a implements RejectedExecutionHandler {
        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            a.b().post(runnable);
        }
    }

    public static void a(Runnable runnable) {
        if (runnable != null) {
            e.execute(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized Handler b() {
        Handler handler;
        synchronized (a.class) {
            if (f2337a == null) {
                f2337a = new HandlerThread("CM_REJECTED_EXECUTE_THREAD");
                f2337a.start();
            }
            if (f2338b == null) {
                f2338b = new Handler(f2337a.getLooper());
            }
            handler = f2338b;
        }
        return handler;
    }

    private static int c() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new g()).length;
        } catch (Exception e2) {
            return 1;
        }
    }
}
