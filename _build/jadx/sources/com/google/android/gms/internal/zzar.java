package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzae;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzar extends zzaq {
    private static final String TAG = zzar.class.getSimpleName();

    protected zzar(Context context, String str, boolean z) {
        super(context, str, z);
    }

    public static zzar zza(String str, Context context, boolean z) {
        zza(context, z);
        return new zzar(context, str, z);
    }

    @Override // com.google.android.gms.internal.zzaq
    protected List<Callable<Void>> zzb(zzax zzaxVar, zzae.zza zzaVar) {
        if (zzaxVar.zzcd() == null || !this.zzafn) {
            return super.zzb(zzaxVar, zzaVar);
        }
        int zzat = zzaxVar.zzat();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.zzb(zzaxVar, zzaVar));
        arrayList.add(new zzbh(zzaxVar, zzav.zzbl(), zzav.zzbm(), zzaVar, zzat, 24));
        return arrayList;
    }
}
