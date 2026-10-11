package com.mopub.common.util;

import android.os.AsyncTask;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import java.util.concurrent.Executor;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AsyncTasks {

    /* renamed from: a, reason: collision with root package name */
    private static Executor f4227a;

    static {
        a();
    }

    private static void a() {
        f4227a = AsyncTask.THREAD_POOL_EXECUTOR;
    }

    @VisibleForTesting
    public static void setExecutor(Executor executor) {
        f4227a = executor;
    }

    public static <P> void safeExecuteOnExecutor(AsyncTask<P, ?, ?> asyncTask, P... params) {
        Preconditions.checkNotNull(asyncTask, "Unable to execute null AsyncTask.");
        Preconditions.checkUiThread("AsyncTask must be executed on the main thread");
        asyncTask.executeOnExecutor(f4227a, params);
    }
}
