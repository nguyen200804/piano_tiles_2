package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzb implements Parcelable.Creator<ProxyRequest> {
    static void zza(ProxyRequest proxyRequest, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, proxyRequest.url, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, proxyRequest.httpMethod);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, proxyRequest.timeoutMillis);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, proxyRequest.body, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, proxyRequest.dq, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, proxyRequest.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaq, reason: merged with bridge method [inline-methods] */
    public ProxyRequest createFromParcel(Parcel parcel) {
        int i = 0;
        Bundle bundle = null;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        long j = 0;
        byte[] bArr = null;
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 3:
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcl);
                    break;
                case 4:
                    bArr = com.google.android.gms.common.internal.safeparcel.zza.zzt(parcel, zzcl);
                    break;
                case 5:
                    bundle = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, zzcl);
                    break;
                case 1000:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new ProxyRequest(i2, str, i, j, bArr, bundle);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcy, reason: merged with bridge method [inline-methods] */
    public ProxyRequest[] newArray(int i) {
        return new ProxyRequest[i];
    }
}
