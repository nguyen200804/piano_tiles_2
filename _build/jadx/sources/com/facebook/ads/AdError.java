package com.facebook.ads;

import android.text.TextUtils;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AdError {
    public static final int LOAD_TOO_FREQUENTLY_ERROR_CODE = 1002;
    public static final int MEDIATION_ERROR_CODE = 3001;
    public static final int NETWORK_ERROR_CODE = 1000;
    public static final int NO_FILL_ERROR_CODE = 1001;

    /* renamed from: a, reason: collision with root package name */
    private final int f2442a;

    /* renamed from: b, reason: collision with root package name */
    private final String f2443b;
    public static final AdError NETWORK_ERROR = new AdError(1000, "Network Error");
    public static final AdError NO_FILL = new AdError(1001, "No Fill");
    public static final AdError LOAD_TOO_FREQUENTLY = new AdError(1002, "Ad was re-loaded too frequently");
    public static final int SERVER_ERROR_CODE = 2000;
    public static final AdError SERVER_ERROR = new AdError(SERVER_ERROR_CODE, "Server Error");
    public static final int INTERNAL_ERROR_CODE = 2001;
    public static final AdError INTERNAL_ERROR = new AdError(INTERNAL_ERROR_CODE, "Internal Error");
    public static final int CACHE_ERROR_CODE = 2002;
    public static final AdError CACHE_ERROR = new AdError(CACHE_ERROR_CODE, "Cache Error");
    public static final AdError MEDIATION_ERROR = new AdError(3001, "Mediation Error");

    @Deprecated
    public static final AdError MISSING_PROPERTIES = new AdError(CACHE_ERROR_CODE, "Native ad failed to load due to missing properties");

    public AdError(int i, String str) {
        str = TextUtils.isEmpty(str) ? "unknown error" : str;
        this.f2442a = i;
        this.f2443b = str;
    }

    public int getErrorCode() {
        return this.f2442a;
    }

    public String getErrorMessage() {
        return this.f2443b;
    }
}
