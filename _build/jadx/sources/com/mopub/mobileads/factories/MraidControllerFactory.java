package com.mopub.mobileads.factories;

import android.content.Context;
import android.support.annotation.NonNull;
import com.mopub.common.AdReport;
import com.mopub.common.VisibleForTesting;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.PlacementType;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MraidControllerFactory {

    /* renamed from: a, reason: collision with root package name */
    protected static MraidControllerFactory f4503a = new MraidControllerFactory();

    @VisibleForTesting
    public static void setInstance(MraidControllerFactory factory) {
        f4503a = factory;
    }

    public static MraidController create(@NonNull Context context, @NonNull AdReport adReport, @NonNull PlacementType placementType) {
        return f4503a.a(context, adReport, placementType);
    }

    protected MraidController a(@NonNull Context context, @NonNull AdReport adReport, @NonNull PlacementType placementType) {
        return new MraidController(context, adReport, placementType);
    }
}
