package com.google.android.gms.internal;

import com.google.android.gms.internal.zzae;
import java.lang.reflect.InvocationTargetException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzaz extends zzbp {
    public zzaz(zzax zzaxVar, String str, String str2, zzae.zza zzaVar, int i, int i2) {
        super(zzaxVar, str, str2, zzaVar, i, i2);
    }

    @Override // com.google.android.gms.internal.zzbp
    protected void zzcu() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.zzaha) {
            this.zzaha.zzcu = -1L;
            this.zzaha.zzcu = (Long) this.zzahh.invoke(null, this.zzaey.getContext());
        }
    }
}
