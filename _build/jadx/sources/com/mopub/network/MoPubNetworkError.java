package com.mopub.network;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.VolleyError;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class MoPubNetworkError extends VolleyError {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final Reason f4719a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final Integer f4720b;

    public enum Reason {
        WARMING_UP,
        NO_FILL,
        BAD_HEADER_DATA,
        BAD_BODY,
        TRACKING_FAILURE,
        UNSPECIFIED
    }

    public MoPubNetworkError(@NonNull Reason reason) {
        this.f4719a = reason;
        this.f4720b = null;
    }

    public MoPubNetworkError(@NonNull NetworkResponse networkResponse, @NonNull Reason reason) {
        super(networkResponse);
        this.f4719a = reason;
        this.f4720b = null;
    }

    public MoPubNetworkError(@NonNull Throwable cause, @NonNull Reason reason) {
        super(cause);
        this.f4719a = reason;
        this.f4720b = null;
    }

    public MoPubNetworkError(@NonNull String message, @NonNull Reason reason) {
        this(message, reason, (Integer) null);
    }

    public MoPubNetworkError(@NonNull String message, @NonNull Throwable cause, @NonNull Reason reason) {
        super(message, cause);
        this.f4719a = reason;
        this.f4720b = null;
    }

    public MoPubNetworkError(@NonNull String message, @NonNull Reason reason, @Nullable Integer refreshTimeMillis) {
        super(message);
        this.f4719a = reason;
        this.f4720b = refreshTimeMillis;
    }

    @NonNull
    public Reason getReason() {
        return this.f4719a;
    }

    @Nullable
    public Integer getRefreshTimeMillis() {
        return this.f4720b;
    }
}
