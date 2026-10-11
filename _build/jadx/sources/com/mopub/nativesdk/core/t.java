package com.mopub.nativesdk.core;

/* compiled from: AKService.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
final class t extends Thread {
    t() {
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (!isInterrupted()) {
            try {
                sleep(10000L);
                C0219a.f4649b.sendEmptyMessage(10);
            } catch (InterruptedException e) {
            }
        }
        super.run();
    }
}
