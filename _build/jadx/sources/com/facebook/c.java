package com.facebook;

/* compiled from: AccessTokenSource.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum c {
    NONE(false),
    FACEBOOK_APPLICATION_WEB(true),
    FACEBOOK_APPLICATION_NATIVE(true),
    FACEBOOK_APPLICATION_SERVICE(true),
    WEB_VIEW(true),
    TEST_USER(true),
    CLIENT_TOKEN(true),
    DEVICE_AUTH(true);

    private final boolean i;

    c(boolean z) {
        this.i = z;
    }

    boolean a() {
        return this.i;
    }
}
