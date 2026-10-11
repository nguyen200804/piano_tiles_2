package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzcd;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzcg implements zzch {
    private final VersionInfoParcel zzalo;
    private final Context zzaql;
    private final zzfs zzaro;
    private final Object zzail = new Object();
    private final WeakHashMap<zzju, zzcd> zzarm = new WeakHashMap<>();
    private final ArrayList<zzcd> zzarn = new ArrayList<>();

    public zzcg(Context context, VersionInfoParcel versionInfoParcel, zzfs zzfsVar) {
        this.zzaql = context.getApplicationContext();
        this.zzalo = versionInfoParcel;
        this.zzaro = zzfsVar;
    }

    public zzcd zza(AdSizeParcel adSizeParcel, zzju zzjuVar) {
        return zza(adSizeParcel, zzjuVar, zzjuVar.zzbtm.getView());
    }

    public zzcd zza(AdSizeParcel adSizeParcel, zzju zzjuVar, View view) {
        return zza(adSizeParcel, zzjuVar, new zzcd.zzd(view, zzjuVar), (zzft) null);
    }

    public zzcd zza(AdSizeParcel adSizeParcel, zzju zzjuVar, View view, zzft zzftVar) {
        return zza(adSizeParcel, zzjuVar, new zzcd.zzd(view, zzjuVar), zzftVar);
    }

    public zzcd zza(AdSizeParcel adSizeParcel, zzju zzjuVar, com.google.android.gms.ads.internal.formats.zzh zzhVar) {
        return zza(adSizeParcel, zzjuVar, new zzcd.zza(zzhVar), (zzft) null);
    }

    public zzcd zza(AdSizeParcel adSizeParcel, zzju zzjuVar, zzck zzckVar, @Nullable zzft zzftVar) {
        zzcd zzciVar;
        synchronized (this.zzail) {
            if (zzh(zzjuVar)) {
                zzciVar = this.zzarm.get(zzjuVar);
            } else {
                zzciVar = zzftVar != null ? new zzci(this.zzaql, adSizeParcel, zzjuVar, this.zzalo, zzckVar, zzftVar) : new zzcj(this.zzaql, adSizeParcel, zzjuVar, this.zzalo, zzckVar, this.zzaro);
                zzciVar.zza(this);
                this.zzarm.put(zzjuVar, zzciVar);
                this.zzarn.add(zzciVar);
            }
        }
        return zzciVar;
    }

    @Override // com.google.android.gms.internal.zzch
    public void zza(zzcd zzcdVar) {
        synchronized (this.zzail) {
            if (!zzcdVar.zzha()) {
                this.zzarn.remove(zzcdVar);
                Iterator<Map.Entry<zzju, zzcd>> it = this.zzarm.entrySet().iterator();
                while (it.hasNext()) {
                    if (it.next().getValue() == zzcdVar) {
                        it.remove();
                    }
                }
            }
        }
    }

    public boolean zzh(zzju zzjuVar) {
        boolean z;
        synchronized (this.zzail) {
            zzcd zzcdVar = this.zzarm.get(zzjuVar);
            z = zzcdVar != null && zzcdVar.zzha();
        }
        return z;
    }

    public void zzi(zzju zzjuVar) {
        synchronized (this.zzail) {
            zzcd zzcdVar = this.zzarm.get(zzjuVar);
            if (zzcdVar != null) {
                zzcdVar.zzgy();
            }
        }
    }

    public void zzj(zzju zzjuVar) {
        synchronized (this.zzail) {
            zzcd zzcdVar = this.zzarm.get(zzjuVar);
            if (zzcdVar != null) {
                zzcdVar.stop();
            }
        }
    }

    public void zzk(zzju zzjuVar) {
        synchronized (this.zzail) {
            zzcd zzcdVar = this.zzarm.get(zzjuVar);
            if (zzcdVar != null) {
                zzcdVar.pause();
            }
        }
    }

    public void zzl(zzju zzjuVar) {
        synchronized (this.zzail) {
            zzcd zzcdVar = this.zzarm.get(zzjuVar);
            if (zzcdVar != null) {
                zzcdVar.resume();
            }
        }
    }
}
