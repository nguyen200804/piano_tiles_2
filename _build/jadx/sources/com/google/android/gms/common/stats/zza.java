package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zza implements Parcelable.Creator<ConnectionEvent> {
    static void zza(ConnectionEvent connectionEvent, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, connectionEvent.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, connectionEvent.getTimeMillis());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, connectionEvent.zzaun(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, connectionEvent.zzauo(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, connectionEvent.zzaup(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, connectionEvent.zzauq(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, connectionEvent.zzaur(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 10, connectionEvent.zzauv());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 11, connectionEvent.zzauu());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 12, connectionEvent.getEventType());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 13, connectionEvent.zzaus(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcx, reason: merged with bridge method [inline-methods] */
    public ConnectionEvent createFromParcel(Parcel parcel) {
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i = 0;
        long j = 0;
        int i2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        long j2 = 0;
        long j3 = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcl);
                    break;
                case 3:
                case 9:
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 5:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 6:
                    str3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 7:
                    str4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 8:
                    str5 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 10:
                    j2 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcl);
                    break;
                case 11:
                    j3 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcl);
                    break;
                case 12:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 13:
                    str6 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new ConnectionEvent(i, j, i2, str, str2, str3, str4, str5, str6, j2, j3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgx, reason: merged with bridge method [inline-methods] */
    public ConnectionEvent[] newArray(int i) {
        return new ConnectionEvent[i];
    }
}
