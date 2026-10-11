package com.google.android.gms.ads.internal.reward.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzh implements Parcelable.Creator<RewardedVideoAdRequestParcel> {
    static void zza(RewardedVideoAdRequestParcel rewardedVideoAdRequestParcel, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, rewardedVideoAdRequestParcel.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) rewardedVideoAdRequestParcel.zzcar, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, rewardedVideoAdRequestParcel.zzaou, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzav, reason: merged with bridge method [inline-methods] */
    public RewardedVideoAdRequestParcel[] newArray(int i) {
        return new RewardedVideoAdRequestParcel[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzq, reason: merged with bridge method [inline-methods] */
    public RewardedVideoAdRequestParcel createFromParcel(Parcel parcel) {
        String zzq;
        AdRequestParcel adRequestParcel;
        int i;
        String str = null;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i2 = 0;
        AdRequestParcel adRequestParcel2 = null;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    String str2 = str;
                    adRequestParcel = adRequestParcel2;
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    zzq = str2;
                    break;
                case 2:
                    AdRequestParcel adRequestParcel3 = (AdRequestParcel) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, AdRequestParcel.CREATOR);
                    i = i2;
                    zzq = str;
                    adRequestParcel = adRequestParcel3;
                    break;
                case 3:
                    zzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    adRequestParcel = adRequestParcel2;
                    i = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    zzq = str;
                    adRequestParcel = adRequestParcel2;
                    i = i2;
                    break;
            }
            i2 = i;
            adRequestParcel2 = adRequestParcel;
            str = zzq;
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new RewardedVideoAdRequestParcel(i2, adRequestParcel2, str);
    }
}
