package com.google.android.gms.internal;

import com.google.android.gms.internal.zzapp;
import java.io.IOException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzapp<M extends zzapp<M>> extends zzapv {
    protected zzapr bjx;

    @Override // com.google.android.gms.internal.zzapv
    /* renamed from: aA, reason: merged with bridge method [inline-methods] */
    public M clone() throws CloneNotSupportedException {
        M m = (M) super.clone();
        zzapt.zza(this, m);
        return m;
    }

    @Override // com.google.android.gms.internal.zzapv
    /* renamed from: aB */
    public /* synthetic */ zzapv clone() throws CloneNotSupportedException {
        return (zzapp) clone();
    }

    public final <T> T zza(zzapq<M, T> zzapqVar) {
        zzaps zzagf;
        if (this.bjx == null || (zzagf = this.bjx.zzagf(zzapy.zzagj(zzapqVar.tag))) == null) {
            return null;
        }
        return (T) zzagf.zzb(zzapqVar);
    }

    @Override // com.google.android.gms.internal.zzapv
    public void zza(zzapo zzapoVar) throws IOException {
        if (this.bjx == null) {
            return;
        }
        for (int i = 0; i < this.bjx.size(); i++) {
            this.bjx.zzagg(i).zza(zzapoVar);
        }
    }

    protected final boolean zza(zzapn zzapnVar, int i) throws IOException {
        int position = zzapnVar.getPosition();
        if (!zzapnVar.zzafp(i)) {
            return false;
        }
        int zzagj = zzapy.zzagj(i);
        zzapx zzapxVar = new zzapx(i, zzapnVar.zzad(position, zzapnVar.getPosition() - position));
        zzaps zzapsVar = null;
        if (this.bjx == null) {
            this.bjx = new zzapr();
        } else {
            zzapsVar = this.bjx.zzagf(zzagj);
        }
        if (zzapsVar == null) {
            zzapsVar = new zzaps();
            this.bjx.zza(zzagj, zzapsVar);
        }
        zzapsVar.zza(zzapxVar);
        return true;
    }

    @Override // com.google.android.gms.internal.zzapv
    protected int zzx() {
        if (this.bjx == null) {
            return 0;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.bjx.size(); i2++) {
            i += this.bjx.zzagg(i2).zzx();
        }
        return i;
    }
}
