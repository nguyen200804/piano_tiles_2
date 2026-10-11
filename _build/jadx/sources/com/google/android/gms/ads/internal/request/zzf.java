package com.google.android.gms.ads.internal.request;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.MotionEventCompat;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzf implements Parcelable.Creator<AdRequestInfoParcel> {
    static void zza(AdRequestInfoParcel adRequestInfoParcel, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, adRequestInfoParcel.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, adRequestInfoParcel.zzcaq, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) adRequestInfoParcel.zzcar, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, (Parcelable) adRequestInfoParcel.zzapa, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, adRequestInfoParcel.zzaou, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, (Parcelable) adRequestInfoParcel.applicationInfo, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, (Parcelable) adRequestInfoParcel.zzcas, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, adRequestInfoParcel.zzcat, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, adRequestInfoParcel.zzcau, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 10, adRequestInfoParcel.zzcav, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 11, (Parcelable) adRequestInfoParcel.zzaow, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 12, adRequestInfoParcel.zzcaw, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 13, adRequestInfoParcel.zzcax);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 14, adRequestInfoParcel.zzaps, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 15, adRequestInfoParcel.zzcay, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 16, adRequestInfoParcel.zzcaz);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 17, (Parcelable) adRequestInfoParcel.zzcba, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 18, adRequestInfoParcel.zzcbb);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 19, adRequestInfoParcel.zzcbc);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 20, adRequestInfoParcel.zzcbd);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 21, adRequestInfoParcel.zzcbe, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 25, adRequestInfoParcel.zzcbf);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 26, adRequestInfoParcel.zzcbg, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 27, adRequestInfoParcel.zzcbh, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 28, adRequestInfoParcel.zzaot, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 29, (Parcelable) adRequestInfoParcel.zzapo, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 30, adRequestInfoParcel.zzcbi, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 31, adRequestInfoParcel.zzcbj);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 32, (Parcelable) adRequestInfoParcel.zzcbk, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 33, adRequestInfoParcel.zzcbl, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 34, adRequestInfoParcel.zzcbm);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 35, adRequestInfoParcel.zzcbn);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 36, adRequestInfoParcel.zzcbo);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 37, adRequestInfoParcel.zzcbp);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 38, adRequestInfoParcel.zzcbq);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 39, adRequestInfoParcel.zzcbr, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 40, adRequestInfoParcel.zzcbs);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 41, adRequestInfoParcel.zzcbt, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 42, adRequestInfoParcel.zzbnq);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 43, adRequestInfoParcel.zzcbu);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 44, adRequestInfoParcel.zzcbv, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzao, reason: merged with bridge method [inline-methods] */
    public AdRequestInfoParcel[] newArray(int i) {
        return new AdRequestInfoParcel[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzk, reason: merged with bridge method [inline-methods] */
    public AdRequestInfoParcel createFromParcel(Parcel parcel) {
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i = 0;
        Bundle bundle = null;
        AdRequestParcel adRequestParcel = null;
        AdSizeParcel adSizeParcel = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        VersionInfoParcel versionInfoParcel = null;
        Bundle bundle2 = null;
        int i2 = 0;
        ArrayList<String> arrayList = null;
        Bundle bundle3 = null;
        boolean z = false;
        Messenger messenger = null;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        String str5 = null;
        long j = 0;
        String str6 = null;
        ArrayList<String> arrayList2 = null;
        String str7 = null;
        NativeAdOptionsParcel nativeAdOptionsParcel = null;
        ArrayList<String> arrayList3 = null;
        long j2 = 0;
        CapabilityParcel capabilityParcel = null;
        String str8 = null;
        float f2 = 0.0f;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        boolean z3 = false;
        boolean z4 = false;
        String str9 = null;
        String str10 = null;
        boolean z5 = false;
        int i7 = 0;
        Bundle bundle4 = null;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    bundle = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, zzcl);
                    break;
                case 3:
                    adRequestParcel = (AdRequestParcel) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, AdRequestParcel.CREATOR);
                    break;
                case 4:
                    adSizeParcel = (AdSizeParcel) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, AdSizeParcel.CREATOR);
                    break;
                case 5:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, PackageInfo.CREATOR);
                    break;
                case 8:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 9:
                    str3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 10:
                    str4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 11:
                    versionInfoParcel = (VersionInfoParcel) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, VersionInfoParcel.CREATOR);
                    break;
                case 12:
                    bundle2 = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, zzcl);
                    break;
                case 13:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 14:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, zzcl);
                    break;
                case 15:
                    bundle3 = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, zzcl);
                    break;
                case 16:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 17:
                    messenger = (Messenger) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, Messenger.CREATOR);
                    break;
                case 18:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 19:
                    i4 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 20:
                    f = com.google.android.gms.common.internal.safeparcel.zza.zzl(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_WHEEL /* 21 */:
                    str5 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GAS /* 22 */:
                case MotionEventCompat.AXIS_BRAKE /* 23 */:
                case MotionEventCompat.AXIS_DISTANCE /* 24 */:
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_TILT /* 25 */:
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcl);
                    break;
                case 26:
                    str6 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 27:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, zzcl);
                    break;
                case 28:
                    str7 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 29:
                    nativeAdOptionsParcel = (NativeAdOptionsParcel) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, NativeAdOptionsParcel.CREATOR);
                    break;
                case 30:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, zzcl);
                    break;
                case 31:
                    j2 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcl);
                    break;
                case 32:
                    capabilityParcel = (CapabilityParcel) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, CapabilityParcel.CREATOR);
                    break;
                case MotionEventCompat.AXIS_GENERIC_2 /* 33 */:
                    str8 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                    f2 = com.google.android.gms.common.internal.safeparcel.zza.zzl(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                    i5 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_5 /* 36 */:
                    i6 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
                    z3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 38:
                    z4 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                    str9 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
                    z2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_10 /* 41 */:
                    str10 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                    z5 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                    i7 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                    bundle4 = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new AdRequestInfoParcel(i, bundle, adRequestParcel, adSizeParcel, str, applicationInfo, packageInfo, str2, str3, str4, versionInfoParcel, bundle2, i2, arrayList, bundle3, z, messenger, i3, i4, f, str5, j, str6, arrayList2, str7, nativeAdOptionsParcel, arrayList3, j2, capabilityParcel, str8, f2, z2, i5, i6, z3, z4, str9, str10, z5, i7, bundle4);
    }
}
