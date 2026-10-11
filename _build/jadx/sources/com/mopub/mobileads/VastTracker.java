package com.mopub.mobileads;

import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;
import java.io.Serializable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VastTracker implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    protected final String f4420a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f4421b;
    private boolean c;

    public VastTracker(@NonNull String trackingUrl) {
        Preconditions.checkNotNull(trackingUrl);
        this.f4420a = trackingUrl;
    }

    public VastTracker(@NonNull String trackingUrl, boolean isRepeatable) {
        this(trackingUrl);
        this.c = isRepeatable;
    }

    @NonNull
    public String getTrackingUrl() {
        return this.f4420a;
    }

    public void setTracked() {
        this.f4421b = true;
    }

    public boolean isTracked() {
        return this.f4421b;
    }

    public boolean isRepeatable() {
        return this.c;
    }
}
