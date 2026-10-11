package com.google.android.gms.auth.api.proxy;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zza implements Parcelable.Creator<ProxyGrpcRequest> {
    static void zza(ProxyGrpcRequest proxyGrpcRequest, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, proxyGrpcRequest.hostname, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, proxyGrpcRequest.port);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, proxyGrpcRequest.timeoutMillis);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, proxyGrpcRequest.body, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, proxyGrpcRequest.method, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, proxyGrpcRequest.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzap, reason: merged with bridge method [inline-methods] */
    public ProxyGrpcRequest createFromParcel(Parcel parcel) {
        int i = 0;
        String str = null;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        long j = 0;
        byte[] bArr = null;
        String str2 = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
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
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
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
        return new ProxyGrpcRequest(i2, str2, i, j, bArr, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcx, reason: merged with bridge method [inline-methods] */
    public ProxyGrpcRequest[] newArray(int i) {
        return new ProxyGrpcRequest[i];
    }
}
