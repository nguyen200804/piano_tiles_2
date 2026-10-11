package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.internal.zzib;
import com.google.android.gms.internal.zzic;
import com.google.android.gms.internal.zzju;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzif extends zzib {
    private final zzdk zzajn;
    private zzgj zzajz;
    private final zzlh zzbgf;
    private zzga zzboe;
    zzfy zzbym;
    protected zzge zzbyn;
    private boolean zzbyo;

    zzif(Context context, zzju.zza zzaVar, zzgj zzgjVar, zzic.zza zzaVar2, zzdk zzdkVar, zzlh zzlhVar) {
        super(context, zzaVar, zzaVar2);
        this.zzajz = zzgjVar;
        this.zzboe = zzaVar.zzcig;
        this.zzajn = zzdkVar;
        this.zzbgf = zzlhVar;
    }

    private static String zza(zzge zzgeVar) {
        String str = zzgeVar.zzbon.zzbmx;
        int zzal = zzal(zzgeVar.zzbom);
        return new StringBuilder(String.valueOf(str).length() + 33).append(str).append(".").append(zzal).append(".").append(zzgeVar.zzbos).toString();
    }

    private static int zzal(int i) {
        switch (i) {
            case -1:
                return 4;
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
            default:
                return 6;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 5;
        }
    }

    private static String zzg(List<zzge> list) {
        if (list == null) {
            return "".toString();
        }
        String str = "";
        for (zzge zzgeVar : list) {
            if (zzgeVar != null && zzgeVar.zzbon != null && !TextUtils.isEmpty(zzgeVar.zzbon.zzbmx)) {
                String valueOf = String.valueOf(str);
                String valueOf2 = String.valueOf(zza(zzgeVar));
                str = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length()).append(valueOf).append(valueOf2).append("_").toString();
            }
        }
        return str.substring(0, Math.max(0, str.length() - 1));
    }

    private void zzqf() throws zzib.zza {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.internal.zzif.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (zzif.this.zzbxu) {
                    zzif.this.zzbyo = com.google.android.gms.ads.internal.zzn.zza(zzif.this.zzbgf, zzif.this.zzbyn, countDownLatch);
                }
            }
        });
        try {
            countDownLatch.await(10L, TimeUnit.SECONDS);
            synchronized (this.zzbxu) {
                if (!this.zzbyo) {
                    throw new zzib.zza("View could not be prepared", 0);
                }
                if (this.zzbgf.isDestroyed()) {
                    throw new zzib.zza("Assets not loaded, web view is destroyed", 0);
                }
            }
        } catch (InterruptedException e) {
            String valueOf = String.valueOf(e);
            throw new zzib.zza(new StringBuilder(String.valueOf(valueOf).length() + 38).append("Interrupted while waiting for latch : ").append(valueOf).toString(), 0);
        }
    }

    @Override // com.google.android.gms.internal.zzib, com.google.android.gms.internal.zzkc
    public void onStop() {
        synchronized (this.zzbxu) {
            super.onStop();
            if (this.zzbym != null) {
                this.zzbym.cancel();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzib
    protected zzju zzak(int i) {
        AdRequestInfoParcel adRequestInfoParcel = this.zzbxr.zzcip;
        return new zzju(adRequestInfoParcel.zzcar, this.zzbgf, this.zzbxs.zzbnm, i, this.zzbxs.zzbnn, this.zzbxs.zzcca, this.zzbxs.orientation, this.zzbxs.zzbns, adRequestInfoParcel.zzcau, this.zzbxs.zzcby, this.zzbyn != null ? this.zzbyn.zzbon : null, this.zzbyn != null ? this.zzbyn.zzboo : null, this.zzbyn != null ? this.zzbyn.zzbop : AdMobAdapter.class.getName(), this.zzboe, this.zzbyn != null ? this.zzbyn.zzboq : null, this.zzbxs.zzcbz, this.zzbxr.zzapa, this.zzbxs.zzcbx, this.zzbxr.zzcik, this.zzbxs.zzccc, this.zzbxs.zzccd, this.zzbxr.zzcie, null, this.zzbxs.zzccn, this.zzbxs.zzcco, this.zzbxs.zzccp, this.zzboe != null ? this.zzboe.zzbnx : false, this.zzbxs.zzccr, this.zzbym != null ? zzg(this.zzbym.zzmg()) : null, this.zzbxs.zzbnp);
    }

    @Override // com.google.android.gms.internal.zzib
    protected void zzh(long j) throws zzib.zza {
        Bundle bundle;
        synchronized (this.zzbxu) {
            this.zzbym = zzi(j);
        }
        ArrayList arrayList = new ArrayList(this.zzboe.zzbnk);
        Bundle bundle2 = this.zzbxr.zzcip.zzcar.zzatw;
        if ((bundle2 == null || (bundle = bundle2.getBundle("com.google.ads.mediation.admob.AdMobAdapter")) == null) ? false : bundle.getBoolean("_skipMediation")) {
            ListIterator listIterator = arrayList.listIterator();
            while (listIterator.hasNext()) {
                if (!((zzfz) listIterator.next()).zzbmw.contains("com.google.ads.mediation.admob.AdMobAdapter")) {
                    listIterator.remove();
                }
            }
        }
        this.zzbyn = this.zzbym.zzd(arrayList);
        switch (this.zzbyn.zzbom) {
            case 0:
                if (this.zzbyn.zzbon == null || this.zzbyn.zzbon.zzbnf == null) {
                    return;
                }
                zzqf();
                return;
            case 1:
                throw new zzib.zza("No fill from any mediation ad networks.", 3);
            default:
                throw new zzib.zza(new StringBuilder(40).append("Unexpected mediation result: ").append(this.zzbyn.zzbom).toString(), 0);
        }
    }

    zzfy zzi(long j) {
        return this.zzboe.zzbnv != -1 ? new zzgg(this.mContext, this.zzbxr.zzcip, this.zzajz, this.zzboe, this.zzbxs.zzauu, this.zzbxs.zzauw, j, zzdc.zzbbh.get().longValue(), 2) : new zzgh(this.mContext, this.zzbxr.zzcip, this.zzajz, this.zzboe, this.zzbxs.zzauu, this.zzbxs.zzauw, j, zzdc.zzbbh.get().longValue(), this.zzajn);
    }
}
