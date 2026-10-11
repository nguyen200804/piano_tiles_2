package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.internal.zzge;
import com.google.android.gms.internal.zzgl;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzgc extends zzgl.zza {
    private final Object zzail = new Object();
    private zzge.zza zzboa;
    private zzgb zzbob;

    @Override // com.google.android.gms.internal.zzgl
    public void onAdClicked() {
        synchronized (this.zzail) {
            if (this.zzbob != null) {
                this.zzbob.zzdz();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzgl
    public void onAdClosed() {
        synchronized (this.zzail) {
            if (this.zzbob != null) {
                this.zzbob.zzea();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzgl
    public void onAdFailedToLoad(int i) {
        synchronized (this.zzail) {
            if (this.zzboa != null) {
                this.zzboa.zzy(i == 3 ? 1 : 2);
                this.zzboa = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.zzgl
    public void onAdImpression() {
        synchronized (this.zzail) {
            if (this.zzbob != null) {
                this.zzbob.zzee();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzgl
    public void onAdLeftApplication() {
        synchronized (this.zzail) {
            if (this.zzbob != null) {
                this.zzbob.zzeb();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzgl
    public void onAdLoaded() {
        synchronized (this.zzail) {
            if (this.zzboa != null) {
                this.zzboa.zzy(0);
                this.zzboa = null;
            } else {
                if (this.zzbob != null) {
                    this.zzbob.zzed();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzgl
    public void onAdOpened() {
        synchronized (this.zzail) {
            if (this.zzbob != null) {
                this.zzbob.zzec();
            }
        }
    }

    public void zza(@Nullable zzgb zzgbVar) {
        synchronized (this.zzail) {
            this.zzbob = zzgbVar;
        }
    }

    public void zza(zzge.zza zzaVar) {
        synchronized (this.zzail) {
            this.zzboa = zzaVar;
        }
    }

    @Override // com.google.android.gms.internal.zzgl
    public void zza(zzgm zzgmVar) {
        synchronized (this.zzail) {
            if (this.zzboa != null) {
                this.zzboa.zza(0, zzgmVar);
                this.zzboa = null;
            } else {
                if (this.zzbob != null) {
                    this.zzbob.zzed();
                }
            }
        }
    }
}
