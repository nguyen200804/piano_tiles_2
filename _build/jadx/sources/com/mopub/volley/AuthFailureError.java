package com.mopub.volley;

import android.content.Intent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AuthFailureError extends VolleyError {

    /* renamed from: a, reason: collision with root package name */
    private Intent f4747a;

    public AuthFailureError() {
    }

    public AuthFailureError(Intent intent) {
        this.f4747a = intent;
    }

    public AuthFailureError(NetworkResponse response) {
        super(response);
    }

    public AuthFailureError(String message) {
        super(message);
    }

    public AuthFailureError(String message, Exception reason) {
        super(message, reason);
    }

    public Intent getResolutionIntent() {
        return this.f4747a;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f4747a != null ? "User needs to (re)enter credentials." : super.getMessage();
    }
}
