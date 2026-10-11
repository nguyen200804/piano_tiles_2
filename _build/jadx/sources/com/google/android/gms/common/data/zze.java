package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zze implements Parcelable.Creator<DataHolder> {
    static void zza(DataHolder dataHolder, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 1, dataHolder.zzari(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable[]) dataHolder.zzarj(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, dataHolder.getStatusCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, dataHolder.zzarc(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1000, dataHolder.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcc, reason: merged with bridge method [inline-methods] */
    public DataHolder createFromParcel(Parcel parcel) {
        int i = 0;
        Bundle bundle = null;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        CursorWindow[] cursorWindowArr = null;
        String[] strArr = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    strArr = com.google.android.gms.common.internal.safeparcel.zza.zzac(parcel, zzcl);
                    break;
                case 2:
                    cursorWindowArr = (CursorWindow[]) com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl, CursorWindow.CREATOR);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 4:
                    bundle = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, zzcl);
                    break;
                case 1000:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        DataHolder dataHolder = new DataHolder(i2, strArr, cursorWindowArr, i, bundle);
        dataHolder.zzarh();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfv, reason: merged with bridge method [inline-methods] */
    public DataHolder[] newArray(int i) {
        return new DataHolder[i];
    }
}
