package com.mopub.mobileads;

import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;
import java.io.Serializable;
import java.util.Locale;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastAbsoluteProgressTracker extends VastTracker implements Serializable, Comparable<VastAbsoluteProgressTracker> {

    /* renamed from: b, reason: collision with root package name */
    private final int f4401b;

    public VastAbsoluteProgressTracker(@NonNull String trackingUrl, int trackingMilliseconds) {
        super(trackingUrl);
        Preconditions.checkArgument(trackingMilliseconds >= 0);
        this.f4401b = trackingMilliseconds;
    }

    public int getTrackingMilliseconds() {
        return this.f4401b;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull VastAbsoluteProgressTracker other) {
        return getTrackingMilliseconds() - other.getTrackingMilliseconds();
    }

    public String toString() {
        return String.format(Locale.US, "%dms: %s", Integer.valueOf(this.f4401b), this.f4420a);
    }
}
