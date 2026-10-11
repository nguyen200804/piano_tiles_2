package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzcm {
    private int zzash;
    private final Object zzail = new Object();
    private List<zzcl> zzasi = new LinkedList();

    public boolean zza(zzcl zzclVar) {
        boolean z;
        synchronized (this.zzail) {
            z = this.zzasi.contains(zzclVar);
        }
        return z;
    }

    public boolean zzb(zzcl zzclVar) {
        boolean z;
        synchronized (this.zzail) {
            Iterator<zzcl> it = this.zzasi.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                zzcl next = it.next();
                if (zzclVar != next && next.zzhr().equals(zzclVar.zzhr())) {
                    it.remove();
                    z = true;
                    break;
                }
            }
        }
        return z;
    }

    public void zzc(zzcl zzclVar) {
        synchronized (this.zzail) {
            if (this.zzasi.size() >= 10) {
                zzkd.zzcv(new StringBuilder(41).append("Queue is full, current size = ").append(this.zzasi.size()).toString());
                this.zzasi.remove(0);
            }
            int i = this.zzash;
            this.zzash = i + 1;
            zzclVar.zzl(i);
            this.zzasi.add(zzclVar);
        }
    }

    @Nullable
    public zzcl zzhy() {
        int i;
        zzcl zzclVar;
        zzcl zzclVar2 = null;
        synchronized (this.zzail) {
            if (this.zzasi.size() == 0) {
                zzkd.zzcv("Queue empty");
                return null;
            }
            if (this.zzasi.size() < 2) {
                zzcl zzclVar3 = this.zzasi.get(0);
                zzclVar3.zzht();
                return zzclVar3;
            }
            int i2 = Integer.MIN_VALUE;
            for (zzcl zzclVar4 : this.zzasi) {
                int score = zzclVar4.getScore();
                if (score > i2) {
                    zzclVar = zzclVar4;
                    i = score;
                } else {
                    i = i2;
                    zzclVar = zzclVar2;
                }
                i2 = i;
                zzclVar2 = zzclVar;
            }
            this.zzasi.remove(zzclVar2);
            return zzclVar2;
        }
    }
}
