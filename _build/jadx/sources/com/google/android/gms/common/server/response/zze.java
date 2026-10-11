package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zze implements Parcelable.Creator<SafeParcelResponse> {
    static void zza(SafeParcelResponse safeParcelResponse, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, safeParcelResponse.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, safeParcelResponse.zzaul(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) safeParcelResponse.zzaum(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcw, reason: merged with bridge method [inline-methods] */
    public SafeParcelResponse createFromParcel(Parcel parcel) {
        FieldMappingDictionary fieldMappingDictionary = null;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i = 0;
        Parcel parcel2 = null;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    parcel2 = com.google.android.gms.common.internal.safeparcel.zza.zzaf(parcel, zzcl);
                    break;
                case 3:
                    fieldMappingDictionary = (FieldMappingDictionary) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, FieldMappingDictionary.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new SafeParcelResponse(i, parcel2, fieldMappingDictionary);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgw, reason: merged with bridge method [inline-methods] */
    public SafeParcelResponse[] newArray(int i) {
        return new SafeParcelResponse[i];
    }
}
