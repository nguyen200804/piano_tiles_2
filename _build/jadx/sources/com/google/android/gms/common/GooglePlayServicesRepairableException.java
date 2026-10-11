package com.google.android.gms.common;

import android.content.Intent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GooglePlayServicesRepairableException extends UserRecoverableException {
    private final int cn;

    GooglePlayServicesRepairableException(int i, String str, Intent intent) {
        super(str, intent);
        this.cn = i;
    }

    public int getConnectionStatusCode() {
        return this.cn;
    }
}
