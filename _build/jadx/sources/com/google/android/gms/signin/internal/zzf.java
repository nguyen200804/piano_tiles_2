package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzf implements Parcelable.Creator<RecordConsentRequest> {
    static void zza(RecordConsentRequest recordConsentRequest, Parcel parcel, int i) {
        int zzcn = com.google.android.gms.common.internal.safeparcel.zzb.zzcn(parcel);
        com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, 1, recordConsentRequest.mVersionCode);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 2, (Parcelable) recordConsentRequest.getAccount(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 3, (Parcelable[]) recordConsentRequest.zzbzw(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, 4, recordConsentRequest.zzafu(), false);
        com.google.android.gms.common.internal.safeparcel.zzb.zzaj(parcel, zzcn);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzrr, reason: merged with bridge method [inline-methods] */
    public RecordConsentRequest createFromParcel(Parcel parcel) {
        String zzq;
        Scope[] scopeArr;
        Account account;
        int i;
        String str = null;
        int zzcm = com.google.android.gms.common.internal.safeparcel.zza.zzcm(parcel);
        int i2 = 0;
        Scope[] scopeArr2 = null;
        Account account2 = null;
        while (parcel.dataPosition() < zzcm) {
            int zzcl = com.google.android.gms.common.internal.safeparcel.zza.zzcl(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zza.zzgm(zzcl)) {
                case 1:
                    String str2 = str;
                    scopeArr = scopeArr2;
                    account = account2;
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, zzcl);
                    zzq = str2;
                    break;
                case 2:
                    i = i2;
                    Scope[] scopeArr3 = scopeArr2;
                    account = (Account) com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, zzcl, Account.CREATOR);
                    zzq = str;
                    scopeArr = scopeArr3;
                    break;
                case 3:
                    account = account2;
                    i = i2;
                    String str3 = str;
                    scopeArr = (Scope[]) com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl, Scope.CREATOR);
                    zzq = str3;
                    break;
                case 4:
                    zzq = com.google.android.gms.common.internal.safeparcel.zza.zzq(parcel, zzcl);
                    scopeArr = scopeArr2;
                    account = account2;
                    i = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, zzcl);
                    zzq = str;
                    scopeArr = scopeArr2;
                    account = account2;
                    i = i2;
                    break;
            }
            i2 = i;
            account2 = account;
            scopeArr2 = scopeArr;
            str = zzq;
        }
        if (parcel.dataPosition() != zzcm) {
            throw new zza.C0129zza(new StringBuilder(37).append("Overread allowed size end=").append(zzcm).toString(), parcel);
        }
        return new RecordConsentRequest(i2, account2, scopeArr2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzzb, reason: merged with bridge method [inline-methods] */
    public RecordConsentRequest[] newArray(int i) {
        return new RecordConsentRequest[i];
    }
}
