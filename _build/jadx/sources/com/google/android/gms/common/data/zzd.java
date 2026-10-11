package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzd<T extends SafeParcelable> extends AbstractDataBuffer<T> {
    private static final String[] vZ = {"data"};
    private final Parcelable.Creator<T> wa;

    public zzd(DataHolder dataHolder, Parcelable.Creator<T> creator) {
        super(dataHolder);
        this.wa = creator;
    }

    public static <T extends SafeParcelable> void zza(DataHolder.zza zzaVar, T t) {
        Parcel obtain = Parcel.obtain();
        t.writeToParcel(obtain, 0);
        ContentValues contentValues = new ContentValues();
        contentValues.put("data", obtain.marshall());
        zzaVar.zza(contentValues);
        obtain.recycle();
    }

    public static DataHolder.zza zzarg() {
        return DataHolder.zzb(vZ);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: zzfr, reason: merged with bridge method [inline-methods] */
    public T get(int i) {
        byte[] zzg = this.tu.zzg("data", i, this.tu.zzfs(i));
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(zzg, 0, zzg.length);
        obtain.setDataPosition(0);
        T createFromParcel = this.wa.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }
}
