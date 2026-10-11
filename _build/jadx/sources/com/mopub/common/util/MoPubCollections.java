package com.mopub.common.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.Collection;
import java.util.Collections;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MoPubCollections {
    public static <T> void addAllNonNull(@NonNull Collection<? super T> c, @Nullable T... a2) {
        Collections.addAll(c, a2);
        c.removeAll(Collections.singleton(null));
    }
}
