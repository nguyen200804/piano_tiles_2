package com.tencent.wxop.stat.b;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class n implements FileFilter {
    n() {
    }

    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        return Pattern.matches("cpu[0-9]", file.getName());
    }
}
