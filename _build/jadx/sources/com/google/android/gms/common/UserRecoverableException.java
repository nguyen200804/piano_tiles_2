package com.google.android.gms.common;

import android.content.Intent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class UserRecoverableException extends Exception {
    private final Intent mIntent;

    public UserRecoverableException(String str, Intent intent) {
        super(str);
        this.mIntent = intent;
    }

    public Intent getIntent() {
        return new Intent(this.mIntent);
    }
}
