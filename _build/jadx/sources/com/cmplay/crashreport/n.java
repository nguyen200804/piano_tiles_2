package com.cmplay.crashreport;

import android.content.Context;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class n implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ m f1308a;

    n(m mVar) {
        this.f1308a = mVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        try {
            m mVar = this.f1308a;
            context = m.l;
            mVar.c(context);
        } catch (Exception e) {
        }
    }
}
