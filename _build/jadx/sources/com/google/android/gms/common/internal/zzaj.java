package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzaj implements Parcelable.Creator<ValidateAccountRequest> {
    static void zza(ValidateAccountRequest validateAccountRequest, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, validateAccountRequest.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, validateAccountRequest.zzato());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, validateAccountRequest.xj, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, (Parcelable[]) validateAccountRequest.zzatm(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, validateAccountRequest.zzatp(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, validateAccountRequest.getCallingPackage(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzck, reason: merged with bridge method [inline-methods] */
    public ValidateAccountRequest createFromParcel(Parcel parcel) {
        int i = 0;
        String str = null;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        Bundle bundle = null;
        Scope[] scopeArr = null;
        IBinder iBinder = null;
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
                    iBinder = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, zzcl);
                    break;
                case 4:
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl, Scope.CREATOR);
                    break;
                case 5:
                    bundle = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, zzcl);
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
        return new ValidateAccountRequest(i2, i, iBinder, scopeArr, bundle, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgl, reason: merged with bridge method [inline-methods] */
    public ValidateAccountRequest[] newArray(int i) {
        return new ValidateAccountRequest[i];
    }
}
