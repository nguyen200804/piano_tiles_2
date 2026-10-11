package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzcz {
    private final Collection<zzcy> zzaxr = new ArrayList();
    private final Collection<zzcy<String>> zzaxs = new ArrayList();
    private final Collection<zzcy<String>> zzaxt = new ArrayList();

    public void zza(zzcy zzcyVar) {
        this.zzaxr.add(zzcyVar);
    }

    public void zzb(zzcy<String> zzcyVar) {
        this.zzaxs.add(zzcyVar);
    }

    public void zzc(zzcy<String> zzcyVar) {
        this.zzaxt.add(zzcyVar);
    }

    public List<String> zzjx() {
        ArrayList arrayList = new ArrayList();
        Iterator<zzcy<String>> it = this.zzaxs.iterator();
        while (it.hasNext()) {
            String str = it.next().get();
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    public List<String> zzjy() {
        List<String> zzjx = zzjx();
        Iterator<zzcy<String>> it = this.zzaxt.iterator();
        while (it.hasNext()) {
            String str = it.next().get();
            if (str != null) {
                zzjx.add(str);
            }
        }
        return zzjx;
    }
}
