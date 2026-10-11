package com.mopub.mobileads;

import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;
import java.io.Serializable;
import java.util.Locale;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastFractionalProgressTracker extends VastTracker implements Serializable, Comparable<VastFractionalProgressTracker> {

    /* renamed from: b, reason: collision with root package name */
    private final float f4410b;

    public VastFractionalProgressTracker(@NonNull String trackingUrl, float trackingFraction) {
        super(trackingUrl);
        Preconditions.checkArgument(trackingFraction >= 0.0f);
        this.f4410b = trackingFraction;
    }

    public float trackingFraction() {
        return this.f4410b;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull VastFractionalProgressTracker other) {
        return Double.compare(trackingFraction(), other.trackingFraction());
    }

    public String toString() {
        return String.format(Locale.US, "%2f: %s", Float.valueOf(this.f4410b), this.f4420a);
    }
}
