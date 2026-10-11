package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzao implements Parcelable.Creator<SearchAdRequestParcel> {
    static void zza(SearchAdRequestParcel searchAdRequestParcel, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, searchAdRequestParcel.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, searchAdRequestParcel.zzawz);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, searchAdRequestParcel.backgroundColor);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, searchAdRequestParcel.zzaxa);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 5, searchAdRequestParcel.zzaxb);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 6, searchAdRequestParcel.zzaxc);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 7, searchAdRequestParcel.zzaxd);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 8, searchAdRequestParcel.zzaxe);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 9, searchAdRequestParcel.zzaxf);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 10, searchAdRequestParcel.zzaxg, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 11, searchAdRequestParcel.zzaxh);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 12, searchAdRequestParcel.zzaxi, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 13, searchAdRequestParcel.zzaxj);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 14, searchAdRequestParcel.zzaxk);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 15, searchAdRequestParcel.zzaxl, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zze, reason: merged with bridge method [inline-methods] */
    public SearchAdRequestParcel createFromParcel(Parcel parcel) {
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        String str = null;
        int i10 = 0;
        String str2 = null;
        int i11 = 0;
        int i12 = 0;
        String str3 = null;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 3:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 4:
                    i4 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 5:
                    i5 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 6:
                    i6 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 7:
                    i7 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 8:
                    i8 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 9:
                    i9 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 10:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 11:
                    i10 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 12:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 13:
                    i11 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 14:
                    i12 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 15:
                    str3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new SearchAdRequestParcel(i, i2, i3, i4, i5, i6, i7, i8, i9, str, i10, str2, i11, i12, str3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzu, reason: merged with bridge method [inline-methods] */
    public SearchAdRequestParcel[] newArray(int i) {
        return new SearchAdRequestParcel[i];
    }
}
