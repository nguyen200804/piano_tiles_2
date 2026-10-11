package com.google.android.gms.ads.internal.request;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.MotionEventCompat;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzh implements Parcelable.Creator<AdResponseParcel> {
    static void zza(AdResponseParcel adResponseParcel, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, adResponseParcel.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, adResponseParcel.zzbto, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, adResponseParcel.body, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 4, adResponseParcel.zzbnm, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 5, adResponseParcel.errorCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 6, adResponseParcel.zzbnn, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, adResponseParcel.zzcbx);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, adResponseParcel.zzcby);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, adResponseParcel.zzcbz);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 10, adResponseParcel.zzcca, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 11, adResponseParcel.zzbns);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 12, adResponseParcel.orientation);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 13, adResponseParcel.zzccb, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 14, adResponseParcel.zzccc);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 15, adResponseParcel.zzccd, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 18, adResponseParcel.zzcce);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 19, adResponseParcel.zzccf, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 21, adResponseParcel.zzccg, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 22, adResponseParcel.zzcch);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 23, adResponseParcel.zzauu);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 24, adResponseParcel.zzcaz);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 25, adResponseParcel.zzcci);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 26, adResponseParcel.zzccj);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 28, (Parcelable) adResponseParcel.zzcck, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 29, adResponseParcel.zzccl, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 30, adResponseParcel.zzccm, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 31, adResponseParcel.zzauv);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 32, adResponseParcel.zzauw);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 33, (Parcelable) adResponseParcel.zzccn, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 34, adResponseParcel.zzcco, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 35, adResponseParcel.zzccp, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 36, adResponseParcel.zzccq);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 37, (Parcelable) adResponseParcel.zzccr, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 38, adResponseParcel.zzcbq);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 39, adResponseParcel.zzcbr, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 40, adResponseParcel.zzbnp, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 41, adResponseParcel.zzccs, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 42, adResponseParcel.zzbnq);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 43, adResponseParcel.zzcct, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzap, reason: merged with bridge method [inline-methods] */
    public AdResponseParcel[] newArray(int i) {
        return new AdResponseParcel[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzl, reason: merged with bridge method [inline-methods] */
    public AdResponseParcel createFromParcel(Parcel parcel) {
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        int i2 = 0;
        ArrayList<String> arrayList2 = null;
        long j = 0;
        boolean z = false;
        long j2 = 0;
        ArrayList<String> arrayList3 = null;
        long j3 = 0;
        int i3 = 0;
        String str3 = null;
        long j4 = 0;
        String str4 = null;
        boolean z2 = false;
        String str5 = null;
        String str6 = null;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        LargeParcelTeleporter largeParcelTeleporter = null;
        String str7 = null;
        String str8 = null;
        boolean z8 = false;
        boolean z9 = false;
        RewardItemParcel rewardItemParcel = null;
        ArrayList<String> arrayList4 = null;
        ArrayList<String> arrayList5 = null;
        boolean z10 = false;
        AutoClickProtectionConfigurationParcel autoClickProtectionConfigurationParcel = null;
        boolean z11 = false;
        String str9 = null;
        ArrayList<String> arrayList6 = null;
        String str10 = null;
        boolean z12 = false;
        String str11 = null;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 4:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, zzcl);
                    break;
                case 5:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 6:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, zzcl);
                    break;
                case 7:
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcl);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 9:
                    j2 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcl);
                    break;
                case 10:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, zzcl);
                    break;
                case 11:
                    j3 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcl);
                    break;
                case 12:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 13:
                    str3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 14:
                    j4 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcl);
                    break;
                case 15:
                    str4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 16:
                case 17:
                case 20:
                case 27:
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
                case 18:
                    z2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 19:
                    str5 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_WHEEL /* 21 */:
                    str6 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GAS /* 22 */:
                    z3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_BRAKE /* 23 */:
                    z4 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_DISTANCE /* 24 */:
                    z5 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_TILT /* 25 */:
                    z6 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 26:
                    z7 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 28:
                    largeParcelTeleporter = (LargeParcelTeleporter) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, LargeParcelTeleporter.CREATOR);
                    break;
                case 29:
                    str7 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 30:
                    str8 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 31:
                    z8 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 32:
                    z9 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_2 /* 33 */:
                    rewardItemParcel = (RewardItemParcel) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, RewardItemParcel.CREATOR);
                    break;
                case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                    arrayList4 = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                    arrayList5 = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_5 /* 36 */:
                    z10 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
                    autoClickProtectionConfigurationParcel = (AutoClickProtectionConfigurationParcel) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, AutoClickProtectionConfigurationParcel.CREATOR);
                    break;
                case 38:
                    z11 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                    str9 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
                    arrayList6 = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_10 /* 41 */:
                    str10 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                    z12 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                    str11 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new AdResponseParcel(i, str, str2, arrayList, i2, arrayList2, j, z, j2, arrayList3, j3, i3, str3, j4, str4, z2, str5, str6, z3, z4, z5, z6, z7, largeParcelTeleporter, str7, str8, z8, z9, rewardItemParcel, arrayList4, arrayList5, z10, autoClickProtectionConfigurationParcel, z11, str9, arrayList6, str10, z12, str11);
    }
}
