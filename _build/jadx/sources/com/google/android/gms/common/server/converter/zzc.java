package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.server.converter.StringToIntConverter;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzc implements Parcelable.Creator<StringToIntConverter.Entry> {
    static void zza(StringToIntConverter.Entry entry, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, entry.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, entry.zD, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, entry.zE);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcr, reason: merged with bridge method [inline-methods] */
    public StringToIntConverter.Entry createFromParcel(Parcel parcel) {
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
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new StringToIntConverter.Entry(i2, str, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgr, reason: merged with bridge method [inline-methods] */
    public StringToIntConverter.Entry[] newArray(int i) {
        return new StringToIntConverter.Entry[i];
    }
}
