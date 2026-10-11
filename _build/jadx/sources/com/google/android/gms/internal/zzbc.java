package com.google.android.gms.internal;

import com.google.android.gms.internal.zzae;
import java.lang.reflect.InvocationTargetException;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzbc extends zzbp {
    private static volatile Long zzcr = null;
    private static final Object zzafc = new Object();

    public zzbc(zzax zzaxVar, String str, String str2, zzae.zza zzaVar, int i, int i2) {
        super(zzaxVar, str, str2, zzaVar, i, i2);
    }

    @Override // com.google.android.gms.internal.zzbp
    protected void zzcu() throws IllegalAccessException, InvocationTargetException {
        this.zzaha.zzdu = -1L;
        if (zzcr == null) {
            synchronized (zzafc) {
                if (zzcr == null) {
                    zzcr = (Long) this.zzahh.invoke(null, this.zzaey.getContext());
                }
            }
        }
        synchronized (this.zzaha) {
            this.zzaha.zzdu = zzcr;
        }
    }
}
