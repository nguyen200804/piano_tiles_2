package com.facebook.ads.internal;

import com.facebook.ads.AdError;
import org.cocos2dx.lib.GameControllerDelegate;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum AdErrorType {
    UNKNOWN_ERROR(-1, "unknown error", false),
    NETWORK_ERROR(1000, "Network Error", true),
    NO_FILL(1001, "No Fill", true),
    LOAD_TOO_FREQUENTLY(1002, "Ad was re-loaded too frequently", true),
    DISABLED_APP(GameControllerDelegate.BUTTON_B, "App is disabled from making ad requests", true),
    SERVER_ERROR(AdError.SERVER_ERROR_CODE, "Server Error", true),
    INTERNAL_ERROR(AdError.INTERNAL_ERROR_CODE, "Internal Error", true),
    START_BEFORE_INIT(2004, "initAd must be called before startAd", true),
    AD_REQUEST_FAILED(1111, "Facebook Ads SDK request for ads failed", false),
    AD_REQUEST_TIMEOUT(1112, "Facebook Ads SDK request for ads timed out", false),
    PARSER_FAILURE(1201, "Failed to parse Facebook Ads SDK delivery response", false),
    UNKNOWN_RESPONSE(1202, "Unknown Facebook Ads SDK delivery response type", false),
    ERROR_MESSAGE(1203, "Facebook Ads SDK delivery response Error message", true),
    NO_AD_PLACEMENT(1302, "Facebook Ads SDK returned no ad placements", false),
    BID_IMPRESSION_MISMATCH(4001, "Bid payload does not match placement", true),
    BID_PAYLOAD_ERROR(4002, "Invalid bid payload", false);


    /* renamed from: a, reason: collision with root package name */
    private final int f2537a;

    /* renamed from: b, reason: collision with root package name */
    private final String f2538b;
    private final boolean c;

    AdErrorType(int i, String str, boolean z) {
        this.f2537a = i;
        this.f2538b = str;
        this.c = z;
    }

    public static AdErrorType adErrorTypeFromCode(int i) {
        return adErrorTypeFromCode(i, UNKNOWN_ERROR);
    }

    public static AdErrorType adErrorTypeFromCode(int i, AdErrorType adErrorType) {
        for (AdErrorType adErrorType2 : values()) {
            if (adErrorType2.getErrorCode() == i) {
                return adErrorType2;
            }
        }
        return adErrorType;
    }

    boolean a() {
        return this.c;
    }

    public AdError getAdError(String str) {
        return new b(this, str).b();
    }

    public b getAdErrorWrapper(String str) {
        return new b(this, str);
    }

    public String getDefaultErrorMessage() {
        return this.f2538b;
    }

    public int getErrorCode() {
        return this.f2537a;
    }
}
