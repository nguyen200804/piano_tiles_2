package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.util.DisplayMetrics;
import android.webkit.CookieManager;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.purchase.GInAppPurchaseManagerInfoParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.CapabilityParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzdc;
import com.google.android.gms.internal.zzdk;
import com.google.android.gms.internal.zzer;
import com.google.android.gms.internal.zzgb;
import com.google.android.gms.internal.zzgj;
import com.google.android.gms.internal.zzhl;
import com.google.android.gms.internal.zzho;
import com.google.android.gms.internal.zzhs;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzju;
import com.google.android.gms.internal.zzjv;
import com.google.android.gms.internal.zzjw;
import com.google.android.gms.internal.zzkd;
import com.google.android.gms.internal.zzkh;
import com.google.android.gms.internal.zzlh;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.ArrayList;
import java.util.UUID;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzb extends zza implements com.google.android.gms.ads.internal.overlay.zzg, com.google.android.gms.ads.internal.purchase.zzj, zzs, zzer, zzgb {
    private final Messenger mMessenger;
    protected final zzgj zzajz;
    protected transient boolean zzaka;

    public zzb(Context context, AdSizeParcel adSizeParcel, String str, zzgj zzgjVar, VersionInfoParcel versionInfoParcel, zzd zzdVar) {
        this(new zzv(context, adSizeParcel, str, versionInfoParcel), zzgjVar, null, zzdVar);
    }

    protected zzb(zzv zzvVar, zzgj zzgjVar, @Nullable zzr zzrVar, zzd zzdVar) {
        super(zzvVar, zzrVar, zzdVar);
        this.zzajz = zzgjVar;
        this.mMessenger = new Messenger(new zzhl(this.zzajs.zzagf));
        this.zzaka = false;
    }

    private AdRequestInfoParcel.zza zza(AdRequestParcel adRequestParcel, Bundle bundle, zzjw zzjwVar) {
        PackageInfo packageInfo;
        ApplicationInfo applicationInfo = this.zzajs.zzagf.getApplicationInfo();
        try {
            packageInfo = this.zzajs.zzagf.getPackageManager().getPackageInfo(applicationInfo.packageName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            packageInfo = null;
        }
        DisplayMetrics displayMetrics = this.zzajs.zzagf.getResources().getDisplayMetrics();
        Bundle bundle2 = null;
        if (this.zzajs.zzaox != null && this.zzajs.zzaox.getParent() != null) {
            int[] iArr = new int[2];
            this.zzajs.zzaox.getLocationOnScreen(iArr);
            int i = iArr[0];
            int i2 = iArr[1];
            int width = this.zzajs.zzaox.getWidth();
            int height = this.zzajs.zzaox.getHeight();
            int i3 = 0;
            if (this.zzajs.zzaox.isShown() && i + width > 0 && i2 + height > 0 && i <= displayMetrics.widthPixels && i2 <= displayMetrics.heightPixels) {
                i3 = 1;
            }
            bundle2 = new Bundle(5);
            bundle2.putInt("x", i);
            bundle2.putInt("y", i2);
            bundle2.putInt(VastIconXmlManager.WIDTH, width);
            bundle2.putInt(VastIconXmlManager.HEIGHT, height);
            bundle2.putInt("visible", i3);
        }
        String zzsj = zzu.zzft().zzsj();
        this.zzajs.zzapd = new zzjv(zzsj, this.zzajs.zzaou);
        this.zzajs.zzapd.zzq(adRequestParcel);
        String zza = zzu.zzfq().zza(this.zzajs.zzagf, this.zzajs.zzaox, this.zzajs.zzapa);
        long j = 0;
        if (this.zzajs.zzaph != null) {
            try {
                j = this.zzajs.zzaph.getValue();
            } catch (RemoteException e2) {
                zzkd.zzcx("Cannot get correlation id, default to 0.");
            }
        }
        String uuid = UUID.randomUUID().toString();
        Bundle zza2 = zzu.zzft().zza(this.zzajs.zzagf, this, zzsj);
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 >= this.zzajs.zzapn.size()) {
                break;
            }
            arrayList.add(this.zzajs.zzapn.keyAt(i5));
            i4 = i5 + 1;
        }
        boolean z = this.zzajs.zzapi != null;
        boolean z2 = this.zzajs.zzapj != null && zzu.zzft().zzsv();
        boolean zzr = this.zzajv.zzakl.zzr(this.zzajs.zzagf);
        String str = "";
        if (zzdc.zzbdn.get().booleanValue()) {
            zzkd.zzcv("Getting webview cookie from CookieManager.");
            CookieManager zzao = zzu.zzfs().zzao(this.zzajs.zzagf);
            if (zzao != null) {
                str = zzao.getCookie("googleads.g.doubleclick.net");
            }
        }
        return new AdRequestInfoParcel.zza(bundle2, adRequestParcel, this.zzajs.zzapa, this.zzajs.zzaou, applicationInfo, packageInfo, zzsj, zzu.zzft().getSessionId(), this.zzajs.zzaow, zza2, this.zzajs.zzaps, arrayList, bundle, zzu.zzft().zzsn(), this.mMessenger, displayMetrics.widthPixels, displayMetrics.heightPixels, displayMetrics.density, zza, j, uuid, zzdc.zzjx(), this.zzajs.zzaot, this.zzajs.zzapo, new CapabilityParcel(z, z2, zzr), this.zzajs.zzgt(), zzu.zzfq().zzey(), zzu.zzfq().zzfa(), zzu.zzfq().zzam(this.zzajs.zzagf), zzu.zzfq().zzn(this.zzajs.zzaox), this.zzajs.zzagf instanceof Activity, zzu.zzft().zzsr(), str, zzjwVar != null ? zzjwVar.zzsg() : null, zzu.zzft().zzss(), zzu.zzgj().zzlk(), zzu.zzfq().zzti());
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public String getMediationAdapterClassName() {
        if (this.zzajs.zzapb == null) {
            return null;
        }
        return this.zzajs.zzapb.zzbop;
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.ads.internal.client.zza
    public void onAdClicked() {
        if (this.zzajs.zzapb == null) {
            zzkd.zzcx("Ad state was null when trying to ping click URLs.");
            return;
        }
        if (this.zzajs.zzapb.zzcig != null && this.zzajs.zzapb.zzcig.zzbnm != null) {
            zzu.zzgf().zza(this.zzajs.zzagf, this.zzajs.zzaow.zzcs, this.zzajs.zzapb, this.zzajs.zzaou, false, this.zzajs.zzapb.zzcig.zzbnm);
        }
        if (this.zzajs.zzapb.zzbon != null && this.zzajs.zzapb.zzbon.zzbmz != null) {
            zzu.zzgf().zza(this.zzajs.zzagf, this.zzajs.zzaow.zzcs, this.zzajs.zzapb, this.zzajs.zzaou, false, this.zzajs.zzapb.zzbon.zzbmz);
        }
        super.onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzg
    public void onPause() {
        this.zzaju.zzk(this.zzajs.zzapb);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzg
    public void onResume() {
        this.zzaju.zzl(this.zzajs.zzapb);
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.ads.internal.client.zzu
    public void pause() {
        zzab.zzhi("pause must be called on the main UI thread.");
        if (this.zzajs.zzapb != null && this.zzajs.zzapb.zzbtm != null && this.zzajs.zzgp()) {
            zzu.zzfs().zzi(this.zzajs.zzapb.zzbtm);
        }
        if (this.zzajs.zzapb != null && this.zzajs.zzapb.zzboo != null) {
            try {
                this.zzajs.zzapb.zzboo.pause();
            } catch (RemoteException e) {
                zzkd.zzcx("Could not pause mediation adapter.");
            }
        }
        this.zzaju.zzk(this.zzajs.zzapb);
        this.zzajr.pause();
    }

    public void recordImpression() {
        zza(this.zzajs.zzapb, false);
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.ads.internal.client.zzu
    public void resume() {
        zzab.zzhi("resume must be called on the main UI thread.");
        zzlh zzlhVar = null;
        if (this.zzajs.zzapb != null && this.zzajs.zzapb.zzbtm != null) {
            zzlhVar = this.zzajs.zzapb.zzbtm;
        }
        if (zzlhVar != null && this.zzajs.zzgp()) {
            zzu.zzfs().zzj(this.zzajs.zzapb.zzbtm);
        }
        if (this.zzajs.zzapb != null && this.zzajs.zzapb.zzboo != null) {
            try {
                this.zzajs.zzapb.zzboo.resume();
            } catch (RemoteException e) {
                zzkd.zzcx("Could not resume mediation adapter.");
            }
        }
        if (zzlhVar == null || !zzlhVar.zzup()) {
            this.zzajr.resume();
        }
        this.zzaju.zzl(this.zzajs.zzapb);
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void showInterstitial() {
        throw new IllegalStateException("showInterstitial is not supported for current ad type");
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.ads.internal.client.zzu
    public void zza(zzho zzhoVar) {
        zzab.zzhi("setInAppPurchaseListener must be called on the main UI thread.");
        this.zzajs.zzapi = zzhoVar;
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.ads.internal.client.zzu
    public void zza(zzhs zzhsVar, @Nullable String str) {
        zzab.zzhi("setPlayStorePurchaseParams must be called on the main UI thread.");
        this.zzajs.zzapt = new com.google.android.gms.ads.internal.purchase.zzk(str);
        this.zzajs.zzapj = zzhsVar;
        if (zzu.zzft().zzsm() || zzhsVar == null) {
            return;
        }
    }

    protected void zza(@Nullable zzju zzjuVar, boolean z) {
        if (zzjuVar == null) {
            zzkd.zzcx("Ad state was null when trying to ping impression URLs.");
            return;
        }
        super.zzc(zzjuVar);
        if (zzjuVar.zzcig != null && zzjuVar.zzcig.zzbnn != null) {
            zzu.zzgf().zza(this.zzajs.zzagf, this.zzajs.zzaow.zzcs, zzjuVar, this.zzajs.zzaou, z, zzjuVar.zzcig.zzbnn);
        }
        if (zzjuVar.zzbon == null || zzjuVar.zzbon.zzbna == null) {
            return;
        }
        zzu.zzgf().zza(this.zzajs.zzagf, this.zzajs.zzaow.zzcs, zzjuVar, this.zzajs.zzaou, z, zzjuVar.zzbon.zzbna);
    }

    @Override // com.google.android.gms.internal.zzer
    public void zza(String str, ArrayList<String> arrayList) {
        com.google.android.gms.ads.internal.purchase.zzd zzdVar = new com.google.android.gms.ads.internal.purchase.zzd(str, arrayList, this.zzajs.zzagf, this.zzajs.zzaow.zzcs);
        if (this.zzajs.zzapi != null) {
            try {
                this.zzajs.zzapi.zza(zzdVar);
                return;
            } catch (RemoteException e) {
                zzkd.zzcx("Could not start In-App purchase.");
                return;
            }
        }
        zzkd.zzcx("InAppPurchaseListener is not set. Try to launch default purchase flow.");
        if (!com.google.android.gms.ads.internal.client.zzm.zziw().zzar(this.zzajs.zzagf)) {
            zzkd.zzcx("Google Play Service unavailable, cannot launch default purchase flow.");
            return;
        }
        if (this.zzajs.zzapj == null) {
            zzkd.zzcx("PlayStorePurchaseListener is not set.");
            return;
        }
        if (this.zzajs.zzapt == null) {
            zzkd.zzcx("PlayStorePurchaseVerifier is not initialized.");
            return;
        }
        if (this.zzajs.zzapx) {
            zzkd.zzcx("An in-app purchase request is already in progress, abort");
            return;
        }
        this.zzajs.zzapx = true;
        try {
            if (this.zzajs.zzapj.isValidPurchase(str)) {
                zzu.zzga().zza(this.zzajs.zzagf, this.zzajs.zzaow.zzcnm, new GInAppPurchaseManagerInfoParcel(this.zzajs.zzagf, this.zzajs.zzapt, zzdVar, this));
            } else {
                this.zzajs.zzapx = false;
            }
        } catch (RemoteException e2) {
            zzkd.zzcx("Could not start In-App purchase.");
            this.zzajs.zzapx = false;
        }
    }

    @Override // com.google.android.gms.ads.internal.purchase.zzj
    public void zza(String str, boolean z, int i, final Intent intent, com.google.android.gms.ads.internal.purchase.zzf zzfVar) {
        try {
            if (this.zzajs.zzapj != null) {
                this.zzajs.zzapj.zza(new com.google.android.gms.ads.internal.purchase.zzg(this.zzajs.zzagf, str, z, i, intent, zzfVar));
            }
        } catch (RemoteException e) {
            zzkd.zzcx("Fail to invoke PlayStorePurchaseListener.");
        }
        zzkh.zzclc.postDelayed(new Runnable() { // from class: com.google.android.gms.ads.internal.zzb.1
            @Override // java.lang.Runnable
            public void run() {
                int zzd = zzu.zzga().zzd(intent);
                zzu.zzga();
                if (zzd == 0 && zzb.this.zzajs.zzapb != null && zzb.this.zzajs.zzapb.zzbtm != null && zzb.this.zzajs.zzapb.zzbtm.zzuh() != null) {
                    zzb.this.zzajs.zzapb.zzbtm.zzuh().close();
                }
                zzb.this.zzajs.zzapx = false;
            }
        }, 500L);
    }

    @Override // com.google.android.gms.ads.internal.zza
    public boolean zza(AdRequestParcel adRequestParcel, zzdk zzdkVar) {
        zzjw zzjwVar;
        if (!zzdw()) {
            return false;
        }
        Bundle zza = zza(zzu.zzft().zzaa(this.zzajs.zzagf));
        this.zzajr.cancel();
        this.zzajs.zzapw = 0;
        if (zzdc.zzbct.get().booleanValue()) {
            zzjwVar = zzu.zzft().zzst();
            zzu.zzgi().zza(this.zzajs.zzagf, this.zzajs.zzaow, false, zzjwVar, zzjwVar != null ? zzjwVar.zzsh() : null, this.zzajs.zzaou);
        } else {
            zzjwVar = null;
        }
        AdRequestInfoParcel.zza zza2 = zza(adRequestParcel, zza, zzjwVar);
        zzdkVar.zzh("seq_num", zza2.zzcau);
        zzdkVar.zzh("request_id", zza2.zzcbg);
        zzdkVar.zzh("session_id", zza2.zzcav);
        if (zza2.zzcas != null) {
            zzdkVar.zzh("app_version", String.valueOf(zza2.zzcas.versionCode));
        }
        this.zzajs.zzaoy = zzu.zzfm().zza(this.zzajs.zzagf, zza2, this.zzajs.zzaov, this);
        return true;
    }

    protected boolean zza(AdRequestParcel adRequestParcel, zzju zzjuVar, boolean z) {
        if (!z && this.zzajs.zzgp()) {
            if (zzjuVar.zzbns > 0) {
                this.zzajr.zza(adRequestParcel, zzjuVar.zzbns);
            } else if (zzjuVar.zzcig != null && zzjuVar.zzcig.zzbns > 0) {
                this.zzajr.zza(adRequestParcel, zzjuVar.zzcig.zzbns);
            } else if (!zzjuVar.zzcby && zzjuVar.errorCode == 2) {
                this.zzajr.zzg(adRequestParcel);
            }
        }
        return this.zzajr.zzfc();
    }

    @Override // com.google.android.gms.ads.internal.zza
    boolean zza(zzju zzjuVar) {
        AdRequestParcel adRequestParcel;
        boolean z = false;
        if (this.zzajt != null) {
            adRequestParcel = this.zzajt;
            this.zzajt = null;
        } else {
            adRequestParcel = zzjuVar.zzcar;
            if (adRequestParcel.extras != null) {
                z = adRequestParcel.extras.getBoolean("_noRefresh", false);
            }
        }
        return zza(adRequestParcel, zzjuVar, z);
    }

    @Override // com.google.android.gms.ads.internal.zza
    protected boolean zza(@Nullable zzju zzjuVar, zzju zzjuVar2) {
        int i;
        int i2 = 0;
        if (zzjuVar != null && zzjuVar.zzboq != null) {
            zzjuVar.zzboq.zza((zzgb) null);
        }
        if (zzjuVar2.zzboq != null) {
            zzjuVar2.zzboq.zza(this);
        }
        if (zzjuVar2.zzcig != null) {
            i = zzjuVar2.zzcig.zzbny;
            i2 = zzjuVar2.zzcig.zzbnz;
        } else {
            i = 0;
        }
        this.zzajs.zzapu.zzh(i, i2);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzic.zza
    public void zzb(zzju zzjuVar) {
        super.zzb(zzjuVar);
        if (zzjuVar.zzbon != null) {
            zzkd.zzcv("Pinging network fill URLs.");
            zzu.zzgf().zza(this.zzajs.zzagf, this.zzajs.zzaow.zzcs, zzjuVar, this.zzajs.zzaou, false, zzjuVar.zzbon.zzbnb);
            if (zzjuVar.zzcig.zzbnp != null && zzjuVar.zzcig.zzbnp.size() > 0) {
                zzkd.zzcv("Pinging urls remotely");
                zzu.zzfq().zza(this.zzajs.zzagf, zzjuVar.zzcig.zzbnp);
            }
        }
        if (zzjuVar.errorCode != 3 || zzjuVar.zzcig == null || zzjuVar.zzcig.zzbno == null) {
            return;
        }
        zzkd.zzcv("Pinging no fill URLs.");
        zzu.zzgf().zza(this.zzajs.zzagf, this.zzajs.zzaow.zzcs, zzjuVar, this.zzajs.zzaou, false, zzjuVar.zzcig.zzbno);
    }

    @Override // com.google.android.gms.ads.internal.zza
    protected boolean zzc(AdRequestParcel adRequestParcel) {
        return super.zzc(adRequestParcel) && !this.zzaka;
    }

    protected boolean zzdw() {
        return zzu.zzfq().zza(this.zzajs.zzagf.getPackageManager(), this.zzajs.zzagf.getPackageName(), "android.permission.INTERNET") && zzu.zzfq().zzac(this.zzajs.zzagf);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzg
    public void zzdx() {
        this.zzaju.zzi(this.zzajs.zzapb);
        this.zzaka = false;
        zzdr();
        this.zzajs.zzapd.zzsa();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzg
    public void zzdy() {
        this.zzaka = true;
        zzdt();
    }

    @Override // com.google.android.gms.internal.zzgb
    public void zzdz() {
        onAdClicked();
    }

    @Override // com.google.android.gms.internal.zzgb
    public void zzea() {
        zzdx();
    }

    @Override // com.google.android.gms.internal.zzgb
    public void zzeb() {
        zzdo();
    }

    @Override // com.google.android.gms.internal.zzgb
    public void zzec() {
        zzdy();
    }

    @Override // com.google.android.gms.internal.zzgb
    public void zzed() {
        if (this.zzajs.zzapb != null) {
            String str = this.zzajs.zzapb.zzbop;
            zzkd.zzcx(new StringBuilder(String.valueOf(str).length() + 74).append("Mediation adapter ").append(str).append(" refreshed, but mediation adapters should never refresh.").toString());
        }
        zza(this.zzajs.zzapb, true);
        zzdu();
    }

    @Override // com.google.android.gms.internal.zzgb
    public void zzee() {
        recordImpression();
    }

    @Override // com.google.android.gms.ads.internal.zzs
    public void zzef() {
        zzu.zzfq().runOnUiThread(new Runnable() { // from class: com.google.android.gms.ads.internal.zzb.2
            @Override // java.lang.Runnable
            public void run() {
                zzb.this.zzajr.pause();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.zzs
    public void zzeg() {
        zzu.zzfq().runOnUiThread(new Runnable() { // from class: com.google.android.gms.ads.internal.zzb.3
            @Override // java.lang.Runnable
            public void run() {
                zzb.this.zzajr.resume();
            }
        });
    }
}
