package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.util.SparseArray;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class StringToIntConverter extends AbstractSafeParcelable implements FastJsonResponse.zza<String, Integer> {
    public static final zzb CREATOR = new zzb();
    private final int mVersionCode;
    private final HashMap<String, Integer> zA;
    private final SparseArray<String> zB;
    private final ArrayList<Entry> zC;

    public static final class Entry extends AbstractSafeParcelable {
        public static final zzc CREATOR = new zzc();
        final int versionCode;
        final String zD;
        final int zE;

        Entry(int i, String str, int i2) {
            this.versionCode = i;
            this.zD = str;
            this.zE = i2;
        }

        Entry(String str, int i) {
            this.versionCode = 1;
            this.zD = str;
            this.zE = i;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzc zzcVar = CREATOR;
            zzc.zza(this, parcel, i);
        }
    }

    public StringToIntConverter() {
        this.mVersionCode = 1;
        this.zA = new HashMap<>();
        this.zB = new SparseArray<>();
        this.zC = null;
    }

    StringToIntConverter(int i, ArrayList<Entry> arrayList) {
        this.mVersionCode = i;
        this.zA = new HashMap<>();
        this.zB = new SparseArray<>();
        this.zC = null;
        zzh(arrayList);
    }

    private void zzh(ArrayList<Entry> arrayList) {
        Iterator<Entry> it = arrayList.iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            zzi(next.zD, next.zE);
        }
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb zzbVar = CREATOR;
        zzb.zza(this, parcel, i);
    }

    ArrayList<Entry> zzats() {
        ArrayList<Entry> arrayList = new ArrayList<>();
        for (String str : this.zA.keySet()) {
            arrayList.add(new Entry(str, this.zA.get(str).intValue()));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.zza
    public int zzatt() {
        return 7;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.zza
    public int zzatu() {
        return 0;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse.zza
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public String convertBack(Integer num) {
        String str = this.zB.get(num.intValue());
        return (str == null && this.zA.containsKey("gms_unknown")) ? "gms_unknown" : str;
    }

    public StringToIntConverter zzi(String str, int i) {
        this.zA.put(str, Integer.valueOf(i));
        this.zB.put(i, str);
        return this;
    }
}
