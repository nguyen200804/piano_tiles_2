package com.applovin.impl.sdk;

import java.util.concurrent.ThreadFactory;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class bq implements ThreadFactory {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bo f466a;

    /* renamed from: b, reason: collision with root package name */
    private final String f467b;

    public bq(bo boVar, String str) {
        this.f466a = boVar;
        this.f467b = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        AppLovinSdkImpl appLovinSdkImpl;
        StringBuilder append = new StringBuilder().append("AppLovinSdk:").append(this.f467b).append(":");
        appLovinSdkImpl = this.f466a.f462a;
        Thread thread = new Thread(runnable, append.append(dh.a(appLovinSdkImpl.getSdkKey())).toString());
        thread.setDaemon(true);
        thread.setPriority(10);
        thread.setUncaughtExceptionHandler(new br(this));
        return thread;
    }
}
