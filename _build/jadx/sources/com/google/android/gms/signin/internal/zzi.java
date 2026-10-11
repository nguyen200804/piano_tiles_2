package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzi implements Parcelable.Creator<SignInResponse> {
    static void zza(SignInResponse signInResponse, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, signInResponse.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) signInResponse.zzath(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) signInResponse.zzbzz(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzrt, reason: merged with bridge method [inline-methods] */
    public SignInResponse createFromParcel(Parcel parcel) {
        ResolveAccountResponse resolveAccountResponse;
        ConnectionResult connectionResult;
        int i;
        ResolveAccountResponse resolveAccountResponse2 = null;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i2 = 0;
        ConnectionResult connectionResult2 = null;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    ResolveAccountResponse resolveAccountResponse3 = resolveAccountResponse2;
                    connectionResult = connectionResult2;
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    resolveAccountResponse = resolveAccountResponse3;
                    break;
                case 2:
                    ConnectionResult connectionResult3 = (ConnectionResult) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, ConnectionResult.CREATOR);
                    i = i2;
                    resolveAccountResponse = resolveAccountResponse2;
                    connectionResult = connectionResult3;
                    break;
                case 3:
                    resolveAccountResponse = (ResolveAccountResponse) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, ResolveAccountResponse.CREATOR);
                    connectionResult = connectionResult2;
                    i = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    resolveAccountResponse = resolveAccountResponse2;
                    connectionResult = connectionResult2;
                    i = i2;
                    break;
            }
            i2 = i;
            connectionResult2 = connectionResult;
            resolveAccountResponse2 = resolveAccountResponse;
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new SignInResponse(i2, connectionResult2, resolveAccountResponse2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzzd, reason: merged with bridge method [inline-methods] */
    public SignInResponse[] newArray(int i) {
        return new SignInResponse[i];
    }
}
