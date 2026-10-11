package com.jirbo.adcolony;

import android.os.Handler;
import android.os.Message;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ap implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    static String f3793a = "MONITOR_MUTEX";

    /* renamed from: b, reason: collision with root package name */
    static volatile ap f3794b;
    static volatile long c;
    long d;

    ap() {
    }

    static void a() {
        synchronized (f3793a) {
            c = System.currentTimeMillis();
            if (f3794b == null) {
                t.b("Creating ADC Monitor singleton.");
                f3794b = new ap();
                new Thread(f3794b).start();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0191  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.jirbo.adcolony.ap.run():void");
    }

    void a(long j) {
        try {
            Thread.sleep(j);
        } catch (InterruptedException e) {
        }
    }

    static class a extends Handler {
        a() {
            t.j = true;
            sendMessageDelayed(obtainMessage(), 1000L);
        }

        @Override // android.os.Handler
        public void handleMessage(Message m) {
            if (t.E == null || t.b().isFinishing()) {
                t.b("Monitor pinger exiting.");
                t.j = false;
            } else {
                if (!t.i) {
                    ap.a();
                }
                sendMessageDelayed(obtainMessage(), 1000L);
            }
        }
    }
}
