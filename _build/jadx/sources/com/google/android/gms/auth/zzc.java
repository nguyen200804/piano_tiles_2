package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzc implements Parcelable.Creator<AccountChangeEventsResponse> {
    static void zza(AccountChangeEventsResponse accountChangeEventsResponse, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, accountChangeEventsResponse.mVersion);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, accountChangeEventsResponse.zzalc, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzae, reason: merged with bridge method [inline-methods] */
    public AccountChangeEventsResponse createFromParcel(Parcel parcel) {
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl, AccountChangeEvent.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new AccountChangeEventsResponse(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcm, reason: merged with bridge method [inline-methods] */
    public AccountChangeEventsResponse[] newArray(int i) {
        return new AccountChangeEventsResponse[i];
    }
}
