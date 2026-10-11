package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzfc implements Iterable<zzfb> {
    private final List<zzfb> zzbje = new LinkedList();

    private zzfb zzf(zzlh zzlhVar) {
        Iterator<zzfb> it = com.google.android.gms.ads.internal.zzu.zzgj().iterator();
        while (it.hasNext()) {
            zzfb next = it.next();
            if (next.zzbgf == zzlhVar) {
                return next;
            }
        }
        return null;
    }

    @Override // java.lang.Iterable
    public Iterator<zzfb> iterator() {
        return this.zzbje.iterator();
    }

    public void zza(zzfb zzfbVar) {
        this.zzbje.add(zzfbVar);
    }

    public void zzb(zzfb zzfbVar) {
        this.zzbje.remove(zzfbVar);
    }

    public boolean zzd(zzlh zzlhVar) {
        zzfb zzf = zzf(zzlhVar);
        if (zzf == null) {
            return false;
        }
        zzf.zzbjb.abort();
        return true;
    }

    public boolean zze(zzlh zzlhVar) {
        return zzf(zzlhVar) != null;
    }

    public int zzlk() {
        return this.zzbje.size();
    }
}
