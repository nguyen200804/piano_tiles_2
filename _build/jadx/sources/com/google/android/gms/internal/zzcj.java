package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzfs;
import com.google.android.gms.internal.zzla;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzcj extends zzcd {
    private zzfs.zzc zzarq;
    private boolean zzarr;

    public zzcj(Context context, AdSizeParcel adSizeParcel, zzju zzjuVar, VersionInfoParcel versionInfoParcel, zzck zzckVar, zzfs zzfsVar) {
        super(context, adSizeParcel, zzjuVar, versionInfoParcel, zzckVar);
        this.zzarq = zzfsVar.zzma();
        try {
            final JSONObject zzd = zzd(zzckVar.zzhj().zzhh());
            this.zzarq.zza(new zzla.zzc<zzft>() { // from class: com.google.android.gms.internal.zzcj.1
                @Override // com.google.android.gms.internal.zzla.zzc
                /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
                public void zzd(zzft zzftVar) {
                    zzcj.this.zza(zzd);
                }
            }, new zzla.zza() { // from class: com.google.android.gms.internal.zzcj.2
                @Override // com.google.android.gms.internal.zzla.zza
                public void run() {
                }
            });
        } catch (RuntimeException e) {
            zzkd.zzb("Failure while processing active view data.", e);
        } catch (JSONException e2) {
        }
        this.zzarq.zza(new zzla.zzc<zzft>() { // from class: com.google.android.gms.internal.zzcj.3
            @Override // com.google.android.gms.internal.zzla.zzc
            /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
            public void zzd(zzft zzftVar) {
                zzcj.this.zzarr = true;
                zzcj.this.zzc(zzftVar);
                zzcj.this.zzgw();
                zzcj.this.zzk(3);
            }
        }, new zzla.zza() { // from class: com.google.android.gms.internal.zzcj.4
            @Override // com.google.android.gms.internal.zzla.zza
            public void run() {
                zzcj.this.destroy();
            }
        });
        String valueOf = String.valueOf(this.zzaqk.zzhn());
        zzkd.zzcv(valueOf.length() != 0 ? "Tracking ad unit: ".concat(valueOf) : new String("Tracking ad unit: "));
    }

    @Override // com.google.android.gms.internal.zzcd
    protected void destroy() {
        synchronized (this.zzail) {
            super.destroy();
            this.zzarq.zza(new zzla.zzc<zzft>() { // from class: com.google.android.gms.internal.zzcj.6
                @Override // com.google.android.gms.internal.zzla.zzc
                /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
                public void zzd(zzft zzftVar) {
                    zzcj.this.zzd(zzftVar);
                }
            }, new zzla.zzb());
            this.zzarq.release();
        }
    }

    @Override // com.google.android.gms.internal.zzcd
    protected void zzb(final JSONObject jSONObject) {
        this.zzarq.zza(new zzla.zzc<zzft>() { // from class: com.google.android.gms.internal.zzcj.5
            @Override // com.google.android.gms.internal.zzla.zzc
            /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
            public void zzd(zzft zzftVar) {
                zzftVar.zza("AFMA_updateActiveView", jSONObject);
            }
        }, new zzla.zzb());
    }

    @Override // com.google.android.gms.internal.zzcd
    protected boolean zzhe() {
        return this.zzarr;
    }
}
