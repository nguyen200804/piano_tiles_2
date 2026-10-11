package com.google.android.gms.ads.internal.request;

import android.content.Context;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.internal.zzas;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzju;
import com.google.android.gms.internal.zzkc;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zza {

    /* renamed from: com.google.android.gms.ads.internal.request.zza$zza, reason: collision with other inner class name */
    public interface InterfaceC0112zza {
        void zza(zzju.zza zzaVar);
    }

    public zzkc zza(Context context, AdRequestInfoParcel.zza zzaVar, zzas zzasVar, InterfaceC0112zza interfaceC0112zza) {
        zzkc zznVar = zzaVar.zzcar.extras.getBundle("sdk_less_server_data") != null ? new zzn(context, zzaVar, interfaceC0112zza) : new zzb(context, zzaVar, zzasVar, interfaceC0112zza);
        return zznVar;
    }
}
