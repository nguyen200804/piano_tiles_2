package com.facebook.ads.internal;

import android.text.TextUtils;
import com.facebook.ads.AdError;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private final AdErrorType f2646a;

    /* renamed from: b, reason: collision with root package name */
    private final String f2647b;

    public b(int i, String str) {
        this(AdErrorType.adErrorTypeFromCode(i), str);
    }

    public b(AdErrorType adErrorType, String str) {
        str = TextUtils.isEmpty(str) ? adErrorType.getDefaultErrorMessage() : str;
        this.f2646a = adErrorType;
        this.f2647b = str;
    }

    public AdErrorType a() {
        return this.f2646a;
    }

    public AdError b() {
        return this.f2646a.a() ? new AdError(this.f2646a.getErrorCode(), this.f2647b) : new AdError(AdErrorType.UNKNOWN_ERROR.getErrorCode(), AdErrorType.UNKNOWN_ERROR.getDefaultErrorMessage());
    }
}
