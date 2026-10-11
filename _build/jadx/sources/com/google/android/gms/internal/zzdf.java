package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.text.TextUtils;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzdf {
    @Nullable
    public zzde zza(@Nullable zzdd zzddVar) {
        if (zzddVar == null) {
            throw new IllegalArgumentException("CSI configuration can't be null. ");
        }
        if (!zzddVar.zzjz()) {
            zzkd.v("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
            return null;
        }
        if (zzddVar.getContext() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        }
        if (TextUtils.isEmpty(zzddVar.zzhl())) {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
        return new zzde(zzddVar.getContext(), zzddVar.zzhl(), zzddVar.zzka(), zzddVar.zzkb());
    }
}
