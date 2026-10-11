package com.cmplay.util.c;

import com.cmplay.util.aa;

/* compiled from: ReporterConfigManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static b f1731a = null;

    public static b a() {
        if (f1731a == null) {
            synchronized (b.class) {
                if (f1731a == null) {
                    f1731a = new b();
                }
            }
        }
        return f1731a;
    }

    private b() {
    }

    public long b() {
        return aa.b("report_service", 0L);
    }

    public void a(long j) {
        aa.a("report_service", j);
    }

    public int c() {
        return aa.b("current_battery_percentage", 0);
    }

    public void a(int i) {
        aa.a("current_battery_percentage", i);
    }

    public void b(long j) {
        aa.a("nti_eat_permanent_service_start_time", j);
    }

    public int d() {
        return aa.b("nti_eat_charge_times", 0);
    }

    public void b(int i) {
        aa.a("nti_eat_charge_times", i);
    }

    public int e() {
        return aa.b("current_battery_voltage", 0);
    }

    public void c(int i) {
        aa.a("current_battery_voltage", i);
    }

    public void a(String str) {
        aa.a("r_g_versi", str);
    }

    public void b(String str) {
        aa.a("r_g_vendo", str);
    }

    public void c(String str) {
        aa.a("r_g_RENDERER", str);
    }
}
