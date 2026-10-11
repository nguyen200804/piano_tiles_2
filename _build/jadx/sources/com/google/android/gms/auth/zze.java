package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zze implements Parcelable.Creator<TokenData> {
    static void zza(TokenData tokenData, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, tokenData.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, tokenData.getToken(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, tokenData.zzaew(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, tokenData.zzaex());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, tokenData.zzaey());
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 6, tokenData.zzaez(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaf, reason: merged with bridge method [inline-methods] */
    public TokenData createFromParcel(Parcel parcel) {
        ArrayList<String> arrayList = null;
        boolean z = false;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        boolean z2 = false;
        Long l = null;
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 3:
                    l = com.google.android.gms.common.internal.safeparcel.zza.zzj(parcel, zzcl);
                    break;
                case 4:
                    z2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 6:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, zzcl);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new TokenData(i, str, l, z2, z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcn, reason: merged with bridge method [inline-methods] */
    public TokenData[] newArray(int i) {
        return new TokenData[i];
    }
}
