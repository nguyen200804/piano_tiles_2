package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zztv;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zztw {
    private final Collection<zztv> zzaxr = new ArrayList();
    private final Collection<zztv.zzd> zzaxs = new ArrayList();
    private final Collection<zztv.zzd> zzaxt = new ArrayList();

    public static void initialize(Context context) {
        zztz.zzbeu().initialize(context);
    }

    public void zza(zztv zztvVar) {
        this.zzaxr.add(zztvVar);
    }
}
