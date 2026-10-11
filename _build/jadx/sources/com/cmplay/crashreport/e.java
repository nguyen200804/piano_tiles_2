package com.cmplay.crashreport;

import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f1298a;

    e(c cVar) {
        this.f1298a = cVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        f fVar;
        f fVar2;
        Thread thread;
        Thread thread2;
        Thread thread3;
        long a2;
        Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
        Thread currentThread = Thread.currentThread();
        long j = 0;
        StringBuilder sb = new StringBuilder();
        sb.append("-----thread info-----\n");
        if (allStackTraces != null && allStackTraces.size() > 0) {
            thread = this.f1298a.f1296b;
            StackTraceElement[] stackTraceElementArr = allStackTraces.get(thread);
            if (stackTraceElementArr != null && stackTraceElementArr.length > 0) {
                c cVar = this.f1298a;
                thread3 = this.f1298a.f1296b;
                cVar.a(thread3, stackTraceElementArr, sb);
                a2 = this.f1298a.a(stackTraceElementArr);
                j = a2;
            }
            for (Thread thread4 : allStackTraces.keySet()) {
                StackTraceElement[] stackTraceElementArr2 = allStackTraces.get(thread4);
                thread2 = this.f1298a.f1296b;
                if (thread4 != thread2 && thread4 != currentThread) {
                    this.f1298a.a(thread4, stackTraceElementArr2, sb);
                }
            }
        }
        sb.append("\n\n");
        sb.append("-----anrkey-----\n");
        sb.append("anrkey=");
        sb.append(j);
        sb.append("\n\n");
        fVar = this.f1298a.f;
        if (fVar != null) {
            fVar2 = this.f1298a.f;
            fVar2.a(sb.toString());
        }
    }
}
