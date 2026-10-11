package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzb implements Parcelable.Creator<WebImage> {
    static void zza(WebImage webImage, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, webImage.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) webImage.getUrl(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 3, webImage.getWidth());
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 4, webImage.getHeight());
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcd, reason: merged with bridge method [inline-methods] */
    public WebImage createFromParcel(Parcel parcel) {
        int zzg;
        int i;
        Uri uri;
        int i2;
        int i3 = 0;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        Uri uri2 = null;
        int i4 = 0;
        int i5 = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    int i6 = i3;
                    i = i4;
                    uri = uri2;
                    i2 = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    zzg = i6;
                    break;
                case 2:
                    i2 = i5;
                    int i7 = i4;
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, Uri.CREATOR);
                    zzg = i3;
                    i = i7;
                    break;
                case 3:
                    uri = uri2;
                    i2 = i5;
                    int i8 = i3;
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    zzg = i8;
                    break;
                case 4:
                    zzg = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    i = i4;
                    uri = uri2;
                    i2 = i5;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    zzg = i3;
                    i = i4;
                    uri = uri2;
                    i2 = i5;
                    break;
            }
            i5 = i2;
            uri2 = uri;
            i4 = i;
            i3 = zzg;
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new WebImage(i5, uri2, i4, i3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfz, reason: merged with bridge method [inline-methods] */
    public WebImage[] newArray(int i) {
        return new WebImage[i];
    }
}
