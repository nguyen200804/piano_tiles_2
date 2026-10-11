package com.google.android.gms.ads.internal.formats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzj implements Parcelable.Creator<NativeAdOptionsParcel> {
    static void zza(NativeAdOptionsParcel nativeAdOptionsParcel, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, nativeAdOptionsParcel.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, nativeAdOptionsParcel.zzbgp);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, nativeAdOptionsParcel.zzbgq);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, nativeAdOptionsParcel.zzbgr);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 5, nativeAdOptionsParcel.zzbgs);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public NativeAdOptionsParcel createFromParcel(Parcel parcel) {
        int i = 0;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    z2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 3:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 4:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 5:
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
        return new NativeAdOptionsParcel(i3, z2, i2, z, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzw, reason: merged with bridge method [inline-methods] */
    public NativeAdOptionsParcel[] newArray(int i) {
        return new NativeAdOptionsParcel[i];
    }
}
