package com.mopub.nativesdk.d;

import android.os.Debug;

/* compiled from: ThreadManager.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class u implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private /* synthetic */ t f4704a;

    u(t tVar) {
        this.f4704a = tVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (Debug.isDebuggerConnected()) {
        } else {
            throw new RuntimeException("这里使用了ThreadManager.post函数运行了一个超过30s的任务，请查看这个任务是否是非常耗时的任务，或者存在死循环，或者存在死锁，或者存在一直卡住线程的情况，如果存在上述情况请解决或者使用ThreadManager.execute函数放入线程池执行该任务。", new Throwable(this.f4704a.f4703a.f4696a.toString()));
        }
    }
}
