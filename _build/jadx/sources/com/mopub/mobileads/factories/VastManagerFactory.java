package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.mobileads.VastManager;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastManagerFactory {

    /* renamed from: a, reason: collision with root package name */
    protected static VastManagerFactory f4504a = new VastManagerFactory();

    public static VastManager create(Context context) {
        return f4504a.internalCreate(context, true);
    }

    public static VastManager create(Context context, boolean preCacheVideo) {
        return f4504a.internalCreate(context, preCacheVideo);
    }

    public VastManager internalCreate(Context context, boolean preCacheVideo) {
        return new VastManager(context, preCacheVideo);
    }

    @Deprecated
    public static void setInstance(VastManagerFactory factory) {
        f4504a = factory;
    }
}
