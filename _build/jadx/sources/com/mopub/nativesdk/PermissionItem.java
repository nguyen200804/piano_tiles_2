package com.mopub.nativesdk;

import java.io.Serializable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class PermissionItem implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    String f4585a;

    /* renamed from: b, reason: collision with root package name */
    String f4586b;

    public String getPermissionCode() {
        return this.f4585a;
    }

    public void setPermissionCode(String str) {
        this.f4585a = str;
    }

    public String getPermissionGroup() {
        return this.f4586b;
    }

    public void setPermissionGroup(String str) {
        this.f4586b = str;
    }
}
