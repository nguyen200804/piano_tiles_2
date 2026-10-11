package com.cmcm.dmc.sdk.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import java.io.File;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    private static int f669a = 0;

    /* renamed from: b, reason: collision with root package name */
    private static volatile int f670b = 0;
    private static Context c;
    private static Handler d;
    private static File e;
    private static com.cmcm.dmc.sdk.a.b f;
    private static volatile com.cmcm.dmc.sdk.e.m g;
    private static n h;
    private static g<p> i;
    private static BroadcastReceiver j;
    private static b k;
    private static boolean l;

    private static class a extends BroadcastReceiver {
        private a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals("com.cmplay.activesdk.cloud_cfg.update")) {
                c.f();
            } else if (action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                c.l();
            }
        }
    }

    private static class b implements Runnable {
        private b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.m();
        }
    }

    public static synchronized int a() {
        int i2;
        synchronized (c.class) {
            i2 = f670b;
        }
        return i2;
    }

    public static int a(String str, String str2, int i2) {
        return f.a(Integer.valueOf(f669a), str, str2, i2);
    }

    public static SharedPreferences a(String str) {
        return c.getSharedPreferences("dmc_" + str, 0);
    }

    public static void a(int i2) {
        f669a = i2;
    }

    public static void a(BroadcastReceiver broadcastReceiver) {
        c.unregisterReceiver(broadcastReceiver);
    }

    public static void a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        try {
            c.registerReceiver(broadcastReceiver, intentFilter, null, d);
        } catch (Exception e2) {
            i.a("ContextUtils", "" + e2.getMessage());
        }
    }

    public static void a(Context context, Handler handler, File file, com.cmcm.dmc.sdk.a.b bVar) {
        c = context;
        d = handler;
        e = file;
        f = bVar;
    }

    public static void a(n nVar) {
        h = nVar;
    }

    public static void a(p pVar) {
        if (i == null) {
            i = new g<>();
        }
        i.a(pVar);
    }

    public static void a(Runnable runnable) {
        if (d == null) {
            return;
        }
        if (Looper.myLooper() == d.getLooper()) {
            runnable.run();
        } else {
            d.post(runnable);
        }
    }

    public static void b() {
        i.a("ContextUtils", "startup");
        a(new Runnable() { // from class: com.cmcm.dmc.sdk.a.c.1
            @Override // java.lang.Runnable
            public void run() {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                intentFilter.addAction("com.cmplay.activesdk.cloud_cfg.update");
                BroadcastReceiver unused = c.j = new a();
                c.a(c.j, intentFilter);
                com.cmcm.dmc.sdk.e.m unused2 = c.g = new com.cmcm.dmc.sdk.e.m();
                i.a("ContextUtils", "WORKING");
                c.c(1);
            }
        });
        if (k == null) {
            k = new b();
            d.postDelayed(k, 10000L);
        }
    }

    public static Context c() {
        return c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void c(int i2) {
        synchronized (c.class) {
            f670b = i2;
        }
    }

    public static Handler d() {
        return d;
    }

    public static File e() {
        return e;
    }

    public static void f() {
        i.a("ContextUtils", "魔方数据更新.......");
        if (a() != 1) {
            return;
        }
        if (k != null) {
            d.removeCallbacks(k);
            k = null;
            m();
        }
        a(new Runnable() { // from class: com.cmcm.dmc.sdk.a.c.3
            @Override // java.lang.Runnable
            public void run() {
                com.cmcm.dmc.sdk.g.j.a().a(c.a("reporter", "interval_check_batch", 0));
                if (c.i != null) {
                    c.i.b();
                    try {
                        Iterator a2 = c.i.a();
                        while (a2.hasNext()) {
                            p pVar = (p) a2.next();
                            if (pVar != null) {
                                pVar.a();
                            }
                        }
                    } finally {
                        c.i.c();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l() {
        if (a() != 1) {
            return;
        }
        a(new Runnable() { // from class: com.cmcm.dmc.sdk.a.c.2
            @Override // java.lang.Runnable
            public void run() {
                c.f.b();
                com.cmcm.dmc.sdk.g.j.a().d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void m() {
        if (l || g == null) {
            return;
        }
        i.a("ContextUtils", "WORKING");
        g.b();
        l = true;
    }
}
