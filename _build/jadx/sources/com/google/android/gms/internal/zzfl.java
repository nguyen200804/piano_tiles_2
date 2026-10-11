package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class zzfl {
    private final Object[] mParams;

    zzfl(AdRequestParcel adRequestParcel, String str, int i) {
        this.mParams = zza(adRequestParcel, str, i);
    }

    private static Object[] zza(AdRequestParcel adRequestParcel, String str, int i) {
        HashSet hashSet = new HashSet(Arrays.asList(zzdc.zzbag.get().split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(adRequestParcel.zzatm));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(zzd(adRequestParcel.extras));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(adRequestParcel.zzatn));
        }
        if (hashSet.contains("keywords")) {
            if (adRequestParcel.zzato != null) {
                arrayList.add(adRequestParcel.zzato.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(adRequestParcel.zzatp));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(adRequestParcel.zzatq));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(adRequestParcel.zzatr));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(adRequestParcel.zzats);
        }
        if (hashSet.contains("location")) {
            if (adRequestParcel.zzatu != null) {
                arrayList.add(adRequestParcel.zzatu.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(adRequestParcel.zzatv);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(zzd(adRequestParcel.zzatw));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(zzd(adRequestParcel.zzatx));
        }
        if (hashSet.contains("categoryExclusions")) {
            if (adRequestParcel.zzaty != null) {
                arrayList.add(adRequestParcel.zzaty.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(adRequestParcel.zzatz);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(adRequestParcel.zzaua);
        }
        return arrayList.toArray();
    }

    private static String zzd(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Collections.sort(new ArrayList(bundle.keySet()));
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            Object obj = bundle.get(it.next());
            sb.append(obj == null ? "null" : obj instanceof Bundle ? zzd((Bundle) obj) : obj.toString());
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (obj instanceof zzfl) {
            return Arrays.equals(this.mParams, ((zzfl) obj).mParams);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.mParams);
    }

    public String toString() {
        String valueOf = String.valueOf(Arrays.toString(this.mParams));
        return new StringBuilder(String.valueOf(valueOf).length() + 24).append("[InterstitialAdPoolKey ").append(valueOf).append("]").toString();
    }
}
