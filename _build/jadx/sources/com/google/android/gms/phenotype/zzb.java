package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzb implements Parcelable.Creator<Flag> {
    static void zza(Flag flag, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, flag.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, flag.name, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, flag.arl);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, flag.ZV);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, flag.ZX);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, flag.zD, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, flag.arm, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 8, flag.arn);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 9, flag.aro);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzqy, reason: merged with bridge method [inline-methods] */
    public Flag createFromParcel(Parcel parcel) {
        byte[] bArr = null;
        int i = 0;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        long j = 0;
        double d = 0.0d;
        int i2 = 0;
        String str = null;
        boolean z = false;
        String str2 = null;
        int i3 = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 3:
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcl);
                    break;
                case 4:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 5:
                    d = com.google.android.gms.common.internal.safeparcel.zza.zzn(parcel, zzcl);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 7:
                    bArr = com.google.android.gms.common.internal.safeparcel.zza.zzt(parcel, zzcl);
                    break;
                case 8:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 9:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new Flag(i3, str2, j, z, d, str, bArr, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzyf, reason: merged with bridge method [inline-methods] */
    public Flag[] newArray(int i) {
        return new Flag[i];
    }
}
