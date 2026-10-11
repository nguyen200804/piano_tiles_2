package com.google.android.gms.internal;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.doubleclick.CustomRenderedAd;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzdm implements CustomRenderedAd {
    private final zzdn zzben;

    public zzdm(zzdn zzdnVar) {
        this.zzben = zzdnVar;
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public String getBaseUrl() {
        try {
            return this.zzben.zzkk();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not delegate getBaseURL to CustomRenderedAd", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public String getContent() {
        try {
            return this.zzben.getContent();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not delegate getContent to CustomRenderedAd", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public void onAdRendered(View view) {
        try {
            this.zzben.zzi(view != null ? com.google.android.gms.dynamic.zze.zzac(view) : null);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not delegate onAdRendered to CustomRenderedAd", e);
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public void recordClick() {
        try {
            this.zzben.recordClick();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not delegate recordClick to CustomRenderedAd", e);
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public void recordImpression() {
        try {
            this.zzben.recordImpression();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Could not delegate recordImpression to CustomRenderedAd", e);
        }
    }
}
