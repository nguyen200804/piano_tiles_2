package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class Scope extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new zze();
    final int mVersionCode;
    private final String sp;

    Scope(int i, String str) {
        zzab.zzh(str, "scopeUri must not be null or empty");
        this.mVersionCode = i;
        this.sp = str;
    }

    public Scope(String str) {
        this(1, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Scope) {
            return this.sp.equals(((Scope) obj).sp);
        }
        return false;
    }

    public int hashCode() {
        return this.sp.hashCode();
    }

    public String toString() {
        return this.sp;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public String zzaok() {
        return this.sp;
    }
}
