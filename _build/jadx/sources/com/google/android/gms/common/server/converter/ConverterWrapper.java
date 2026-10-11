package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ConverterWrapper extends AbstractSafeParcelable {
    public static final zza CREATOR = new zza();
    private final int mVersionCode;
    private final StringToIntConverter zz;

    ConverterWrapper(int i, StringToIntConverter stringToIntConverter) {
        this.mVersionCode = i;
        this.zz = stringToIntConverter;
    }

    private ConverterWrapper(StringToIntConverter stringToIntConverter) {
        this.mVersionCode = 1;
        this.zz = stringToIntConverter;
    }

    public static ConverterWrapper zza(FastJsonResponse.zza<?, ?> zzaVar) {
        if (zzaVar instanceof StringToIntConverter) {
            return new ConverterWrapper((StringToIntConverter) zzaVar);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza zzaVar = CREATOR;
        zza.zza(this, parcel, i);
    }

    StringToIntConverter zzatq() {
        return this.zz;
    }

    public FastJsonResponse.zza<?, ?> zzatr() {
        if (this.zz != null) {
            return this.zz;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }
}
