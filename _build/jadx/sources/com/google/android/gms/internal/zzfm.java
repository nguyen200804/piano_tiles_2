package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import java.util.Iterator;
import java.util.LinkedList;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class zzfm {
    private final String zzaln;
    private final LinkedList<zza> zzbkr;
    private AdRequestParcel zzbks;
    private final int zzbkt;
    private boolean zzbku;

    class zza {
        com.google.android.gms.ads.internal.zzl zzbkv;

        @Nullable
        AdRequestParcel zzbkw;
        zzfi zzbkx;
        long zzbky;
        boolean zzbkz;
        boolean zzbla;

        zza(zzfh zzfhVar) {
            this.zzbkv = zzfhVar.zzbd(zzfm.this.zzaln);
            this.zzbkx = new zzfi();
            this.zzbkx.zzc(this.zzbkv);
        }

        zza(zzfm zzfmVar, zzfh zzfhVar, AdRequestParcel adRequestParcel) {
            this(zzfhVar);
            this.zzbkw = adRequestParcel;
        }

        void zzlv() {
            if (this.zzbkz) {
                return;
            }
            this.zzbla = this.zzbkv.zzb(zzfk.zzj(this.zzbkw != null ? this.zzbkw : zzfm.this.zzbks));
            this.zzbkz = true;
            this.zzbky = com.google.android.gms.ads.internal.zzu.zzfu().currentTimeMillis();
        }
    }

    zzfm(AdRequestParcel adRequestParcel, String str, int i) {
        com.google.android.gms.common.internal.zzab.zzy(adRequestParcel);
        com.google.android.gms.common.internal.zzab.zzy(str);
        this.zzbkr = new LinkedList<>();
        this.zzbks = adRequestParcel;
        this.zzaln = str;
        this.zzbkt = i;
    }

    String getAdUnitId() {
        return this.zzaln;
    }

    int getNetworkType() {
        return this.zzbkt;
    }

    int size() {
        return this.zzbkr.size();
    }

    void zza(zzfh zzfhVar, AdRequestParcel adRequestParcel) {
        this.zzbkr.add(new zza(this, zzfhVar, adRequestParcel));
    }

    void zzb(zzfh zzfhVar) {
        zza zzaVar = new zza(zzfhVar);
        this.zzbkr.add(zzaVar);
        zzaVar.zzlv();
    }

    AdRequestParcel zzlq() {
        return this.zzbks;
    }

    int zzlr() {
        int i = 0;
        Iterator<zza> it = this.zzbkr.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            i = it.next().zzbkz ? i2 + 1 : i2;
        }
    }

    void zzls() {
        Iterator<zza> it = this.zzbkr.iterator();
        while (it.hasNext()) {
            it.next().zzlv();
        }
    }

    void zzlt() {
        this.zzbku = true;
    }

    boolean zzlu() {
        return this.zzbku;
    }

    zza zzm(@Nullable AdRequestParcel adRequestParcel) {
        if (adRequestParcel != null) {
            this.zzbks = adRequestParcel;
        }
        return this.zzbkr.remove();
    }
}
