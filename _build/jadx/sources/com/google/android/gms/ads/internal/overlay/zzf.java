package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.InterstitialAdParameterParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzf implements Parcelable.Creator<AdOverlayInfoParcel> {
    static void zza(AdOverlayInfoParcel adOverlayInfoParcel, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, adOverlayInfoParcel.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) adOverlayInfoParcel.zzbtj, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, adOverlayInfoParcel.zzoc(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, adOverlayInfoParcel.zzod(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, adOverlayInfoParcel.zzoe(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, adOverlayInfoParcel.zzof(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, adOverlayInfoParcel.zzbto, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, adOverlayInfoParcel.zzbtp);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, adOverlayInfoParcel.zzbtq, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 10, adOverlayInfoParcel.zzoh(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 11, adOverlayInfoParcel.orientation);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 12, adOverlayInfoParcel.zzbts);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 13, adOverlayInfoParcel.url, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 14, (Parcelable) adOverlayInfoParcel.zzaow, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 15, adOverlayInfoParcel.zzog(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 16, adOverlayInfoParcel.zzbtu, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 17, (Parcelable) adOverlayInfoParcel.zzbtv, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzag, reason: merged with bridge method [inline-methods] */
    public AdOverlayInfoParcel[] newArray(int i) {
        return new AdOverlayInfoParcel[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzi, reason: merged with bridge method [inline-methods] */
    public AdOverlayInfoParcel createFromParcel(Parcel parcel) {
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i = 0;
        AdLauncherIntentInfoParcel adLauncherIntentInfoParcel = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String str = null;
        boolean z = false;
        String str2 = null;
        IBinder iBinder5 = null;
        int i2 = 0;
        int i3 = 0;
        String str3 = null;
        VersionInfoParcel versionInfoParcel = null;
        IBinder iBinder6 = null;
        String str4 = null;
        InterstitialAdParameterParcel interstitialAdParameterParcel = null;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    adLauncherIntentInfoParcel = (AdLauncherIntentInfoParcel) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, AdLauncherIntentInfoParcel.CREATOR);
                    break;
                case 3:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, zzcl);
                    break;
                case 4:
                    iBinder2 = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, zzcl);
                    break;
                case 5:
                    iBinder3 = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, zzcl);
                    break;
                case 6:
                    iBinder4 = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, zzcl);
                    break;
                case 7:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 9:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 10:
                    iBinder5 = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, zzcl);
                    break;
                case 11:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 12:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 13:
                    str3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 14:
                    versionInfoParcel = (VersionInfoParcel) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, VersionInfoParcel.CREATOR);
                    break;
                case 15:
                    iBinder6 = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, zzcl);
                    break;
                case 16:
                    str4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 17:
                    interstitialAdParameterParcel = (InterstitialAdParameterParcel) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, InterstitialAdParameterParcel.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new AdOverlayInfoParcel(i, adLauncherIntentInfoParcel, iBinder, iBinder2, iBinder3, iBinder4, str, z, str2, iBinder5, i2, i3, str3, versionInfoParcel, iBinder6, str4, interstitialAdParameterParcel);
    }
}
