package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzc implements Parcelable.Creator<AuthAccountRequest> {
    static void zza(AuthAccountRequest authAccountRequest, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, authAccountRequest.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, authAccountRequest.xj, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable[]) authAccountRequest.ry, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, authAccountRequest.xk, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, authAccountRequest.xl, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzce, reason: merged with bridge method [inline-methods] */
    public AuthAccountRequest createFromParcel(Parcel parcel) {
        Integer num = null;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i = 0;
        Integer num2 = null;
        Scope[] scopeArr = null;
        IBinder iBinder = null;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, zzcl);
                    break;
                case 3:
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl, Scope.CREATOR);
                    break;
                case 4:
                    num2 = com.google.android.gms.common.internal.safeparcel.zza.zzh(parcel, zzcl);
                    break;
                case 5:
                    num = com.google.android.gms.common.internal.safeparcel.zza.zzh(parcel, zzcl);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new AuthAccountRequest(i, iBinder, scopeArr, num2, num);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgb, reason: merged with bridge method [inline-methods] */
    public AuthAccountRequest[] newArray(int i) {
        return new AuthAccountRequest[i];
    }
}
