package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import java.util.ArrayList;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzb implements Parcelable.Creator<GoogleSignInOptions> {
    static void zza(GoogleSignInOptions googleSignInOptions, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, googleSignInOptions.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 2, googleSignInOptions.zzafq(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable) googleSignInOptions.getAccount(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, googleSignInOptions.zzafr());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 5, googleSignInOptions.zzafs());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 6, googleSignInOptions.zzaft());
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 7, googleSignInOptions.zzafu(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 8, googleSignInOptions.zzafv(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzat, reason: merged with bridge method [inline-methods] */
    public GoogleSignInOptions createFromParcel(Parcel parcel) {
        String str = null;
        boolean z = false;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        String str2 = null;
        boolean z2 = false;
        boolean z3 = false;
        Account account = null;
        ArrayList arrayList = null;
        int i = 0;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    break;
                case 2:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, Account.CREATOR);
                    break;
                case 4:
                    z3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 5:
                    z2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 6:
                    z = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, zzcl);
                    break;
                case 7:
                    str2 = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                case 8:
                    str = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    break;
            }
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new GoogleSignInOptions(i, (ArrayList<Scope>) arrayList, account, z3, z2, z, str2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdb, reason: merged with bridge method [inline-methods] */
    public GoogleSignInOptions[] newArray(int i) {
        return new GoogleSignInOptions[i];
    }
}
