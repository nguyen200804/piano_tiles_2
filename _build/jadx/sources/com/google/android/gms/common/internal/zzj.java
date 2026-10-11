package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzj implements Parcelable.Creator<GetServiceRequest> {
    static void zza(GetServiceRequest getServiceRequest, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, getServiceRequest.version);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, getServiceRequest.yu);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, getServiceRequest.yv);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, getServiceRequest.yw, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, getServiceRequest.yx, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, (Parcelable[]) getServiceRequest.yy, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, getServiceRequest.yz, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, (Parcelable) getServiceRequest.yA, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, getServiceRequest.yB);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcg, reason: merged with bridge method [inline-methods] */
    public GetServiceRequest createFromParcel(Parcel parcel) {
        int i = 0;
        Account account = null;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        long j = 0;
        Bundle bundle = null;
        Scope[] scopeArr = null;
        IBinder iBinder = null;
        String str = null;
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
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 5:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, zzcl);
                    break;
                case 6:
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl, Scope.CREATOR);
                    break;
                case 7:
                    bundle = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, zzcl);
                    break;
                case 8:
                    account = (Account) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, Account.CREATOR);
                    break;
                case 9:
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcl);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new GetServiceRequest(i3, i2, i, str, iBinder, scopeArr, bundle, account, j);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzge, reason: merged with bridge method [inline-methods] */
    public GetServiceRequest[] newArray(int i) {
        return new GetServiceRequest[i];
    }
}
