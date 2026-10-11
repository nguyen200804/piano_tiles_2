package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zza implements Parcelable.Creator<AuthAccountResult> {
    static void zza(AuthAccountResult authAccountResult, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, authAccountResult.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, authAccountResult.zzbzu());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) authAccountResult.zzbzv(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzrp, reason: merged with bridge method [inline-methods] */
    public AuthAccountResult createFromParcel(Parcel parcel) {
        int i = 0;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        Intent intent = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 3:
                    intent = (Intent) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, Intent.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new AuthAccountResult(i2, i, intent);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzyy, reason: merged with bridge method [inline-methods] */
    public AuthAccountResult[] newArray(int i) {
        return new AuthAccountResult[i];
    }
}
