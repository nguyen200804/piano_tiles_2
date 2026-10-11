package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzb implements Parcelable.Creator<AccountChangeEventsRequest> {
    static void zza(AccountChangeEventsRequest accountChangeEventsRequest, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, accountChangeEventsRequest.mVersion);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, accountChangeEventsRequest.cd);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, accountChangeEventsRequest.cb, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, (Parcelable) accountChangeEventsRequest.aL, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzad, reason: merged with bridge method [inline-methods] */
    public AccountChangeEventsRequest createFromParcel(Parcel parcel) {
        Account account = null;
        int i = 0;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        String str = null;
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
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 4:
                    account = (Account) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, Account.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new AccountChangeEventsRequest(i2, i, str, account);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcl, reason: merged with bridge method [inline-methods] */
    public AccountChangeEventsRequest[] newArray(int i) {
        return new AccountChangeEventsRequest[i];
    }
}
