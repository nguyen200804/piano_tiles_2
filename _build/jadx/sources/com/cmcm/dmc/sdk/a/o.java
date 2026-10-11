package com.cmcm.dmc.sdk.a;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.app.usage.UsageEvents;
import android.app.usage.UsageStatsManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.support.v4.view.MotionEventCompat;
import java.util.List;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class o implements n {

    /* renamed from: a, reason: collision with root package name */
    private boolean f687a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f688b;
    private String c;
    private n d;
    private UsageStatsManager e;
    private ActivityManager f;

    public o() {
        if (c()) {
            this.f687a = true;
            this.f688b = true;
        } else {
            this.f687a = false;
            this.f688b = false;
        }
    }

    private boolean c() {
        try {
        } catch (Throwable th) {
            i.a("TopActivityMonitor", "topActivity not start: " + th.getMessage());
        }
        if (Build.VERSION.SDK_INT < 21) {
            return true;
        }
        Context c = c.c();
        List<String> k = q.k(c);
        if (k == null || !k.contains("android.permission.PACKAGE_USAGE_STATS")) {
            i.a("TopActivityMonitor", "android 5.0+ topActivity has no  permission: ");
        } else {
            if (((AppOpsManager) c.getSystemService("appops")).checkOp("android:get_usage_stats", Process.myUid(), c.getPackageName()) == 0) {
                return true;
            }
            i.a("TopActivityMonitor", "android 5.0+ topActivity permission is not allowed: ");
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(MotionEventCompat.AXIS_WHEEL)
    public String d() {
        if (this.e == null) {
            this.e = (UsageStatsManager) c.c().getSystemService("usagestats");
        }
        if (this.e == null) {
            i.a("TopActivityMonitor", "fail to get  UsageStatsManager");
            a();
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        UsageEvents queryEvents = this.e.queryEvents(currentTimeMillis - 2000, currentTimeMillis);
        if (queryEvents == null) {
            i.a("TopActivityMonitor", "fail to get  UsageEvents");
            return null;
        }
        UsageEvents.Event event = new UsageEvents.Event();
        String str = null;
        while (queryEvents.hasNextEvent()) {
            queryEvents.getNextEvent(event);
            if (event.getEventType() == 1) {
                str = event.getPackageName();
            }
        }
        return str;
    }

    public void a() {
        c.a((n) null);
    }

    public void a(n nVar) {
        if (nVar == null) {
            throw new AssertionError();
        }
        this.d = nVar;
        c.a(this);
        if (this.f688b) {
            m.a().a(new Runnable() { // from class: com.cmcm.dmc.sdk.a.o.1
                @Override // java.lang.Runnable
                public void run() {
                    if (Build.VERSION.SDK_INT >= 21) {
                        try {
                            String d = o.this.d();
                            if (d != null) {
                                if (o.this.c == null) {
                                    o.this.c = d;
                                    o.this.d.a(null, d);
                                } else if (!o.this.c.equals(d)) {
                                    o.this.d.a(o.this.c, d);
                                    o.this.c = d;
                                }
                            }
                            return;
                        } catch (Throwable th) {
                            i.a("TopActivityMonitor", "android 5.0+ topActivity shutdown: " + th.getMessage());
                            o.this.a();
                            return;
                        }
                    }
                    try {
                        if (o.this.f == null) {
                            o.this.f = (ActivityManager) c.c().getSystemService("activity");
                        }
                        String packageName = o.this.f.getRunningTasks(1).get(0).topActivity.getPackageName();
                        if (o.this.c == null) {
                            o.this.c = packageName;
                            o.this.d.a(null, packageName);
                        } else {
                            if (o.this.c.equals(packageName)) {
                                return;
                            }
                            o.this.d.a(o.this.c, packageName);
                            o.this.c = packageName;
                        }
                    } catch (Throwable th2) {
                        i.a("TopActivityMonitor", "topActivity shutdown: " + th2.getMessage());
                        o.this.a();
                    }
                }
            }, 2000L, 2000L, 2000L);
        }
    }

    @Override // com.cmcm.dmc.sdk.a.n
    public void a(String str, String str2) {
        this.d.a(str, str2);
    }

    public boolean b() {
        return this.f687a;
    }
}
