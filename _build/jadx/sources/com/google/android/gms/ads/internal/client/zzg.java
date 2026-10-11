package com.google.android.gms.ads.internal.client;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzg implements Parcelable.Creator<AdRequestParcel> {
    static void zza(AdRequestParcel adRequestParcel, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, adRequestParcel.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, adRequestParcel.zzatm);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, adRequestParcel.extras, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, adRequestParcel.zzatn);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 5, adRequestParcel.zzato, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, adRequestParcel.zzatp);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 7, adRequestParcel.zzatq);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, adRequestParcel.zzatr);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, adRequestParcel.zzats, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 10, (Parcelable) adRequestParcel.zzatt, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 11, (Parcelable) adRequestParcel.zzatu, i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 12, adRequestParcel.zzatv, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 13, adRequestParcel.zzatw, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 14, adRequestParcel.zzatx, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 15, adRequestParcel.zzaty, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 16, adRequestParcel.zzatz, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 17, adRequestParcel.zzaua, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 18, adRequestParcel.zzaub);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public AdRequestParcel createFromParcel(Parcel parcel) {
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i = 0;
        long j = 0;
        Bundle bundle = null;
        int i2 = 0;
        ArrayList<String> arrayList = null;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        String str = null;
        SearchAdRequestParcel searchAdRequestParcel = null;
        Location location = null;
        String str2 = null;
        Bundle bundle2 = null;
        Bundle bundle3 = null;
        ArrayList<String> arrayList2 = null;
        String str3 = null;
        String str4 = null;
        boolean z3 = false;
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
                    bundle = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, zzcl);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 5:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, zzcl);
                    break;
                case 6:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 7:
                    i3 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 8:
                    z2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 9:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 10:
                    searchAdRequestParcel = (SearchAdRequestParcel) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, SearchAdRequestParcel.CREATOR);
                    break;
                case 11:
                    location = (Location) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, Location.CREATOR);
                    break;
                case 12:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 13:
                    bundle2 = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, zzcl);
                    break;
                case 14:
                    bundle3 = com.google.android.gms.common.internal.safeparcel.zza.zzs(parcel, zzcl);
                    break;
                case 15:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, zzcl);
                    break;
                case 16:
                    str3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 17:
                    str4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 18:
                    z3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new AdRequestParcel(i, j, bundle, i2, arrayList, z, i3, z2, str, searchAdRequestParcel, location, str2, bundle2, bundle3, arrayList2, str3, str4, z3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzr, reason: merged with bridge method [inline-methods] */
    public AdRequestParcel[] newArray(int i) {
        return new AdRequestParcel[i];
    }
}
