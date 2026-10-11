package com.tencent.wxop.stat;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    private String f4831a = null;

    /* renamed from: b, reason: collision with root package name */
    private String f4832b = null;
    private String c = null;
    private boolean ba = false;
    private boolean bb = false;

    public final boolean R() {
        return this.ba;
    }

    public final String S() {
        return this.f4831a;
    }

    public final String T() {
        return this.f4832b;
    }

    public final boolean U() {
        return this.bb;
    }

    public final String getVersion() {
        return this.c;
    }

    public final void s(String str) {
        this.f4831a = str;
    }

    public final String toString() {
        return "StatSpecifyReportedInfo [appKey=" + this.f4831a + ", installChannel=" + this.f4832b + ", version=" + this.c + ", sendImmediately=" + this.ba + ", isImportant=" + this.bb + "]";
    }
}
