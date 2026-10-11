package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class FieldMappingDictionary extends AbstractSafeParcelable {
    public static final zzc CREATOR = new zzc();
    private final int mVersionCode;
    private final HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> zP;
    private final ArrayList<Entry> zQ = null;
    private final String zR;

    public static class Entry extends AbstractSafeParcelable {
        public static final zzd CREATOR = new zzd();
        final String className;
        final int versionCode;
        final ArrayList<FieldMapPair> zS;

        Entry(int i, String str, ArrayList<FieldMapPair> arrayList) {
            this.versionCode = i;
            this.className = str;
            this.zS = arrayList;
        }

        Entry(String str, Map<String, FastJsonResponse.Field<?, ?>> map) {
            this.versionCode = 1;
            this.className = str;
            this.zS = zzat(map);
        }

        private static ArrayList<FieldMapPair> zzat(Map<String, FastJsonResponse.Field<?, ?>> map) {
            if (map == null) {
                return null;
            }
            ArrayList<FieldMapPair> arrayList = new ArrayList<>();
            for (String str : map.keySet()) {
                arrayList.add(new FieldMapPair(str, map.get(str)));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzd zzdVar = CREATOR;
            zzd.zza(this, parcel, i);
        }

        HashMap<String, FastJsonResponse.Field<?, ?>> zzauk() {
            HashMap<String, FastJsonResponse.Field<?, ?>> hashMap = new HashMap<>();
            int size = this.zS.size();
            for (int i = 0; i < size; i++) {
                FieldMapPair fieldMapPair = this.zS.get(i);
                hashMap.put(fieldMapPair.zzcb, fieldMapPair.zT);
            }
            return hashMap;
        }
    }

    public static class FieldMapPair extends AbstractSafeParcelable {
        public static final zzb CREATOR = new zzb();
        final int versionCode;
        final FastJsonResponse.Field<?, ?> zT;
        final String zzcb;

        FieldMapPair(int i, String str, FastJsonResponse.Field<?, ?> field) {
            this.versionCode = i;
            this.zzcb = str;
            this.zT = field;
        }

        FieldMapPair(String str, FastJsonResponse.Field<?, ?> field) {
            this.versionCode = 1;
            this.zzcb = str;
            this.zT = field;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzb zzbVar = CREATOR;
            zzb.zza(this, parcel, i);
        }
    }

    FieldMappingDictionary(int i, ArrayList<Entry> arrayList, String str) {
        this.mVersionCode = i;
        this.zP = zzi(arrayList);
        this.zR = (String) zzab.zzy(str);
        zzauh();
    }

    private static HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> zzi(ArrayList<Entry> arrayList) {
        HashMap<String, Map<String, FastJsonResponse.Field<?, ?>>> hashMap = new HashMap<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Entry entry = arrayList.get(i);
            hashMap.put(entry.className, entry.zzauk());
        }
        return hashMap;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.zP.keySet()) {
            sb.append(str).append(":\n");
            Map<String, FastJsonResponse.Field<?, ?>> map = this.zP.get(str);
            for (String str2 : map.keySet()) {
                sb.append("  ").append(str2).append(": ");
                sb.append(map.get(str2));
            }
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc zzcVar = CREATOR;
        zzc.zza(this, parcel, i);
    }

    public void zzauh() {
        Iterator<String> it = this.zP.keySet().iterator();
        while (it.hasNext()) {
            Map<String, FastJsonResponse.Field<?, ?>> map = this.zP.get(it.next());
            Iterator<String> it2 = map.keySet().iterator();
            while (it2.hasNext()) {
                map.get(it2.next()).zza(this);
            }
        }
    }

    ArrayList<Entry> zzaui() {
        ArrayList<Entry> arrayList = new ArrayList<>();
        for (String str : this.zP.keySet()) {
            arrayList.add(new Entry(str, this.zP.get(str)));
        }
        return arrayList;
    }

    public String zzauj() {
        return this.zR;
    }

    public Map<String, FastJsonResponse.Field<?, ?>> zzhw(String str) {
        return this.zP.get(str);
    }
}
