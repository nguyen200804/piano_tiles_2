package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.client.zzy;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzeb;
import com.google.android.gms.internal.zzec;
import com.google.android.gms.internal.zzed;
import com.google.android.gms.internal.zzee;
import com.google.android.gms.internal.zzgj;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzkh;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzj extends zzr.zza {
    private final Context mContext;
    private final zzd zzajv;
    private final zzgj zzajz;
    private final com.google.android.gms.ads.internal.client.zzq zzalf;

    @Nullable
    private final zzeb zzalg;

    @Nullable
    private final zzec zzalh;
    private final SimpleArrayMap<String, zzee> zzali;
    private final SimpleArrayMap<String, zzed> zzalj;
    private final NativeAdOptionsParcel zzalk;
    private final zzy zzalm;
    private final String zzaln;
    private final VersionInfoParcel zzalo;

    @Nullable
    private WeakReference<zzq> zzalp;
    private final Object zzail = new Object();
    private final List<String> zzall = zzeq();

    zzj(Context context, String str, zzgj zzgjVar, VersionInfoParcel versionInfoParcel, com.google.android.gms.ads.internal.client.zzq zzqVar, zzeb zzebVar, zzec zzecVar, SimpleArrayMap<String, zzee> simpleArrayMap, SimpleArrayMap<String, zzed> simpleArrayMap2, NativeAdOptionsParcel nativeAdOptionsParcel, zzy zzyVar, zzd zzdVar) {
        this.mContext = context;
        this.zzaln = str;
        this.zzajz = zzgjVar;
        this.zzalo = versionInfoParcel;
        this.zzalf = zzqVar;
        this.zzalh = zzecVar;
        this.zzalg = zzebVar;
        this.zzali = simpleArrayMap;
        this.zzalj = simpleArrayMap2;
        this.zzalk = nativeAdOptionsParcel;
        this.zzalm = zzyVar;
        this.zzajv = zzdVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<String> zzeq() {
        ArrayList arrayList = new ArrayList();
        if (this.zzalh != null) {
            arrayList.add("1");
        }
        if (this.zzalg != null) {
            arrayList.add("2");
        }
        if (this.zzali.size() > 0) {
            arrayList.add("3");
        }
        return arrayList;
    }

    @Override // com.google.android.gms.ads.internal.client.zzr
    @Nullable
    public String getMediationAdapterClassName() {
        synchronized (this.zzail) {
            if (this.zzalp == null) {
                return null;
            }
            zzq zzqVar = this.zzalp.get();
            return zzqVar != null ? zzqVar.getMediationAdapterClassName() : null;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzr
    public boolean isLoading() {
        synchronized (this.zzail) {
            if (this.zzalp == null) {
                return false;
            }
            zzq zzqVar = this.zzalp.get();
            return zzqVar != null ? zzqVar.isLoading() : false;
        }
    }

    protected void runOnUiThread(Runnable runnable) {
        zzkh.zzclc.post(runnable);
    }

    protected zzq zzer() {
        return new zzq(this.mContext, this.zzajv, AdSizeParcel.zzk(this.mContext), this.zzaln, this.zzajz, this.zzalo);
    }

    @Override // com.google.android.gms.ads.internal.client.zzr
    public void zzf(final AdRequestParcel adRequestParcel) {
        runOnUiThread(new Runnable() { // from class: com.google.android.gms.ads.internal.zzj.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (zzj.this.zzail) {
                    zzq zzer = zzj.this.zzer();
                    zzj.this.zzalp = new WeakReference(zzer);
                    zzer.zzb(zzj.this.zzalg);
                    zzer.zzb(zzj.this.zzalh);
                    zzer.zza(zzj.this.zzali);
                    zzer.zza(zzj.this.zzalf);
                    zzer.zzb(zzj.this.zzalj);
                    zzer.zzb(zzj.this.zzeq());
                    zzer.zzb(zzj.this.zzalk);
                    zzer.zza(zzj.this.zzalm);
                    zzer.zzb(adRequestParcel);
                }
            }
        });
    }
}
