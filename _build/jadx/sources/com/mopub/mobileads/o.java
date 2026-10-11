package com.mopub.mobileads;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

/* compiled from: VideoTrackingEvent.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
enum o {
    START("start"),
    FIRST_QUARTILE("firstQuartile"),
    MIDPOINT("midpoint"),
    THIRD_QUARTILE("thirdQuartile"),
    COMPLETE("complete"),
    COMPANION_AD_VIEW("companionAdView"),
    COMPANION_AD_CLICK("companionAdClick"),
    UNKNOWN("");


    /* renamed from: a, reason: collision with root package name */
    private final String f4518a;

    o(String str) {
        this.f4518a = str;
    }

    @NonNull
    public String getName() {
        return this.f4518a;
    }

    @NonNull
    public static o fromString(@Nullable String name) {
        if (name == null) {
            return UNKNOWN;
        }
        for (o oVar : values()) {
            if (name.equals(oVar.getName())) {
                return oVar;
            }
        }
        return UNKNOWN;
    }
}
