package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Configuration extends AbstractSafeParcelable implements Comparable<Configuration> {
    public static final Parcelable.Creator<Configuration> CREATOR = new zza();
    public final int arh;
    public final Flag[] ari;
    public final String[] arj;
    public final Map<String, Flag> ark = new TreeMap();
    final int mVersionCode;

    Configuration(int i, int i2, Flag[] flagArr, String[] strArr) {
        this.mVersionCode = i;
        this.arh = i2;
        this.ari = flagArr;
        for (Flag flag : flagArr) {
            this.ark.put(flag.name, flag);
        }
        this.arj = strArr;
        if (this.arj != null) {
            Arrays.sort(this.arj);
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Configuration)) {
            return false;
        }
        Configuration configuration = (Configuration) obj;
        return this.mVersionCode == configuration.mVersionCode && this.arh == configuration.arh && zzaa.equal(this.ark, configuration.ark) && Arrays.equals(this.arj, configuration.arj);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Configuration(");
        sb.append(this.mVersionCode);
        sb.append(", ");
        sb.append(this.arh);
        sb.append(", ");
        sb.append("(");
        Iterator<Flag> it = this.ark.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(", ");
        }
        sb.append(")");
        sb.append(", ");
        sb.append("(");
        if (this.arj != null) {
            for (String str : this.arj) {
                sb.append(str);
                sb.append(", ");
            }
        } else {
            sb.append("null");
        }
        sb.append(")");
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    @Override // java.lang.Comparable
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public int compareTo(Configuration configuration) {
        return this.arh - configuration.arh;
    }
}
