package com.cmcm.orion.utils.internal;

import java.util.Calendar;

/* compiled from: TimeRangeHelper.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    private long f1127a;

    /* renamed from: b, reason: collision with root package name */
    private long f1128b;
    private boolean c;

    public e(long j, long j2, boolean z) {
        this.f1127a = j;
        this.f1128b = j2;
        this.c = z;
    }

    public final boolean a() {
        if (this.f1127a >= this.f1128b) {
            return false;
        }
        long c = c();
        new StringBuilder("after:st:").append(this.f1127a).append(";et:").append(this.f1128b).append(";now:").append(c);
        return c > this.f1127a && c < this.f1128b;
    }

    public final boolean b() {
        return this.f1127a < this.f1128b && c() < this.f1128b;
    }

    private long c() {
        if (!this.c) {
            return System.currentTimeMillis();
        }
        Calendar calendar = Calendar.getInstance();
        calendar.add(14, -(calendar.get(15) + calendar.get(16)));
        return calendar.getTime().getTime();
    }
}
