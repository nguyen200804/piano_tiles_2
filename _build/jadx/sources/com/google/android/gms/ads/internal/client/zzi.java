package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzi implements Parcelable.Creator<AdSizeParcel> {
    static void zza(AdSizeParcel adSizeParcel, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, adSizeParcel.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, adSizeParcel.zzaur, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, adSizeParcel.height);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, adSizeParcel.heightPixels);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, adSizeParcel.zzaus);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 6, adSizeParcel.width);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 7, adSizeParcel.widthPixels);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, (Parcelable[]) adSizeParcel.zzaut, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, adSizeParcel.zzauu);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 10, adSizeParcel.zzauv);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 11, adSizeParcel.zzauw);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public AdSizeParcel createFromParcel(Parcel parcel) {
        AdSizeParcel[] adSizeParcelArr = null;
        boolean z = false;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        boolean z2 = false;
        boolean z3 = false;
        int i = 0;
        int i2 = 0;
        boolean z4 = false;
        int i3 = 0;
        int i4 = 0;
        String str = null;
        int i5 = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i5 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 3:
                    i4 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 4:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 5:
                    z4 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 6:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 7:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 8:
                    adSizeParcelArr = (AdSizeParcel[]) com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl, AdSizeParcel.CREATOR);
                    break;
                case 9:
                    z3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 10:
                    z2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 11:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new AdSizeParcel(i5, str, i4, i3, z4, i2, i, adSizeParcelArr, z3, z2, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzs, reason: merged with bridge method [inline-methods] */
    public AdSizeParcel[] newArray(int i) {
        return new AdSizeParcel[i];
    }
}
