package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zza implements Parcelable.Creator<BitmapTeleporter> {
    static void zza(BitmapTeleporter bitmapTeleporter, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, bitmapTeleporter.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) bitmapTeleporter.zzccz, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, bitmapTeleporter.iq);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcb, reason: merged with bridge method [inline-methods] */
    public BitmapTeleporter createFromParcel(Parcel parcel) {
        int zzg;
        ParcelFileDescriptor parcelFileDescriptor;
        int i;
        int i2 = 0;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        ParcelFileDescriptor parcelFileDescriptor2 = null;
        int i3 = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    int i4 = i2;
                    parcelFileDescriptor = parcelFileDescriptor2;
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    zzg = i4;
                    break;
                case 2:
                    ParcelFileDescriptor parcelFileDescriptor3 = (ParcelFileDescriptor) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, ParcelFileDescriptor.CREATOR);
                    i = i3;
                    zzg = i2;
                    parcelFileDescriptor = parcelFileDescriptor3;
                    break;
                case 3:
                    zzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    parcelFileDescriptor = parcelFileDescriptor2;
                    i = i3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    zzg = i2;
                    parcelFileDescriptor = parcelFileDescriptor2;
                    i = i3;
                    break;
            }
            i3 = i;
            parcelFileDescriptor2 = parcelFileDescriptor;
            i2 = zzg;
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new BitmapTeleporter(i3, parcelFileDescriptor2, i2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfp, reason: merged with bridge method [inline-methods] */
    public BitmapTeleporter[] newArray(int i) {
        return new BitmapTeleporter[i];
    }
}
