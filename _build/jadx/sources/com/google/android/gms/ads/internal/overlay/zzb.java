package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzb implements Parcelable.Creator<AdLauncherIntentInfoParcel> {
    static void zza(AdLauncherIntentInfoParcel adLauncherIntentInfoParcel, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, adLauncherIntentInfoParcel.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, adLauncherIntentInfoParcel.zzbrn, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, adLauncherIntentInfoParcel.url, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, adLauncherIntentInfoParcel.mimeType, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, adLauncherIntentInfoParcel.packageName, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, adLauncherIntentInfoParcel.zzbro, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, adLauncherIntentInfoParcel.zzbrp, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, adLauncherIntentInfoParcel.zzbrq, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, (Parcelable) adLauncherIntentInfoParcel.intent, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzac, reason: merged with bridge method [inline-methods] */
    public AdLauncherIntentInfoParcel[] newArray(int i) {
        return new AdLauncherIntentInfoParcel[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public AdLauncherIntentInfoParcel createFromParcel(Parcel parcel) {
        Intent intent = null;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    str7 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 3:
                    str6 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 4:
                    str5 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 6:
                    str3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 7:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 8:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 9:
                    intent = (Intent) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, Intent.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new AdLauncherIntentInfoParcel(i, str7, str6, str5, str4, str3, str2, str, intent);
    }
}
