package com.cmplay.crashreport;

import android.content.Context;
import java.io.File;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class l extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f1304a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ k f1305b;

    l(k kVar, Context context) {
        this.f1305b = kVar;
        this.f1304a = context;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Object obj;
        Object obj2;
        Object obj3;
        try {
            File[] a2 = m.a().a(m.a().b(this.f1304a), "crash_");
            File[] a3 = m.a().a(m.a(this.f1304a), "anr_");
            if ((a2 != null && a2.length != 0) || (a3 != null && a3.length != 0)) {
                if (a2 != null && a2.length != 0) {
                    this.f1305b.a(this.f1304a, a2, m.a().b(this.f1304a), b.a());
                }
                if (a3 != null && a3.length != 0) {
                    this.f1305b.a(this.f1304a, a3, m.a(this.f1304a), b.b());
                }
            }
            obj3 = this.f1305b.c;
            synchronized (obj3) {
                this.f1305b.f1303b = false;
            }
        } catch (Exception e) {
            obj2 = this.f1305b.c;
            synchronized (obj2) {
                this.f1305b.f1303b = false;
            }
        } catch (Throwable th) {
            obj = this.f1305b.c;
            synchronized (obj) {
                this.f1305b.f1303b = false;
                throw th;
            }
        }
    }
}
