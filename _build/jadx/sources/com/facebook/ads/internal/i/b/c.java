package com.facebook.ads.internal.i.b;

import java.io.File;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class c {

    /* renamed from: a, reason: collision with root package name */
    public final File f2774a;

    /* renamed from: b, reason: collision with root package name */
    public final com.facebook.ads.internal.i.b.a.c f2775b;
    public final com.facebook.ads.internal.i.b.a.a c;

    c(File file, com.facebook.ads.internal.i.b.a.c cVar, com.facebook.ads.internal.i.b.a.a aVar) {
        this.f2774a = file;
        this.f2775b = cVar;
        this.c = aVar;
    }

    File a(String str) {
        return new File(this.f2774a, this.f2775b.a(str));
    }
}
