package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zza implements Parcelable.Creator<FastJsonResponse.Field> {
    static void zza(FastJsonResponse.Field field, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, field.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, field.zzatt());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, field.zzaty());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, field.zzatu());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, field.zzatz());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, field.zzaua(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 7, field.zzaub());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, field.zzaud(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, (Parcelable) field.zzauf(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcs, reason: merged with bridge method [inline-methods] */
    public FastJsonResponse.Field createFromParcel(Parcel parcel) {
        ConverterWrapper converterWrapper = null;
        int i = 0;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        String str = null;
        String str2 = null;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i4 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 3:
                    z2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 6:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 7:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 8:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 9:
                    converterWrapper = (ConverterWrapper) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, ConverterWrapper.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new FastJsonResponse.Field(i4, i3, z2, i2, z, str2, i, str, converterWrapper);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgs, reason: merged with bridge method [inline-methods] */
    public FastJsonResponse.Field[] newArray(int i) {
        return new FastJsonResponse.Field[i];
    }
}
