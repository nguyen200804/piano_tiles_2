package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.VisibleForTesting;
import com.mopub.mobileads.MoPubView;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MoPubViewFactory {

    /* renamed from: a, reason: collision with root package name */
    protected static MoPubViewFactory f4502a = new MoPubViewFactory();

    @VisibleForTesting
    @Deprecated
    public static void setInstance(MoPubViewFactory factory) {
        f4502a = factory;
    }

    public static MoPubView create(Context context) {
        return f4502a.a(context);
    }

    protected MoPubView a(Context context) {
        return new MoPubView(context);
    }
}
