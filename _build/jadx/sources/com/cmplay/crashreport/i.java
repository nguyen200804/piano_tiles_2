package com.cmplay.crashreport;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1300a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ CrashReportService f1301b;

    i(CrashReportService crashReportService, String str) {
        this.f1301b = crashReportService;
        this.f1300a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1301b.a(this.f1300a);
    }
}
