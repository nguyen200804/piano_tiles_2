package com.cmplay.crashreport;

import java.io.File;
import java.io.FilenameFilter;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class q implements FilenameFilter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1311a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ m f1312b;

    q(m mVar, String str) {
        this.f1312b = mVar;
        this.f1311a = str;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return str.startsWith(this.f1311a);
    }
}
