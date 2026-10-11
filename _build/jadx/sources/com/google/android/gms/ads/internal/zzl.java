package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.view.Window;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzdc;
import com.google.android.gms.internal.zzdk;
import com.google.android.gms.internal.zzet;
import com.google.android.gms.internal.zzey;
import com.google.android.gms.internal.zzfz;
import com.google.android.gms.internal.zzga;
import com.google.android.gms.internal.zzgj;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zziq;
import com.google.android.gms.internal.zzjo;
import com.google.android.gms.internal.zzju;
import com.google.android.gms.internal.zzkc;
import com.google.android.gms.internal.zzkd;
import com.google.android.gms.internal.zzkh;
import com.google.android.gms.internal.zzlh;
import com.google.android.gms.internal.zzli;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzl extends zzc implements zzet, zzey.zza {
    protected transient boolean zzalw;
    private int zzalx;
    private boolean zzaly;
    private float zzalz;

    @zzin
    private class zza extends zzkc {
        private final int zzama;

        public zza(int i) {
            this.zzama = i;
        }

        @Override // com.google.android.gms.internal.zzkc
        public void onStop() {
        }

        @Override // com.google.android.gms.internal.zzkc
        public void zzew() {
            InterstitialAdParameterParcel interstitialAdParameterParcel = new InterstitialAdParameterParcel(zzl.this.zzajs.zzame, zzl.this.zzet(), zzl.this.zzaly, zzl.this.zzalz, zzl.this.zzajs.zzame ? this.zzama : -1);
            int requestedOrientation = zzl.this.zzajs.zzapb.zzbtm.getRequestedOrientation();
            final AdOverlayInfoParcel adOverlayInfoParcel = new AdOverlayInfoParcel(zzl.this, zzl.this, zzl.this, zzl.this.zzajs.zzapb.zzbtm, requestedOrientation == -1 ? zzl.this.zzajs.zzapb.orientation : requestedOrientation, zzl.this.zzajs.zzaow, zzl.this.zzajs.zzapb.zzccd, interstitialAdParameterParcel);
            zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.ads.internal.zzl.zza.1
                @Override // java.lang.Runnable
                public void run() {
                    zzu.zzfo().zza(zzl.this.zzajs.zzagf, adOverlayInfoParcel);
                }
            });
        }
    }

    public zzl(Context context, AdSizeParcel adSizeParcel, String str, zzgj zzgjVar, VersionInfoParcel versionInfoParcel, zzd zzdVar) {
        super(context, adSizeParcel, str, zzgjVar, versionInfoParcel, zzdVar);
        this.zzalx = -1;
        this.zzalw = false;
    }

    private void zzb(Bundle bundle) {
        zzu.zzfq().zzb(this.zzajs.zzagf, this.zzajs.zzaow.zzcs, "gmob-apps", bundle, false);
    }

    private zzju.zza zzc(zzju.zza zzaVar) {
        try {
            String jSONObject = zziq.zzc(zzaVar.zzciq).toString();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, zzaVar.zzcip.zzaou);
            zzga zzgaVar = new zzga(Collections.singletonList(new zzfz(jSONObject, null, Collections.singletonList("com.google.ads.mediation.admob.AdMobAdapter"), null, null, Collections.emptyList(), Collections.emptyList(), jSONObject2.toString(), null, Collections.emptyList(), Collections.emptyList(), null, null, null, null, null, Collections.emptyList())), -1L, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), false, "", -1L, 0, 1, null, 0, -1, -1L, false);
            AdResponseParcel adResponseParcel = zzaVar.zzciq;
            return new zzju.zza(zzaVar.zzcip, new AdResponseParcel(zzaVar.zzcip, adResponseParcel.zzbto, adResponseParcel.body, adResponseParcel.zzbnm, adResponseParcel.zzbnn, adResponseParcel.zzcbx, true, adResponseParcel.zzcbz, adResponseParcel.zzcca, adResponseParcel.zzbns, adResponseParcel.orientation, adResponseParcel.zzccb, adResponseParcel.zzccc, adResponseParcel.zzccd, adResponseParcel.zzcce, adResponseParcel.zzccf, adResponseParcel.zzccg, adResponseParcel.zzcch, adResponseParcel.zzauu, adResponseParcel.zzcaz, adResponseParcel.zzcci, adResponseParcel.zzccj, adResponseParcel.zzccm, adResponseParcel.zzauv, adResponseParcel.zzauw, adResponseParcel.zzccn, adResponseParcel.zzcco, adResponseParcel.zzccp, adResponseParcel.zzccq, adResponseParcel.zzccr, adResponseParcel.zzcbq, adResponseParcel.zzcbr, adResponseParcel.zzbnp, adResponseParcel.zzccs, adResponseParcel.zzbnq, adResponseParcel.zzcct), zzgaVar, zzaVar.zzapa, zzaVar.errorCode, zzaVar.zzcik, zzaVar.zzcil, zzaVar.zzcie);
        } catch (JSONException e) {
            zzkd.zzb("Unable to generate ad state for an interstitial ad with pooling.", e);
            return zzaVar;
        }
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.client.zzu
    public void showInterstitial() {
        zzab.zzhi("showInterstitial must be called on the main UI thread.");
        if (this.zzajs.zzapb == null) {
            zzkd.zzcx("The interstitial has not loaded.");
            return;
        }
        if (zzdc.zzbau.get().booleanValue()) {
            String packageName = this.zzajs.zzagf.getApplicationContext() != null ? this.zzajs.zzagf.getApplicationContext().getPackageName() : this.zzajs.zzagf.getPackageName();
            if (!this.zzalw) {
                zzkd.zzcx("It is not recommended to show an interstitial before onAdLoaded completes.");
                Bundle bundle = new Bundle();
                bundle.putString("appid", packageName);
                bundle.putString("action", "show_interstitial_before_load_finish");
                zzb(bundle);
            }
            if (!zzu.zzfq().zzai(this.zzajs.zzagf)) {
                zzkd.zzcx("It is not recommended to show an interstitial when app is not in foreground.");
                Bundle bundle2 = new Bundle();
                bundle2.putString("appid", packageName);
                bundle2.putString("action", "show_interstitial_app_not_in_foreground");
                zzb(bundle2);
            }
        }
        if (this.zzajs.zzgq()) {
            return;
        }
        if (this.zzajs.zzapb.zzcby && this.zzajs.zzapb.zzboo != null) {
            try {
                this.zzajs.zzapb.zzboo.showInterstitial();
                return;
            } catch (RemoteException e) {
                zzkd.zzd("Could not show interstitial.", e);
                zzeu();
                return;
            }
        }
        if (this.zzajs.zzapb.zzbtm == null) {
            zzkd.zzcx("The interstitial failed to load.");
            return;
        }
        if (this.zzajs.zzapb.zzbtm.zzun()) {
            zzkd.zzcx("The interstitial is already showing.");
            return;
        }
        this.zzajs.zzapb.zzbtm.zzah(true);
        if (this.zzajs.zzapb.zzcie != null) {
            this.zzaju.zza(this.zzajs.zzapa, this.zzajs.zzapb);
        }
        Bitmap zzaj = this.zzajs.zzame ? zzu.zzfq().zzaj(this.zzajs.zzagf) : null;
        this.zzalx = zzu.zzgh().zzb(zzaj);
        if (zzdc.zzbca.get().booleanValue() && zzaj != null) {
            return;
        }
        InterstitialAdParameterParcel interstitialAdParameterParcel = new InterstitialAdParameterParcel(this.zzajs.zzame, zzet(), false, 0.0f, -1);
        int requestedOrientation = this.zzajs.zzapb.zzbtm.getRequestedOrientation();
        if (requestedOrientation == -1) {
            requestedOrientation = this.zzajs.zzapb.orientation;
        }
        zzu.zzfo().zza(this.zzajs.zzagf, new AdOverlayInfoParcel(this, this, this, this.zzajs.zzapb.zzbtm, requestedOrientation, this.zzajs.zzaow, this.zzajs.zzapb.zzccd, interstitialAdParameterParcel));
    }

    @Override // com.google.android.gms.ads.internal.zzc
    protected zzlh zza(zzju.zza zzaVar, @Nullable zze zzeVar, @Nullable zzjo zzjoVar) {
        zzlh zza2 = zzu.zzfr().zza(this.zzajs.zzagf, this.zzajs.zzapa, false, false, this.zzajs.zzaov, this.zzajs.zzaow, this.zzajn, this, this.zzajv);
        zza2.zzuj().zza(this, null, this, this, zzdc.zzazt.get().booleanValue(), this, this, zzeVar, null, zzjoVar);
        zza(zza2);
        zza2.zzcz(zzaVar.zzcip.zzcbg);
        zzey.zza(zza2, this);
        return zza2;
    }

    @Override // com.google.android.gms.ads.internal.zzc, com.google.android.gms.ads.internal.zza
    public void zza(zzju.zza zzaVar, zzdk zzdkVar) {
        if (!zzdc.zzbae.get().booleanValue()) {
            super.zza(zzaVar, zzdkVar);
            return;
        }
        if (zzaVar.errorCode != -2) {
            super.zza(zzaVar, zzdkVar);
            return;
        }
        Bundle bundle = zzaVar.zzcip.zzcar.zzatw.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        boolean z = bundle == null || !bundle.containsKey("gw");
        boolean z2 = zzaVar.zzciq.zzcby ? false : true;
        if (z && z2) {
            this.zzajs.zzapc = zzc(zzaVar);
        }
        super.zza(this.zzajs.zzapc, zzdkVar);
    }

    @Override // com.google.android.gms.internal.zzet
    public void zza(boolean z, float f) {
        this.zzaly = z;
        this.zzalz = f;
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza
    public boolean zza(AdRequestParcel adRequestParcel, zzdk zzdkVar) {
        if (this.zzajs.zzapb == null) {
            return super.zza(adRequestParcel, zzdkVar);
        }
        zzkd.zzcx("An interstitial is already loading. Aborting.");
        return false;
    }

    @Override // com.google.android.gms.ads.internal.zzb
    protected boolean zza(AdRequestParcel adRequestParcel, zzju zzjuVar, boolean z) {
        if (this.zzajs.zzgp() && zzjuVar.zzbtm != null) {
            zzu.zzfs().zzi(zzjuVar.zzbtm);
        }
        return this.zzajr.zzfc();
    }

    @Override // com.google.android.gms.ads.internal.zzc, com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza
    public boolean zza(@Nullable zzju zzjuVar, zzju zzjuVar2) {
        if (!super.zza(zzjuVar, zzjuVar2)) {
            return false;
        }
        if (!this.zzajs.zzgp() && this.zzajs.zzapv != null && zzjuVar2.zzcie != null) {
            this.zzaju.zza(this.zzajs.zzapa, zzjuVar2, this.zzajs.zzapv);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.zzey.zza
    public void zzb(RewardItemParcel rewardItemParcel) {
        if (this.zzajs.zzapb != null) {
            if (this.zzajs.zzapb.zzccp != null) {
                zzu.zzfq().zza(this.zzajs.zzagf, this.zzajs.zzaow.zzcs, this.zzajs.zzapb.zzccp);
            }
            if (this.zzajs.zzapb.zzccn != null) {
                rewardItemParcel = this.zzajs.zzapb.zzccn;
            }
        }
        zza(rewardItemParcel);
    }

    @Override // com.google.android.gms.ads.internal.zza
    protected void zzdr() {
        zzeu();
        super.zzdr();
    }

    @Override // com.google.android.gms.ads.internal.zza
    protected void zzdu() {
        super.zzdu();
        this.zzalw = true;
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.overlay.zzg
    public void zzdy() {
        zzli zzuj;
        recordImpression();
        super.zzdy();
        if (this.zzajs.zzapb == null || this.zzajs.zzapb.zzbtm == null || (zzuj = this.zzajs.zzapb.zzbtm.zzuj()) == null) {
            return;
        }
        zzuj.zzva();
    }

    protected boolean zzet() {
        Window window;
        if (!(this.zzajs.zzagf instanceof Activity) || (window = ((Activity) this.zzajs.zzagf).getWindow()) == null || window.getDecorView() == null) {
            return false;
        }
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        window.getDecorView().getGlobalVisibleRect(rect, null);
        window.getDecorView().getWindowVisibleDisplayFrame(rect2);
        return (rect.bottom == 0 || rect2.bottom == 0 || rect.top != rect2.top) ? false : true;
    }

    public void zzeu() {
        zzu.zzgh().zzb(Integer.valueOf(this.zzalx));
        if (this.zzajs.zzgp()) {
            this.zzajs.zzgm();
            this.zzajs.zzapb = null;
            this.zzajs.zzame = false;
            this.zzalw = false;
        }
    }

    @Override // com.google.android.gms.internal.zzey.zza
    public void zzev() {
        if (this.zzajs.zzapb != null && this.zzajs.zzapb.zzcij != null) {
            zzu.zzfq().zza(this.zzajs.zzagf, this.zzajs.zzaow.zzcs, this.zzajs.zzapb.zzcij);
        }
        zzdv();
    }

    @Override // com.google.android.gms.internal.zzet
    public void zzg(boolean z) {
        this.zzajs.zzame = z;
    }
}
