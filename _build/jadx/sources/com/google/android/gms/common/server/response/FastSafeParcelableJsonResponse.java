package com.google.android.gms.common.server.response;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class FastSafeParcelableJsonResponse extends FastJsonResponse implements SafeParcelable {
    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public Object zzhs(String str) {
        return null;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public boolean zzht(String str) {
        return false;
    }
}
