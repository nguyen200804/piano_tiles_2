package b.a;

import android.os.Build;

/* compiled from: SerialTracker.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class cj extends a {
    public cj() {
        super("serial");
    }

    @Override // b.a.a
    public String f() {
        if (Build.VERSION.SDK_INT >= 9) {
            return Build.SERIAL;
        }
        return null;
    }
}
