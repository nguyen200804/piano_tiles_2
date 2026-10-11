package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzeu implements zzep {
    final HashMap<String, zzkv<JSONObject>> zzbis = new HashMap<>();

    @Override // com.google.android.gms.internal.zzep
    public void zza(zzlh zzlhVar, Map<String, String> map) {
        zzi(map.get("request_id"), map.get("fetched_ad"));
    }

    public Future<JSONObject> zzaw(String str) {
        zzkv<JSONObject> zzkvVar = new zzkv<>();
        this.zzbis.put(str, zzkvVar);
        return zzkvVar;
    }

    public void zzax(String str) {
        zzkv<JSONObject> zzkvVar = this.zzbis.get(str);
        if (zzkvVar == null) {
            zzkd.e("Could not find the ad request for the corresponding ad response.");
            return;
        }
        if (!zzkvVar.isDone()) {
            zzkvVar.cancel(true);
        }
        this.zzbis.remove(str);
    }

    public void zzi(String str, String str2) {
        zzkd.zzcv("Received ad from the cache.");
        zzkv<JSONObject> zzkvVar = this.zzbis.get(str);
        if (zzkvVar == null) {
            zzkd.e("Could not find the ad request for the corresponding ad response.");
            return;
        }
        try {
            zzkvVar.zzh(new JSONObject(str2));
        } catch (JSONException e) {
            zzkd.zzb("Failed constructing JSON object from value passed from javascript", e);
            zzkvVar.zzh(null);
        } finally {
            this.zzbis.remove(str);
        }
    }
}
