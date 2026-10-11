package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzdc;
import com.google.android.gms.internal.zzdk;
import com.google.android.gms.internal.zzdl;
import com.google.android.gms.internal.zzdo;
import com.google.android.gms.internal.zzep;
import com.google.android.gms.internal.zzft;
import com.google.android.gms.internal.zzgj;
import com.google.android.gms.internal.zzhg;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzjo;
import com.google.android.gms.internal.zzju;
import com.google.android.gms.internal.zzkd;
import com.google.android.gms.internal.zzkh;
import com.google.android.gms.internal.zzlh;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzc extends zzb implements zzh, zzhg {
    public zzc(Context context, AdSizeParcel adSizeParcel, String str, zzgj zzgjVar, VersionInfoParcel versionInfoParcel, zzd zzdVar) {
        super(context, adSizeParcel, str, zzgjVar, versionInfoParcel, zzdVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected zzlh zza(zzju.zza zzaVar, @Nullable zze zzeVar, @Nullable zzjo zzjoVar) {
        zzlh zzlhVar = null;
        View nextView = this.zzajs.zzaox.getNextView();
        if (nextView instanceof zzlh) {
            zzlhVar = (zzlh) nextView;
            if (zzdc.zzazz.get().booleanValue()) {
                zzkd.zzcv("Reusing webview...");
                zzlhVar.zza(this.zzajs.zzagf, this.zzajs.zzapa, this.zzajn);
            } else {
                zzlhVar.destroy();
                zzlhVar = null;
            }
        }
        if (zzlhVar == null) {
            if (nextView != 0) {
                this.zzajs.zzaox.removeView(nextView);
            }
            zzlhVar = zzu.zzfr().zza(this.zzajs.zzagf, this.zzajs.zzapa, false, false, this.zzajs.zzaov, this.zzajs.zzaow, this.zzajn, this, this.zzajv);
            if (this.zzajs.zzapa.zzaut == null) {
                zzb(zzlhVar.getView());
            }
        }
        zzlh zzlhVar2 = zzlhVar;
        zzlhVar2.zzuj().zza(this, this, this, this, false, this, null, zzeVar, this, zzjoVar);
        zza(zzlhVar2);
        zzlhVar2.zzcz(zzaVar.zzcip.zzcbg);
        return zzlhVar2;
    }

    @Override // com.google.android.gms.internal.zzhg
    public void zza(int i, int i2, int i3, int i4) {
        zzdt();
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.ads.internal.client.zzu
    public void zza(zzdo zzdoVar) {
        zzab.zzhi("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzajs.zzapq = zzdoVar;
    }

    protected void zza(zzft zzftVar) {
        zzftVar.zza("/trackActiveViewUnit", new zzep() { // from class: com.google.android.gms.ads.internal.zzc.1
            @Override // com.google.android.gms.internal.zzep
            public void zza(zzlh zzlhVar, Map<String, String> map) {
                if (zzc.this.zzajs.zzapb != null) {
                    zzc.this.zzaju.zza(zzc.this.zzajs.zzapa, zzc.this.zzajs.zzapb, zzlhVar.getView(), zzlhVar);
                } else {
                    zzkd.zzcx("Request to enable ActiveView before adState is available.");
                }
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.zza
    protected void zza(final zzju.zza zzaVar, final zzdk zzdkVar) {
        if (zzaVar.errorCode != -2) {
            zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.ads.internal.zzc.2
                @Override // java.lang.Runnable
                public void run() {
                    zzc.this.zzb(new zzju(zzaVar, null, null, null, null, null, null, null));
                }
            });
            return;
        }
        if (zzaVar.zzapa != null) {
            this.zzajs.zzapa = zzaVar.zzapa;
        }
        if (!zzaVar.zzciq.zzcby || zzaVar.zzciq.zzauw) {
            final zzjo zza = zzdc.zzbdf.get().booleanValue() ? this.zzajv.zzakm.zza(this.zzajs.zzagf, zzaVar.zzciq) : null;
            zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.ads.internal.zzc.3
                @Override // java.lang.Runnable
                public void run() {
                    if (zzaVar.zzciq.zzcch && zzc.this.zzajs.zzapq != null) {
                        zzdl zzdlVar = new zzdl(zzc.this, zzaVar.zzciq.zzbto != null ? zzu.zzfq().zzco(zzaVar.zzciq.zzbto) : null, zzaVar.zzciq.body);
                        zzc.this.zzajs.zzapw = 1;
                        try {
                            zzc.this.zzajq = false;
                            zzc.this.zzajs.zzapq.zza(zzdlVar);
                            return;
                        } catch (RemoteException e) {
                            zzkd.zzd("Could not call the onCustomRenderedAdLoadedListener.", e);
                            zzc.this.zzajq = true;
                        }
                    }
                    final zze zzeVar = new zze(zzc.this.zzajs.zzagf, zzaVar);
                    zzlh zza2 = zzc.this.zza(zzaVar, zzeVar, zza);
                    zza2.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.gms.ads.internal.zzc.3.1
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            zzeVar.recordClick();
                            return false;
                        }
                    });
                    zza2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.ads.internal.zzc.3.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            zzeVar.recordClick();
                        }
                    });
                    zzc.this.zzajs.zzapw = 0;
                    zzc.this.zzajs.zzaoz = zzu.zzfp().zza(zzc.this.zzajs.zzagf, zzc.this, zzaVar, zzc.this.zzajs.zzaov, zza2, zzc.this.zzajz, zzc.this, zzdkVar);
                }
            });
        } else {
            this.zzajs.zzapw = 0;
            this.zzajs.zzaoz = zzu.zzfp().zza(this.zzajs.zzagf, this, zzaVar, this.zzajs.zzaov, null, this.zzajz, this, zzdkVar);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzb, com.google.android.gms.ads.internal.zza
    protected boolean zza(@Nullable zzju zzjuVar, zzju zzjuVar2) {
        if (this.zzajs.zzgp() && this.zzajs.zzaox != null) {
            this.zzajs.zzaox.zzgv().zzcs(zzjuVar2.zzccd);
        }
        return super.zza(zzjuVar, zzjuVar2);
    }

    @Override // com.google.android.gms.ads.internal.zzh
    public void zzc(View view) {
        this.zzajs.zzapv = view;
        zzb(new zzju(this.zzajs.zzapc, null, null, null, null, null, null, null));
    }

    @Override // com.google.android.gms.ads.internal.zzh
    public void zzeh() {
        onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.zzh
    public void zzei() {
        recordImpression();
        zzdp();
    }

    @Override // com.google.android.gms.internal.zzhg
    public void zzej() {
        zzdr();
    }
}
