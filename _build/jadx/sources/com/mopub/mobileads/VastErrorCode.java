package com.mopub.mobileads;

import android.support.annotation.NonNull;
import com.mopub.common.Preconditions;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum VastErrorCode {
    XML_PARSING_ERROR("100"),
    WRAPPER_TIMEOUT("301"),
    NO_ADS_VAST_RESPONSE("303"),
    GENERAL_LINEAR_AD_ERROR("400"),
    GENERAL_COMPANION_AD_ERROR("600"),
    UNDEFINED_ERROR("900");


    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final String f4407a;

    VastErrorCode(String errorCode) {
        Preconditions.checkNotNull(errorCode, "errorCode cannot be null");
        this.f4407a = errorCode;
    }

    @NonNull
    String a() {
        return this.f4407a;
    }
}
