package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzq;
import java.util.Collection;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new zzj();
    final int version;
    Account yA;
    long yB;
    final int yu;
    int yv;
    String yw;
    IBinder yx;
    Scope[] yy;
    Bundle yz;

    public GetServiceRequest(int i) {
        this.version = 3;
        this.yv = com.google.android.gms.common.zzc.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        this.yu = i;
    }

    GetServiceRequest(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, long j) {
        this.version = i;
        this.yu = i2;
        this.yv = i3;
        this.yw = str;
        if (i < 2) {
            this.yA = zzdo(iBinder);
        } else {
            this.yx = iBinder;
            this.yA = account;
        }
        this.yy = scopeArr;
        this.yz = bundle;
        this.yB = j;
    }

    private Account zzdo(IBinder iBinder) {
        if (iBinder != null) {
            return zza.zza(zzq.zza.zzdp(iBinder));
        }
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzj.zza(this, parcel, i);
    }

    public GetServiceRequest zzb(zzq zzqVar) {
        if (zzqVar != null) {
            this.yx = zzqVar.asBinder();
        }
        return this;
    }

    public GetServiceRequest zzd(Account account) {
        this.yA = account;
        return this;
    }

    public GetServiceRequest zzf(Collection<Scope> collection) {
        this.yy = (Scope[]) collection.toArray(new Scope[collection.size()]);
        return this;
    }

    public GetServiceRequest zzhl(String str) {
        this.yw = str;
        return this;
    }

    public GetServiceRequest zzn(Bundle bundle) {
        this.yz = bundle;
        return this;
    }
}
