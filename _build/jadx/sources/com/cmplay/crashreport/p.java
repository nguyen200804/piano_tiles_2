package com.cmplay.crashreport;

import java.io.File;
import java.util.Comparator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class p implements Comparator {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ m f1310a;

    p(m mVar) {
        this.f1310a = mVar;
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(File file, File file2) {
        return file.getName().compareTo(file2.getName());
    }
}
