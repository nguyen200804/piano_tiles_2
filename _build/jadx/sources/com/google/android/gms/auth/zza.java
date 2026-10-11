package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zza implements Parcelable.Creator<AccountChangeEvent> {
    static void zza(AccountChangeEvent accountChangeEvent, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, accountChangeEvent.mVersion);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, accountChangeEvent.ca);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, accountChangeEvent.cb, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, accountChangeEvent.cc);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 5, accountChangeEvent.cd);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, accountChangeEvent.ce, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzac, reason: merged with bridge method [inline-methods] */
    public AccountChangeEvent createFromParcel(Parcel parcel) {
        String str = null;
        int i = 0;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        long j = 0;
        int i2 = 0;
        String str2 = null;
        int i3 = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcl);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 5:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new AccountChangeEvent(i3, j, str2, i2, i, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzck, reason: merged with bridge method [inline-methods] */
    public AccountChangeEvent[] newArray(int i) {
        return new AccountChangeEvent[i];
    }
}
