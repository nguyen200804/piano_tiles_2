package android.support.v4.os;

import android.os.Trace;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class TraceJellybeanMR2 {
    TraceJellybeanMR2() {
    }

    public static void beginSection(String section) {
        Trace.beginSection(section);
    }

    public static void endSection() {
        Trace.endSection();
    }
}
