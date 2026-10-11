package com.mopub.mobileads;

import android.support.annotation.NonNull;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class VideoViewabilityTracker extends VastTracker {

    /* renamed from: b, reason: collision with root package name */
    private final int f4470b;
    private final int c;

    public VideoViewabilityTracker(int viewablePlaytimeMS, int percentViewable, @NonNull String trackerUrl) {
        super(trackerUrl);
        this.f4470b = viewablePlaytimeMS;
        this.c = percentViewable;
    }

    public int getViewablePlaytimeMS() {
        return this.f4470b;
    }

    public int getPercentViewable() {
        return this.c;
    }
}
