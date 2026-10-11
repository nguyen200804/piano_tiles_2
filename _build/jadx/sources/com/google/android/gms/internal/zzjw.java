package com.google.android.gms.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.mopub.common.AdType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzjw {
    private final long zzcjc;
    private String zzcjf;
    private String zzcjg;
    private final List<String> zzcjd = new ArrayList();
    private final Map<String, zzb> zzcje = new HashMap();
    private boolean zzcjh = false;

    class zza {
        private final List<String> zzcji;
        private final Bundle zzcjj;

        public zza(List<String> list, Bundle bundle) {
            this.zzcji = list;
            this.zzcjj = bundle;
        }
    }

    class zzb {
        final List<zza> zzcjl = new ArrayList();

        zzb() {
        }

        public void zza(zza zzaVar) {
            this.zzcjl.add(zzaVar);
        }
    }

    public zzjw(String str, long j) {
        this.zzcjg = str;
        this.zzcjc = j;
        zzcl(str);
    }

    private void zzcl(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt("status", -1) != 1) {
                this.zzcjh = false;
                zzkd.zzcx("App settings could not be fetched successfully.");
                return;
            }
            this.zzcjh = true;
            this.zzcjf = jSONObject.optString("app_id");
            JSONArray optJSONArray = jSONObject.optJSONArray("ad_unit_id_settings");
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    zzi(optJSONArray.getJSONObject(i));
                }
            }
        } catch (JSONException e) {
            zzkd.zzd("Exception occurred while processing app setting json", e);
            com.google.android.gms.ads.internal.zzu.zzft().zzb((Throwable) e, true);
        }
    }

    private void zzi(JSONObject jSONObject) throws JSONException {
        JSONObject optJSONObject;
        JSONArray optJSONArray;
        JSONObject jSONObject2;
        JSONArray optJSONArray2;
        String optString = jSONObject.optString("format");
        String optString2 = jSONObject.optString("ad_unit_id");
        if (TextUtils.isEmpty(optString) || TextUtils.isEmpty(optString2)) {
            return;
        }
        if (AdType.INTERSTITIAL.equalsIgnoreCase(optString)) {
            this.zzcjd.add(optString2);
            return;
        }
        if (!"rewarded".equalsIgnoreCase(optString) || (optJSONObject = jSONObject.optJSONObject("mediation_config")) == null || (optJSONArray = optJSONObject.optJSONArray("ad_networks")) == null) {
            return;
        }
        for (int i = 0; i < optJSONArray.length() && (optJSONArray2 = (jSONObject2 = optJSONArray.getJSONObject(i)).optJSONArray("adapters")) != null; i++) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < optJSONArray2.length(); i2++) {
                arrayList.add(optJSONArray2.getString(i2));
            }
            JSONObject optJSONObject2 = jSONObject2.optJSONObject("data");
            if (optJSONObject2 == null) {
                return;
            }
            Bundle bundle = new Bundle();
            Iterator<String> keys = optJSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                bundle.putString(next, optJSONObject2.getString(next));
            }
            zza zzaVar = new zza(arrayList, bundle);
            zzb zzbVar = this.zzcje.containsKey(optString2) ? this.zzcje.get(optString2) : new zzb();
            zzbVar.zza(zzaVar);
            this.zzcje.put(optString2, zzbVar);
        }
    }

    public long zzse() {
        return this.zzcjc;
    }

    public boolean zzsf() {
        return this.zzcjh;
    }

    public String zzsg() {
        return this.zzcjg;
    }

    public String zzsh() {
        return this.zzcjf;
    }
}
