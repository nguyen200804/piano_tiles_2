package com.example.luckywheel.d;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class g implements FileFilter {
    g() {
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return Pattern.matches("cpu[0-9]", file.getName());
    }
}
