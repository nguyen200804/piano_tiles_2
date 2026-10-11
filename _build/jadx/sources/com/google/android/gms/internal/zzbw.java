package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.view.MotionEvent;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzbw {
    private final zzca zzaip;

    public zzbw(String str, Context context, boolean z) {
        this.zzaip = zzbz.zzb(str, context, z);
    }

    public void zza(MotionEvent motionEvent) throws RemoteException {
        this.zzaip.zzd(com.google.android.gms.dynamic.zze.zzac(motionEvent));
    }

    public Uri zzc(Uri uri, Context context) throws zzbx, RemoteException {
        com.google.android.gms.dynamic.zzd zza = this.zzaip.zza(com.google.android.gms.dynamic.zze.zzac(uri), com.google.android.gms.dynamic.zze.zzac(context));
        if (zza == null) {
            throw new zzbx();
        }
        return (Uri) com.google.android.gms.dynamic.zze.zzad(zza);
    }

    public Uri zzd(Uri uri, Context context) throws zzbx, RemoteException {
        com.google.android.gms.dynamic.zzd zzb = this.zzaip.zzb(com.google.android.gms.dynamic.zze.zzac(uri), com.google.android.gms.dynamic.zze.zzac(context));
        if (zzb == null) {
            throw new zzbx();
        }
        return (Uri) com.google.android.gms.dynamic.zze.zzad(zzb);
    }
}
