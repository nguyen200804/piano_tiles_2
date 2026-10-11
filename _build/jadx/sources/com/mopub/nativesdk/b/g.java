package com.mopub.nativesdk.b;

import org.apache.commons.io.IOUtils;

/* compiled from: ProbeResult.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    private String f4604a;

    /* renamed from: b, reason: collision with root package name */
    private long f4605b = -1;
    private int c = -1;
    private int d = -1;
    private String e = "";
    private String f;
    private String g;
    private String h;

    public final String toString() {
        return "{\n    url=" + this.f4604a + "\n    time=" + this.f4605b + "\n    type=" + this.c + "\n    errno=" + this.d + "\n    code=" + this.e + "\n    errMsg=" + this.h + "\n    header=" + this.g + "\n    html=" + (this.f != null ? this.f.replaceAll(IOUtils.LINE_SEPARATOR_UNIX, "    ") : this.f) + "\n}" + IOUtils.LINE_SEPARATOR_UNIX;
    }
}
