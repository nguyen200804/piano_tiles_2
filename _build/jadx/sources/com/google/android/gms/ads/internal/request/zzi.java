package com.google.android.gms.ads.internal.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzi implements Parcelable.Creator<AutoClickProtectionConfigurationParcel> {
    static void zza(AutoClickProtectionConfigurationParcel autoClickProtectionConfigurationParcel, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, autoClickProtectionConfigurationParcel.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, autoClickProtectionConfigurationParcel.zzccu);
        com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, 3, autoClickProtectionConfigurationParcel.zzccv, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaq, reason: merged with bridge method [inline-methods] */
    public AutoClickProtectionConfigurationParcel[] newArray(int i) {
        return new AutoClickProtectionConfigurationParcel[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzm, reason: merged with bridge method [inline-methods] */
    public AutoClickProtectionConfigurationParcel createFromParcel(Parcel parcel) {
        boolean z = false;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        ArrayList<String> arrayList = null;
        int i = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 3:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zza.zzae(parcel, zzcl);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new AutoClickProtectionConfigurationParcel(i, z, arrayList);
    }
}
