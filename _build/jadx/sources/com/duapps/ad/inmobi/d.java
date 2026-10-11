package com.duapps.ad.inmobi;

import android.content.Context;

/* compiled from: InMobiReport.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private Context f2174a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f2175b;
    private IMData c;

    public d(Context context, boolean z, IMData iMData) {
        this.f2174a = context.getApplicationContext();
        this.f2175b = z;
        this.c = iMData;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f2175b) {
            c.a(this.f2174a).b(this.c);
        } else {
            c.a(this.f2174a).a(this.c);
        }
    }
}
