package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzpm;
import com.google.android.gms.internal.zzqa;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzpv implements zzpz {
    private final zzqa tw;
    private boolean tx = false;

    public zzpv(zzqa zzqaVar) {
        this.tw = zzqaVar;
    }

    private <A extends Api.zzb> void zzf(zzpm.zza<? extends Result, A> zzaVar) throws DeadObjectException {
        this.tw.th.uo.zzg(zzaVar);
        Api.zze zzb = this.tw.th.zzb((Api.zzc<?>) zzaVar.zzans());
        if (!zzb.isConnected() && this.tw.ux.containsKey(zzaVar.zzans())) {
            zzaVar.zzz(new Status(17));
            return;
        }
        boolean z = zzb instanceof com.google.android.gms.common.internal.zzah;
        A a2 = zzb;
        if (z) {
            a2 = ((com.google.android.gms.common.internal.zzah) zzb).zzatn();
        }
        zzaVar.zzb((zzpm.zza<? extends Result, A>) a2);
    }

    @Override // com.google.android.gms.internal.zzpz
    public void begin() {
    }

    @Override // com.google.android.gms.internal.zzpz
    public void connect() {
        if (this.tx) {
            this.tx = false;
            this.tw.zza(new zzqa.zza(this) { // from class: com.google.android.gms.internal.zzpv.2
                @Override // com.google.android.gms.internal.zzqa.zza
                public void zzapl() {
                    zzpv.this.tw.uB.zzm(null);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.zzpz
    public boolean disconnect() {
        if (this.tx) {
            return false;
        }
        if (!this.tw.th.zzapx()) {
            this.tw.zzi(null);
            return true;
        }
        this.tx = true;
        Iterator<zzqx> it = this.tw.th.un.iterator();
        while (it.hasNext()) {
            it.next().zzaqx();
        }
        return false;
    }

    @Override // com.google.android.gms.internal.zzpz
    public void onConnected(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.zzpz
    public void onConnectionSuspended(int i) {
        this.tw.zzi(null);
        this.tw.uB.zzc(i, this.tx);
    }

    @Override // com.google.android.gms.internal.zzpz
    public void zza(ConnectionResult connectionResult, Api<?> api, int i) {
    }

    void zzapk() {
        if (this.tx) {
            this.tx = false;
            this.tw.th.uo.release();
            disconnect();
        }
    }

    @Override // com.google.android.gms.internal.zzpz
    public <A extends Api.zzb, R extends Result, T extends zzpm.zza<R, A>> T zzc(T t) {
        return (T) zzd(t);
    }

    @Override // com.google.android.gms.internal.zzpz
    public <A extends Api.zzb, T extends zzpm.zza<? extends Result, A>> T zzd(T t) {
        try {
            zzf(t);
        } catch (DeadObjectException e) {
            this.tw.zza(new zzqa.zza(this) { // from class: com.google.android.gms.internal.zzpv.1
                @Override // com.google.android.gms.internal.zzqa.zza
                public void zzapl() {
                    zzpv.this.onConnectionSuspended(1);
                }
            });
        }
        return t;
    }
}
