package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.internal.zzdr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzdw extends NativeAppInstallAd {
    private final zzdv zzbhc;
    private final List<NativeAd.Image> zzbhd = new ArrayList();
    private final zzds zzbhe;

    public zzdw(zzdv zzdvVar) {
        zzds zzdsVar;
        zzdr zzku;
        this.zzbhc = zzdvVar;
        try {
            List images = this.zzbhc.getImages();
            if (images != null) {
                Iterator it = images.iterator();
                while (it.hasNext()) {
                    zzdr zze = zze(it.next());
                    if (zze != null) {
                        this.zzbhd.add(new zzds(zze));
                    }
                }
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to get image.", e);
        }
        try {
            zzku = this.zzbhc.zzku();
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to get icon.", e2);
        }
        if (zzku != null) {
            zzdsVar = new zzds(zzku);
            this.zzbhe = zzdsVar;
        }
        zzdsVar = null;
        this.zzbhe = zzdsVar;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public void destroy() {
        try {
            this.zzbhc.destroy();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to destroy", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public CharSequence getBody() {
        try {
            return this.zzbhc.getBody();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to get body.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public CharSequence getCallToAction() {
        try {
            return this.zzbhc.getCallToAction();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to get call to action.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public Bundle getExtras() {
        try {
            return this.zzbhc.getExtras();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to get extras", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public CharSequence getHeadline() {
        try {
            return this.zzbhc.getHeadline();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to get headline.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public NativeAd.Image getIcon() {
        return this.zzbhe;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public List<NativeAd.Image> getImages() {
        return this.zzbhd;
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public CharSequence getPrice() {
        try {
            return this.zzbhc.getPrice();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to get price.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public Double getStarRating() {
        try {
            double starRating = this.zzbhc.getStarRating();
            if (starRating == -1.0d) {
                return null;
            }
            return Double.valueOf(starRating);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to get star rating.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAppInstallAd
    public CharSequence getStore() {
        try {
            return this.zzbhc.getStore();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to get store", e);
            return null;
        }
    }

    zzdr zze(Object obj) {
        if (obj instanceof IBinder) {
            return zzdr.zza.zzy((IBinder) obj);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.formats.NativeAd
    /* renamed from: zzkv, reason: merged with bridge method [inline-methods] */
    public com.google.android.gms.dynamic.zzd zzdg() {
        try {
            return this.zzbhc.zzkv();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to retrieve native ad engine.", e);
            return null;
        }
    }
}
