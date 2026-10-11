package com.google.android.gms.ads.internal.purchase;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zza implements Parcelable.Creator<GInAppPurchaseManagerInfoParcel> {
    static void zza(GInAppPurchaseManagerInfoParcel gInAppPurchaseManagerInfoParcel, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, gInAppPurchaseManagerInfoParcel.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, gInAppPurchaseManagerInfoParcel.zzpn(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, gInAppPurchaseManagerInfoParcel.zzpo(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, gInAppPurchaseManagerInfoParcel.zzpp(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, gInAppPurchaseManagerInfoParcel.zzpm(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzah, reason: merged with bridge method [inline-methods] */
    public GInAppPurchaseManagerInfoParcel[] newArray(int i) {
        return new GInAppPurchaseManagerInfoParcel[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzj, reason: merged with bridge method [inline-methods] */
    public GInAppPurchaseManagerInfoParcel createFromParcel(Parcel parcel) {
        IBinder iBinder = null;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i = 0;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
                case 3:
                    iBinder4 = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, zzcl);
                    break;
                case 4:
                    iBinder3 = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, zzcl);
                    break;
                case 5:
                    iBinder2 = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, zzcl);
                    break;
                case 6:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zza.zzr(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new GInAppPurchaseManagerInfoParcel(i, iBinder4, iBinder3, iBinder2, iBinder);
    }
}
