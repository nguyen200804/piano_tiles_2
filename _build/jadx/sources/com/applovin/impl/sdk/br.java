package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinLogger;
import java.lang.Thread;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class br implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bq f468a;

    br(bq bqVar) {
        this.f468a = bqVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        AppLovinLogger appLovinLogger;
        appLovinLogger = this.f468a.f466a.f463b;
        appLovinLogger.e("TaskManager", "Caught unhandled exception", th);
    }
}
