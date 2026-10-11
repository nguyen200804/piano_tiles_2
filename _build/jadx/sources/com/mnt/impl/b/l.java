package com.mnt.impl.b;

import java.util.Comparator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class l implements Comparator<com.mnt.impl.e.c> {
    l() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(com.mnt.impl.e.c cVar, com.mnt.impl.e.c cVar2) {
        return a(cVar, cVar2);
    }

    private static int a(com.mnt.impl.e.c cVar, com.mnt.impl.e.c cVar2) {
        int i;
        Throwable th;
        try {
            i = cVar2.g - cVar.g;
            if (i == 0) {
                try {
                    return (int) (Long.valueOf(cVar2.getCampId()).longValue() - Long.valueOf(cVar.getCampId()).longValue());
                } catch (Throwable th2) {
                    th = th2;
                    th.printStackTrace();
                    return i;
                }
            }
            return i;
        } catch (Throwable th3) {
            i = -1;
            th = th3;
        }
    }
}
