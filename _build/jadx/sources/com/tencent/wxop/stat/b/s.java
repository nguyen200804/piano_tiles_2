package com.tencent.wxop.stat.b;

import android.net.wifi.ScanResult;
import java.util.Comparator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class s implements Comparator<ScanResult> {
    s() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(ScanResult scanResult, ScanResult scanResult2) {
        int abs = Math.abs(scanResult.level);
        int abs2 = Math.abs(scanResult2.level);
        if (abs > abs2) {
            return 1;
        }
        return abs == abs2 ? 0 : -1;
    }
}
