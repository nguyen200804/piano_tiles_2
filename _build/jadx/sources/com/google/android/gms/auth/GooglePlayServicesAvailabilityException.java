package com.google.android.gms.auth;

import android.content.Intent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GooglePlayServicesAvailabilityException extends UserRecoverableAuthException {
    private final int cn;

    GooglePlayServicesAvailabilityException(int i, String str, Intent intent) {
        super(str, intent);
        this.cn = i;
    }

    public int getConnectionStatusCode() {
        return this.cn;
    }
}
