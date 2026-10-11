package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.internal.zzdr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzdy extends NativeContentAd {
    private final List<NativeAd.Image> zzbhd = new ArrayList();
    private final zzdx zzbhf;
    private final zzds zzbhg;

    public zzdy(zzdx zzdxVar) {
        zzds zzdsVar;
        zzdr zzky;
        this.zzbhf = zzdxVar;
        try {
            List images = this.zzbhf.getImages();
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
            zzky = this.zzbhf.zzky();
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to get icon.", e2);
        }
        if (zzky != null) {
            zzdsVar = new zzds(zzky);
            this.zzbhg = zzdsVar;
        }
        zzdsVar = null;
        this.zzbhg = zzdsVar;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public void destroy() {
        try {
            this.zzbhf.destroy();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to destroy", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public CharSequence getAdvertiser() {
        try {
            return this.zzbhf.getAdvertiser();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to get attribution.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public CharSequence getBody() {
        try {
            return this.zzbhf.getBody();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to get body.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public CharSequence getCallToAction() {
        try {
            return this.zzbhf.getCallToAction();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to get call to action.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public Bundle getExtras() {
        try {
            return this.zzbhf.getExtras();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzd("Failed to get extras", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public CharSequence getHeadline() {
        try {
            return this.zzbhf.getHeadline();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to get headline.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public List<NativeAd.Image> getImages() {
        return this.zzbhd;
    }

    @Override // com.google.android.gms.ads.formats.NativeContentAd
    public NativeAd.Image getLogo() {
        return this.zzbhg;
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
            return this.zzbhf.zzkv();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzb("Failed to retrieve native ad engine.", e);
            return null;
        }
    }
}
