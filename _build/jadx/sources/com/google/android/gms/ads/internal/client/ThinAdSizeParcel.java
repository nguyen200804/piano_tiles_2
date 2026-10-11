package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.zzin;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ThinAdSizeParcel extends AdSizeParcel {
    public ThinAdSizeParcel(AdSizeParcel adSizeParcel) {
        super(adSizeParcel.versionCode, adSizeParcel.zzaur, adSizeParcel.height, adSizeParcel.heightPixels, adSizeParcel.zzaus, adSizeParcel.width, adSizeParcel.widthPixels, adSizeParcel.zzaut, adSizeParcel.zzauu, adSizeParcel.zzauv, adSizeParcel.zzauw);
    }

    @Override // com.google.android.gms.ads.internal.client.AdSizeParcel, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, this.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, this.zzaur, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, this.height);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 6, this.width);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }
}
