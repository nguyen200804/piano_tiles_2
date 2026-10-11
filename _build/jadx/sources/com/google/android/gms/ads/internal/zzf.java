package com.google.android.gms.ads.internal;

import android.content.Context;
import android.graphics.Rect;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzdc;
import com.google.android.gms.internal.zzgj;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzjo;
import com.google.android.gms.internal.zzju;
import com.google.android.gms.internal.zzkd;
import com.google.android.gms.internal.zzkh;
import com.google.android.gms.internal.zzlh;
import com.google.android.gms.internal.zzli;
import com.google.android.gms.internal.zzlm;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzf extends zzc implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private boolean zzakp;

    public class zza {
        public zza() {
        }

        public void onClick() {
            zzf.this.onAdClicked();
        }
    }

    public zzf(Context context, AdSizeParcel adSizeParcel, String str, zzgj zzgjVar, VersionInfoParcel versionInfoParcel, zzd zzdVar) {
        super(context, adSizeParcel, str, zzgjVar, versionInfoParcel, zzdVar);
    }

    private AdSizeParcel zzb(zzju.zza zzaVar) {
        AdSize zzij;
        if (zzaVar.zzciq.zzauv) {
            return this.zzajs.zzapa;
        }
        String str = zzaVar.zzciq.zzccb;
        if (str != null) {
            String[] split = str.split("[xX]");
            split[0] = split[0].trim();
            split[1] = split[1].trim();
            zzij = new AdSize(Integer.parseInt(split[0]), Integer.parseInt(split[1]));
        } else {
            zzij = this.zzajs.zzapa.zzij();
        }
        return new AdSizeParcel(this.zzajs.zzagf, zzij);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean zzb(@Nullable zzju zzjuVar, zzju zzjuVar2) {
        if (zzjuVar2.zzcby) {
            View zzf = zzn.zzf(zzjuVar2);
            if (zzf == null) {
                zzkd.zzcx("Could not get mediation view");
                return false;
            }
            View nextView = this.zzajs.zzaox.getNextView();
            if (nextView != 0) {
                if (nextView instanceof zzlh) {
                    ((zzlh) nextView).destroy();
                }
                this.zzajs.zzaox.removeView(nextView);
            }
            if (!zzn.zzg(zzjuVar2)) {
                try {
                    zzb(zzf);
                } catch (Throwable th) {
                    zzkd.zzd("Could not add mediation view to view hierarchy.", th);
                    return false;
                }
            }
        } else if (zzjuVar2.zzcii != null && zzjuVar2.zzbtm != null) {
            zzjuVar2.zzbtm.zza(zzjuVar2.zzcii);
            this.zzajs.zzaox.removeAllViews();
            this.zzajs.zzaox.setMinimumWidth(zzjuVar2.zzcii.widthPixels);
            this.zzajs.zzaox.setMinimumHeight(zzjuVar2.zzcii.heightPixels);
            zzb(zzjuVar2.zzbtm.getView());
        }
        if (this.zzajs.zzaox.getChildCount() > 1) {
            this.zzajs.zzaox.showNext();
        }
        if (zzjuVar != null) {
            View nextView2 = this.zzajs.zzaox.getNextView();
            if (nextView2 instanceof zzlh) {
                ((zzlh) nextView2).zza(this.zzajs.zzagf, this.zzajs.zzapa, this.zzajn);
            } else if (nextView2 != 0) {
                this.zzajs.zzaox.removeView(nextView2);
            }
            this.zzajs.zzgo();
        }
        this.zzajs.zzaox.setVisibility(0);
        return true;
    }

    private void zzd(final zzju zzjuVar) {
        if (!this.zzajs.zzgp()) {
            if (this.zzajs.zzapv == null || zzjuVar.zzcie == null) {
                return;
            }
            this.zzaju.zza(this.zzajs.zzapa, zzjuVar, this.zzajs.zzapv);
            return;
        }
        if (zzjuVar.zzbtm != null) {
            if (zzjuVar.zzcie != null) {
                this.zzaju.zza(this.zzajs.zzapa, zzjuVar);
            }
            if (zzjuVar.zzho()) {
                this.zzaju.zza(this.zzajs.zzapa, zzjuVar).zza(zzjuVar.zzbtm);
            } else {
                zzjuVar.zzbtm.zzuj().zza(new zzli.zzb() { // from class: com.google.android.gms.ads.internal.zzf.3
                    @Override // com.google.android.gms.internal.zzli.zzb
                    public void zzen() {
                        zzf.this.zzaju.zza(zzf.this.zzajs.zzapa, zzjuVar).zza(zzjuVar.zzbtm);
                    }
                });
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        zze(this.zzajs.zzapb);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public void onScrollChanged() {
        zze(this.zzajs.zzapb);
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.ads.internal.client.zzu
    public void setManualImpressionsEnabled(boolean z) {
        zzab.zzhi("setManualImpressionsEnabled must be called from the main thread.");
        this.zzakp = z;
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.client.zzu
    public void showInterstitial() {
        throw new IllegalStateException("Interstitial is NOT supported by BannerAdManager.");
    }

    @Override // com.google.android.gms.ads.internal.zzc
    protected zzlh zza(zzju.zza zzaVar, @Nullable zze zzeVar, @Nullable zzjo zzjoVar) {
        if (this.zzajs.zzapa.zzaut == null && this.zzajs.zzapa.zzauv) {
            this.zzajs.zzapa = zzb(zzaVar);
        }
        return super.zza(zzaVar, zzeVar, zzjoVar);
    }

    @Override // com.google.android.gms.ads.internal.zzb
    protected void zza(@Nullable zzju zzjuVar, boolean z) {
        super.zza(zzjuVar, z);
        if (zzn.zzg(zzjuVar)) {
            zzn.zza(zzjuVar, new zza());
        }
    }

    @Override // com.google.android.gms.ads.internal.zzc, com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza
    public boolean zza(@Nullable zzju zzjuVar, final zzju zzjuVar2) {
        zzlm zzlmVar;
        if (!super.zza(zzjuVar, zzjuVar2)) {
            return false;
        }
        if (this.zzajs.zzgp() && !zzb(zzjuVar, zzjuVar2)) {
            zzh(0);
            return false;
        }
        if (zzjuVar2.zzccq) {
            zze(zzjuVar2);
            zzu.zzgk().zza((View) this.zzajs.zzaox, (ViewTreeObserver.OnGlobalLayoutListener) this);
            zzu.zzgk().zza((View) this.zzajs.zzaox, (ViewTreeObserver.OnScrollChangedListener) this);
            if (!zzjuVar2.zzcif) {
                final Runnable runnable = new Runnable() { // from class: com.google.android.gms.ads.internal.zzf.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zzf.this.zze(zzf.this.zzajs.zzapb);
                    }
                };
                zzli zzuj = zzjuVar2.zzbtm != null ? zzjuVar2.zzbtm.zzuj() : null;
                if (zzuj != null) {
                    zzuj.zza(new zzli.zzd() { // from class: com.google.android.gms.ads.internal.zzf.2
                        @Override // com.google.android.gms.internal.zzli.zzd
                        public void zzem() {
                            if (zzjuVar2.zzcif) {
                                return;
                            }
                            zzu.zzfq();
                            zzkh.zzb(runnable);
                        }
                    });
                }
            }
        } else if (!this.zzajs.zzgq() || zzdc.zzbce.get().booleanValue()) {
            zza(zzjuVar2, false);
        }
        if (zzjuVar2.zzbtm != null) {
            zzlmVar = zzjuVar2.zzbtm.zzut();
            zzli zzuj2 = zzjuVar2.zzbtm.zzuj();
            if (zzuj2 != null) {
                zzuj2.zzva();
            }
        } else {
            zzlmVar = null;
        }
        if (this.zzajs.zzapp != null && zzlmVar != null) {
            zzlmVar.zzam(this.zzajs.zzapp.zzaxm);
        }
        zzd(zzjuVar2);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.ads.internal.client.zzu
    public boolean zzb(AdRequestParcel adRequestParcel) {
        return super.zzb(zze(adRequestParcel));
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.ads.internal.client.zzu
    @Nullable
    public com.google.android.gms.ads.internal.client.zzab zzdq() {
        zzab.zzhi("getVideoController must be called from the main thread.");
        if (this.zzajs.zzapb == null || this.zzajs.zzapb.zzbtm == null) {
            return null;
        }
        return this.zzajs.zzapb.zzbtm.zzut();
    }

    @Override // com.google.android.gms.ads.internal.zzb
    protected boolean zzdw() {
        boolean z = true;
        if (!zzu.zzfq().zza(this.zzajs.zzagf.getPackageManager(), this.zzajs.zzagf.getPackageName(), "android.permission.INTERNET")) {
            com.google.android.gms.ads.internal.client.zzm.zziw().zza(this.zzajs.zzaox, this.zzajs.zzapa, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
            z = false;
        }
        if (!zzu.zzfq().zzac(this.zzajs.zzagf)) {
            com.google.android.gms.ads.internal.client.zzm.zziw().zza(this.zzajs.zzaox, this.zzajs.zzapa, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
            z = false;
        }
        if (!z && this.zzajs.zzaox != null) {
            this.zzajs.zzaox.setVisibility(0);
        }
        return z;
    }

    AdRequestParcel zze(AdRequestParcel adRequestParcel) {
        if (adRequestParcel.zzatr == this.zzakp) {
            return adRequestParcel;
        }
        return new AdRequestParcel(adRequestParcel.versionCode, adRequestParcel.zzatm, adRequestParcel.extras, adRequestParcel.zzatn, adRequestParcel.zzato, adRequestParcel.zzatp, adRequestParcel.zzatq, adRequestParcel.zzatr || this.zzakp, adRequestParcel.zzats, adRequestParcel.zzatt, adRequestParcel.zzatu, adRequestParcel.zzatv, adRequestParcel.zzatw, adRequestParcel.zzatx, adRequestParcel.zzaty, adRequestParcel.zzatz, adRequestParcel.zzaua, adRequestParcel.zzaub);
    }

    void zze(@Nullable zzju zzjuVar) {
        if (zzjuVar == null || zzjuVar.zzcif || this.zzajs.zzaox == null || !zzu.zzfq().zza(this.zzajs.zzaox, this.zzajs.zzagf) || !this.zzajs.zzaox.getGlobalVisibleRect(new Rect(), null)) {
            return;
        }
        if (zzjuVar != null && zzjuVar.zzbtm != null && zzjuVar.zzbtm.zzuj() != null) {
            zzjuVar.zzbtm.zzuj().zza((zzli.zzd) null);
        }
        zza(zzjuVar, false);
        zzjuVar.zzcif = true;
    }
}
