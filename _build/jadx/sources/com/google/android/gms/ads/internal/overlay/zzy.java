package com.google.android.gms.ads.internal.overlay;

import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzkh;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class zzy implements Runnable {
    private boolean mCancelled = false;
    private zzk zzbwf;

    zzy(zzk zzkVar) {
        this.zzbwf = zzkVar;
    }

    public void cancel() {
        this.mCancelled = true;
        zzkh.zzclc.removeCallbacks(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.mCancelled) {
            return;
        }
        this.zzbwf.zzoo();
        zzpk();
    }

    public void zzpk() {
        zzkh.zzclc.postDelayed(this, 250L);
    }
}
