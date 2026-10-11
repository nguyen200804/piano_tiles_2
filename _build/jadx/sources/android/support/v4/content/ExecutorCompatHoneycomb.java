package android.support.v4.content;

import android.os.AsyncTask;
import java.util.concurrent.Executor;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ExecutorCompatHoneycomb {
    ExecutorCompatHoneycomb() {
    }

    public static Executor getParallelExecutor() {
        return AsyncTask.THREAD_POOL_EXECUTOR;
    }
}
