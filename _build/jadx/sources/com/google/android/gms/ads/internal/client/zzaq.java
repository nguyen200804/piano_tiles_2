package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzaq implements Parcelable.Creator<VideoOptionsParcel> {
    static void zza(VideoOptionsParcel videoOptionsParcel, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, videoOptionsParcel.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, videoOptionsParcel.zzaxm);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public VideoOptionsParcel createFromParcel(Parcel parcel) {
        boolean z = false;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
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
        return new VideoOptionsParcel(i, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzv, reason: merged with bridge method [inline-methods] */
    public VideoOptionsParcel[] newArray(int i) {
        return new VideoOptionsParcel[i];
    }
}
