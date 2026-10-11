package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zza implements Parcelable.Creator<Configuration> {
    static void zza(Configuration configuration, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, configuration.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, configuration.arh);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable[]) configuration.ari, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, configuration.arj, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzqx, reason: merged with bridge method [inline-methods] */
    public Configuration createFromParcel(Parcel parcel) {
        String[] zzac;
        Flag[] flagArr;
        int i;
        int i2;
        String[] strArr = null;
        int i3 = 0;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        Flag[] flagArr2 = null;
        int i4 = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    String[] strArr2 = strArr;
                    flagArr = flagArr2;
                    i = i3;
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    zzac = strArr2;
                    break;
                case 2:
                    i2 = i4;
                    Flag[] flagArr3 = flagArr2;
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    zzac = strArr;
                    flagArr = flagArr3;
                    break;
                case 3:
                    i = i3;
                    i2 = i4;
                    String[] strArr3 = strArr;
                    flagArr = (Flag[]) com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl, Flag.CREATOR);
                    zzac = strArr3;
                    break;
                case 4:
                    zzac = com.google.android.gms.common.internal.safeparcel.zza.zzac(parcel, zzcl);
                    flagArr = flagArr2;
                    i = i3;
                    i2 = i4;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    zzac = strArr;
                    flagArr = flagArr2;
                    i = i3;
                    i2 = i4;
                    break;
            }
            i4 = i2;
            i3 = i;
            flagArr2 = flagArr;
            strArr = zzac;
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new Configuration(i4, i3, flagArr2, strArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzye, reason: merged with bridge method [inline-methods] */
    public Configuration[] newArray(int i) {
        return new Configuration[i];
    }
}
