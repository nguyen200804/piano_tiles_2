package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzq;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class zzfj {

    @Nullable
    com.google.android.gms.ads.internal.client.zzq zzalf;

    @Nullable
    com.google.android.gms.ads.internal.client.zzw zzbkh;

    @Nullable
    zzho zzbki;

    @Nullable
    zzdo zzbkj;

    @Nullable
    com.google.android.gms.ads.internal.client.zzp zzbkk;

    @Nullable
    com.google.android.gms.ads.internal.reward.client.zzd zzbkl;

    private class zza extends zzq.zza {
        com.google.android.gms.ads.internal.client.zzq zzbkm;

        zza(com.google.android.gms.ads.internal.client.zzq zzqVar) {
            this.zzbkm = zzqVar;
        }

        @Override // com.google.android.gms.ads.internal.client.zzq
        public void onAdClosed() throws RemoteException {
            this.zzbkm.onAdClosed();
            com.google.android.gms.ads.internal.zzu.zzgb().zzlo();
        }

        @Override // com.google.android.gms.ads.internal.client.zzq
        public void onAdFailedToLoad(int i) throws RemoteException {
            this.zzbkm.onAdFailedToLoad(i);
        }

        @Override // com.google.android.gms.ads.internal.client.zzq
        public void onAdLeftApplication() throws RemoteException {
            this.zzbkm.onAdLeftApplication();
        }

        @Override // com.google.android.gms.ads.internal.client.zzq
        public void onAdLoaded() throws RemoteException {
            this.zzbkm.onAdLoaded();
        }

        @Override // com.google.android.gms.ads.internal.client.zzq
        public void onAdOpened() throws RemoteException {
            this.zzbkm.onAdOpened();
        }
    }

    zzfj() {
    }

    void zzc(com.google.android.gms.ads.internal.zzl zzlVar) {
        if (this.zzalf != null) {
            zzlVar.zza(new zza(this.zzalf));
        }
        if (this.zzbkh != null) {
            zzlVar.zza(this.zzbkh);
        }
        if (this.zzbki != null) {
            zzlVar.zza(this.zzbki);
        }
        if (this.zzbkj != null) {
            zzlVar.zza(this.zzbkj);
        }
        if (this.zzbkk != null) {
            zzlVar.zza(this.zzbkk);
        }
        if (this.zzbkl != null) {
            zzlVar.zza(this.zzbkl);
        }
    }
}
