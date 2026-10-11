package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzad implements Parcelable.Creator<ResolveAccountResponse> {
    static void zza(ResolveAccountResponse resolveAccountResponse, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, resolveAccountResponse.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, resolveAccountResponse.xj, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) resolveAccountResponse.zzath(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, resolveAccountResponse.zzati());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, resolveAccountResponse.zzatj());
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzci, reason: merged with bridge method [inline-methods] */
    public ResolveAccountResponse createFromParcel(Parcel parcel) {
        ConnectionResult connectionResult = null;
        boolean z = false;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        boolean z2 = false;
        IBinder iBinder = null;
        int i = 0;
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
                    connectionResult = (ConnectionResult) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, ConnectionResult.CREATOR);
                    break;
                case 4:
                    z2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new ResolveAccountResponse(i, iBinder, connectionResult, z2, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgj, reason: merged with bridge method [inline-methods] */
    public ResolveAccountResponse[] newArray(int i) {
        return new ResolveAccountResponse[i];
    }
}
