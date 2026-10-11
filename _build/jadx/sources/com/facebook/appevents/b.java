package com.facebook.appevents;

import android.os.Bundle;
import com.facebook.internal.s;
import com.facebook.u;
import java.io.Serializable;
import java.util.Locale;

/* compiled from: FacebookTimeSpentData.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class b implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    private static final String f3129a = a.class.getCanonicalName();

    /* renamed from: b, reason: collision with root package name */
    private static final long[] f3130b = {300000, 900000, 1800000, 3600000, 21600000, 43200000, 86400000, 172800000, 259200000, 604800000, 1209600000, 1814400000, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L};
    private boolean c;
    private boolean d;
    private long e;
    private long f;
    private long g;
    private long h;
    private int i;
    private String j;

    b() {
        a();
    }

    void a(a aVar, long j) {
        long j2 = 0;
        if (!this.d) {
            s.a(u.APP_EVENTS, f3129a, "Suspend for inactive app");
            return;
        }
        long j3 = j - this.f;
        if (j3 < 0) {
            s.a(u.APP_EVENTS, f3129a, "Clock skew detected");
        } else {
            j2 = j3;
        }
        this.h = j2 + this.h;
        this.g = j;
        this.d = false;
    }

    void a(a aVar, long j, String str) {
        long j2 = 0;
        if (c() || j - this.e > 300000) {
            Bundle bundle = new Bundle();
            bundle.putString("fb_mobile_launch_source", str);
            aVar.a("fb_mobile_activate_app", bundle);
            this.e = j;
        }
        if (this.d) {
            s.a(u.APP_EVENTS, f3129a, "Resume for active app");
            return;
        }
        long j3 = b() ? j - this.g : 0L;
        if (j3 < 0) {
            s.a(u.APP_EVENTS, f3129a, "Clock skew detected");
        } else {
            j2 = j3;
        }
        if (j2 > 60000) {
            b(aVar, j2);
        } else if (j2 > 1000) {
            this.i++;
        }
        if (this.i == 0) {
            this.j = str;
        }
        this.f = j;
        this.d = true;
    }

    private void b(a aVar, long j) {
        Bundle bundle = new Bundle();
        bundle.putInt("fb_mobile_app_interruptions", this.i);
        bundle.putString("fb_mobile_time_between_sessions", String.format(Locale.ROOT, "session_quanta_%d", Integer.valueOf(a(j))));
        bundle.putString("fb_mobile_launch_source", this.j);
        aVar.a("fb_mobile_deactivate_app", this.h / 1000, bundle);
        a();
    }

    private static int a(long j) {
        int i = 0;
        while (i < f3130b.length && f3130b[i] < j) {
            i++;
        }
        return i;
    }

    private void a() {
        this.d = false;
        this.f = -1L;
        this.g = -1L;
        this.i = 0;
        this.h = 0L;
    }

    private boolean b() {
        return this.g != -1;
    }

    private boolean c() {
        boolean z = !this.c;
        this.c = true;
        return z;
    }
}
