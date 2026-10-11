package com.google.android.gms.internal;

import com.google.android.gms.internal.zzae;
import java.lang.reflect.InvocationTargetException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzbn extends zzbp {
    private static volatile Long zzahe = null;
    private static final Object zzafc = new Object();

    public zzbn(zzax zzaxVar, String str, String str2, zzae.zza zzaVar, int i, int i2) {
        super(zzaxVar, str, str2, zzaVar, i, i2);
    }

    @Override // com.google.android.gms.internal.zzbp
    protected void zzcu() throws IllegalAccessException, InvocationTargetException {
        if (zzahe == null) {
            synchronized (zzafc) {
                if (zzahe == null) {
                    zzahe = (Long) this.zzahh.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.zzaha) {
            this.zzaha.zzds = zzahe;
        }
    }
}
