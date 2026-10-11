package com.google.android.gms.internal;

import android.os.Bundle;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzka {
    private final Object zzail;
    private final zzjx zzaob;
    private final String zzcit;
    private int zzckh;
    private int zzcki;

    zzka(zzjx zzjxVar, String str) {
        this.zzail = new Object();
        this.zzaob = zzjxVar;
        this.zzcit = str;
    }

    public zzka(String str) {
        this(com.google.android.gms.ads.internal.zzu.zzft(), str);
    }

    public Bundle toBundle() {
        Bundle bundle;
        synchronized (this.zzail) {
            bundle = new Bundle();
            bundle.putInt("pmnli", this.zzckh);
            bundle.putInt("pmnll", this.zzcki);
        }
        return bundle;
    }

    public void zzh(int i, int i2) {
        synchronized (this.zzail) {
            this.zzckh = i;
            this.zzcki = i2;
            this.zzaob.zza(this.zzcit, this);
        }
    }
}
