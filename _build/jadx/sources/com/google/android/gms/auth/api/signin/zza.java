package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zza implements Parcelable.Creator<GoogleSignInAccount> {
    static void zza(GoogleSignInAccount googleSignInAccount, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, googleSignInAccount.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, googleSignInAccount.getId(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, googleSignInAccount.getIdToken(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, googleSignInAccount.getEmail(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, googleSignInAccount.getDisplayName(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, (Parcelable) googleSignInAccount.getPhotoUrl(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, googleSignInAccount.getServerAuthCode(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, googleSignInAccount.zzafl());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 9, googleSignInAccount.zzafm(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 10, googleSignInAccount.cs, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 11, googleSignInAccount.getGivenName(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 12, googleSignInAccount.getFamilyName(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzas, reason: merged with bridge method [inline-methods] */
    public GoogleSignInAccount createFromParcel(Parcel parcel) {
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        long j = 0;
        String str6 = null;
        ArrayList arrayList = null;
        String str7 = null;
        String str8 = null;
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
                    str3 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 6:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, Uri.CREATOR);
                    break;
                case 7:
                    str5 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 8:
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, zzcl);
                    break;
                case 9:
                    str6 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 10:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl, Scope.CREATOR);
                    break;
                case 11:
                    str7 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 12:
                    str8 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, j, str6, arrayList, str7, str8);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzda, reason: merged with bridge method [inline-methods] */
    public GoogleSignInAccount[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
