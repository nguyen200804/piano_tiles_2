package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzm implements Parcelable.Creator<InterstitialAdParameterParcel> {
    static void zza(InterstitialAdParameterParcel interstitialAdParameterParcel, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, interstitialAdParameterParcel.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, interstitialAdParameterParcel.zzame);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, interstitialAdParameterParcel.zzamf);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, interstitialAdParameterParcel.zzamg, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, interstitialAdParameterParcel.zzamh);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, interstitialAdParameterParcel.zzami);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 7, interstitialAdParameterParcel.zzamj);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public InterstitialAdParameterParcel createFromParcel(Parcel parcel) {
        int i = 0;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        String str = null;
        float f = 0.0f;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        int i2 = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    z3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 3:
                    z2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 6:
                    f = com.google.android.gms.common.internal.safeparcel.zza.zzl(parcel, zzcl);
                    break;
                case 7:
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
        return new InterstitialAdParameterParcel(i2, z3, z2, str, z, f, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public InterstitialAdParameterParcel[] newArray(int i) {
        return new InterstitialAdParameterParcel[i];
    }
}
