package com.mopub.common;

import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MoPubLifecycleManager implements LifecycleListener {

    /* renamed from: a, reason: collision with root package name */
    private static MoPubLifecycleManager f4171a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final Set<LifecycleListener> f4172b = new HashSet();

    @NonNull
    private final WeakReference<Activity> c;

    private MoPubLifecycleManager(Activity mainActivity) {
        this.c = new WeakReference<>(mainActivity);
    }

    @NonNull
    public static synchronized MoPubLifecycleManager getInstance(Activity mainActivity) {
        MoPubLifecycleManager moPubLifecycleManager;
        synchronized (MoPubLifecycleManager.class) {
            if (f4171a == null) {
                f4171a = new MoPubLifecycleManager(mainActivity);
            }
            moPubLifecycleManager = f4171a;
        }
        return moPubLifecycleManager;
    }

    public void addLifecycleListener(@Nullable LifecycleListener listener) {
        Activity activity;
        if (listener != null && this.f4172b.add(listener) && (activity = this.c.get()) != null) {
            listener.onCreate(activity);
            listener.onStart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onCreate(@NonNull Activity activity) {
        Iterator<LifecycleListener> it = this.f4172b.iterator();
        while (it.hasNext()) {
            it.next().onCreate(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onStart(@NonNull Activity activity) {
        Iterator<LifecycleListener> it = this.f4172b.iterator();
        while (it.hasNext()) {
            it.next().onStart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onPause(@NonNull Activity activity) {
        Iterator<LifecycleListener> it = this.f4172b.iterator();
        while (it.hasNext()) {
            it.next().onPause(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onResume(@NonNull Activity activity) {
        Iterator<LifecycleListener> it = this.f4172b.iterator();
        while (it.hasNext()) {
            it.next().onResume(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onRestart(@NonNull Activity activity) {
        Iterator<LifecycleListener> it = this.f4172b.iterator();
        while (it.hasNext()) {
            it.next().onRestart(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onStop(@NonNull Activity activity) {
        Iterator<LifecycleListener> it = this.f4172b.iterator();
        while (it.hasNext()) {
            it.next().onStop(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onDestroy(@NonNull Activity activity) {
        Iterator<LifecycleListener> it = this.f4172b.iterator();
        while (it.hasNext()) {
            it.next().onDestroy(activity);
        }
    }

    @Override // com.mopub.common.LifecycleListener
    public void onBackPressed(@NonNull Activity activity) {
        Iterator<LifecycleListener> it = this.f4172b.iterator();
        while (it.hasNext()) {
            it.next().onBackPressed(activity);
        }
    }
}
