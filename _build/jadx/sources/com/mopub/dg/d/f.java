package com.mopub.dg.d;

import android.os.AsyncTask;
import java.util.concurrent.Executor;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    private static Executor f4295a = AsyncTask.THREAD_POOL_EXECUTOR;

    public static void a(AsyncTask asyncTask, Object... objArr) {
        asyncTask.executeOnExecutor(f4295a, objArr);
    }
}
