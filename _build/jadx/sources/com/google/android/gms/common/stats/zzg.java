package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzg implements Parcelable.Creator<WakeLockEvent> {
    static void zza(WakeLockEvent wakeLockEvent, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, wakeLockEvent.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, wakeLockEvent.getTimeMillis());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, wakeLockEvent.zzauz(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 5, wakeLockEvent.zzavc());
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 6, wakeLockEvent.zzavd(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, wakeLockEvent.zzauv());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 10, wakeLockEvent.zzava(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 11, wakeLockEvent.getEventType());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 12, wakeLockEvent.zzaus(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 13, wakeLockEvent.zzavf(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 14, wakeLockEvent.zzave());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 15, wakeLockEvent.zzavg());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 16, wakeLockEvent.zzavh());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 17, wakeLockEvent.zzavb(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcy, reason: merged with bridge method [inline-methods] */
    public WakeLockEvent createFromParcel(Parcel parcel) {
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i = 0;
        long j = 0;
        int i2 = 0;
        String str = null;
        int i3 = 0;
        ArrayList<String> arrayList = null;
        String str2 = null;
        long j2 = 0;
        int i4 = 0;
        String str3 = null;
        String str4 = null;
        float f = 0.0f;
        long j3 = 0;
        String str5 = null;
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
                case 7:
                case 9:
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 5:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 6:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, zzcl);
                    break;
                case 8:
                    j2 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcl);
                    break;
                case 10:
                    str3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 11:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 12:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 13:
                    str4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 14:
                    i4 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 15:
                    f = com.google.android.gms.common.internal.safeparcel.zza.zzl(parcel, zzcl);
                    break;
                case 16:
                    j3 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcl);
                    break;
                case 17:
                    str5 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new WakeLockEvent(i, j, i2, str, i3, arrayList, str2, j2, i4, str3, str4, f, j3, str5);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgy, reason: merged with bridge method [inline-methods] */
    public WakeLockEvent[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}
