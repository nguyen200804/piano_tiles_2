package com.cmplay.internalpush.a;

import android.annotation.TargetApi;
import android.os.AsyncTask;
import android.os.Build;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* compiled from: AsyncTasks.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static Executor f1404a;

    static {
        a();
    }

    @TargetApi(11)
    private static void a() {
        if (Build.VERSION.SDK_INT >= 11) {
            f1404a = AsyncTask.THREAD_POOL_EXECUTOR;
        } else {
            f1404a = Executors.newSingleThreadExecutor();
        }
    }

    @TargetApi(11)
    public static void a(AsyncTask<String, Void, Integer> asyncTask, String... strArr) {
        if (asyncTask != null) {
            if (Build.VERSION.SDK_INT >= 11) {
                asyncTask.executeOnExecutor(f1404a, strArr);
            } else {
                asyncTask.execute(strArr);
            }
        }
    }
}
