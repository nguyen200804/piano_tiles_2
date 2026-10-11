package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzae implements Parcelable.Creator<SignInButtonConfig> {
    static void zza(SignInButtonConfig signInButtonConfig, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, signInButtonConfig.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, signInButtonConfig.zzatk());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, signInButtonConfig.zzatl());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, (Parcelable[]) signInButtonConfig.zzatm(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcj, reason: merged with bridge method [inline-methods] */
    public SignInButtonConfig createFromParcel(Parcel parcel) {
        int i = 0;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        Scope[] scopeArr = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 4:
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl, Scope.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new SignInButtonConfig(i3, i2, i, scopeArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgk, reason: merged with bridge method [inline-methods] */
    public SignInButtonConfig[] newArray(int i) {
        return new SignInButtonConfig[i];
    }
}
