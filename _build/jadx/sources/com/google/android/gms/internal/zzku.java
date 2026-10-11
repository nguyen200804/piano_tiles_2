package com.google.android.gms.internal;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzku {
    private final View mView;
    private Activity zzcmv;
    private boolean zzcmw;
    private boolean zzcmx;
    private boolean zzcmy;
    private ViewTreeObserver.OnGlobalLayoutListener zzcmz;
    private ViewTreeObserver.OnScrollChangedListener zzcna;

    public zzku(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.zzcmv = activity;
        this.mView = view;
        this.zzcmz = onGlobalLayoutListener;
        this.zzcna = onScrollChangedListener;
    }

    private void zztu() {
        if (this.zzcmw) {
            return;
        }
        if (this.zzcmz != null) {
            if (this.zzcmv != null) {
                com.google.android.gms.ads.internal.zzu.zzfq().zza(this.zzcmv, this.zzcmz);
            }
            com.google.android.gms.ads.internal.zzu.zzgk().zza(this.mView, this.zzcmz);
        }
        if (this.zzcna != null) {
            if (this.zzcmv != null) {
                com.google.android.gms.ads.internal.zzu.zzfq().zza(this.zzcmv, this.zzcna);
            }
            com.google.android.gms.ads.internal.zzu.zzgk().zza(this.mView, this.zzcna);
        }
        this.zzcmw = true;
    }

    private void zztv() {
        if (this.zzcmv != null && this.zzcmw) {
            if (this.zzcmz != null && this.zzcmv != null) {
                com.google.android.gms.ads.internal.zzu.zzfs().zzb(this.zzcmv, this.zzcmz);
            }
            if (this.zzcna != null && this.zzcmv != null) {
                com.google.android.gms.ads.internal.zzu.zzfq().zzb(this.zzcmv, this.zzcna);
            }
            this.zzcmw = false;
        }
    }

    public void onAttachedToWindow() {
        this.zzcmx = true;
        if (this.zzcmy) {
            zztu();
        }
    }

    public void onDetachedFromWindow() {
        this.zzcmx = false;
        zztv();
    }

    public void zzl(Activity activity) {
        this.zzcmv = activity;
    }

    public void zzts() {
        this.zzcmy = true;
        if (this.zzcmx) {
            zztu();
        }
    }

    public void zztt() {
        this.zzcmy = false;
        zztv();
    }
}
