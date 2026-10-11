package com.google.android.gms.internal;

import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.internal.zzgo;
import java.util.ArrayList;
import java.util.List;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzgt extends zzgo.zza {
    private final NativeContentAdMapper zzbpn;

    public zzgt(NativeContentAdMapper nativeContentAdMapper) {
        this.zzbpn = nativeContentAdMapper;
    }

    @Override // com.google.android.gms.internal.zzgo
    public String getAdvertiser() {
        return this.zzbpn.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.zzgo
    public String getBody() {
        return this.zzbpn.getBody();
    }

    @Override // com.google.android.gms.internal.zzgo
    public String getCallToAction() {
        return this.zzbpn.getCallToAction();
    }

    @Override // com.google.android.gms.internal.zzgo
    public Bundle getExtras() {
        return this.zzbpn.getExtras();
    }

    @Override // com.google.android.gms.internal.zzgo
    public String getHeadline() {
        return this.zzbpn.getHeadline();
    }

    @Override // com.google.android.gms.internal.zzgo
    public List getImages() {
        List<NativeAd.Image> images = this.zzbpn.getImages();
        if (images == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (NativeAd.Image image : images) {
            arrayList.add(new com.google.android.gms.ads.internal.formats.zzc(image.getDrawable(), image.getUri(), image.getScale()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.zzgo
    public boolean getOverrideClickHandling() {
        return this.zzbpn.getOverrideClickHandling();
    }

    @Override // com.google.android.gms.internal.zzgo
    public boolean getOverrideImpressionRecording() {
        return this.zzbpn.getOverrideImpressionRecording();
    }

    @Override // com.google.android.gms.internal.zzgo
    public void recordImpression() {
        this.zzbpn.recordImpression();
    }

    @Override // com.google.android.gms.internal.zzgo
    public void zzk(com.google.android.gms.dynamic.zzd zzdVar) {
        this.zzbpn.handleClick((View) com.google.android.gms.dynamic.zze.zzad(zzdVar));
    }

    @Override // com.google.android.gms.internal.zzgo
    public zzdr zzky() {
        NativeAd.Image logo = this.zzbpn.getLogo();
        if (logo != null) {
            return new com.google.android.gms.ads.internal.formats.zzc(logo.getDrawable(), logo.getUri(), logo.getScale());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzgo
    public void zzl(com.google.android.gms.dynamic.zzd zzdVar) {
        this.zzbpn.trackView((View) com.google.android.gms.dynamic.zze.zzad(zzdVar));
    }

    @Override // com.google.android.gms.internal.zzgo
    public void zzm(com.google.android.gms.dynamic.zzd zzdVar) {
        this.zzbpn.untrackView((View) com.google.android.gms.dynamic.zze.zzad(zzdVar));
    }
}
