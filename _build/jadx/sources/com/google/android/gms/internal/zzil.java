package com.google.android.gms.internal;

import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.internal.zzii;
import com.mopub.mobileads.VastExtensionXmlManager;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzil implements zzii.zza<com.google.android.gms.ads.internal.formats.zzf> {
    private final boolean zzcaa;

    public zzil(boolean z) {
        this.zzcaa = z;
    }

    private void zza(zzii zziiVar, JSONObject jSONObject, SimpleArrayMap<String, Future<com.google.android.gms.ads.internal.formats.zzc>> simpleArrayMap) throws JSONException {
        simpleArrayMap.put(jSONObject.getString(MediationMetaData.KEY_NAME), zziiVar.zza(jSONObject, "image_value", this.zzcaa));
    }

    private void zza(JSONObject jSONObject, SimpleArrayMap<String, String> simpleArrayMap) throws JSONException {
        simpleArrayMap.put(jSONObject.getString(MediationMetaData.KEY_NAME), jSONObject.getString("string_value"));
    }

    private <K, V> SimpleArrayMap<K, V> zzc(SimpleArrayMap<K, Future<V>> simpleArrayMap) throws InterruptedException, ExecutionException {
        SimpleArrayMap<K, V> simpleArrayMap2 = new SimpleArrayMap<>();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= simpleArrayMap.size()) {
                return simpleArrayMap2;
            }
            simpleArrayMap2.put(simpleArrayMap.keyAt(i2), simpleArrayMap.valueAt(i2).get());
            i = i2 + 1;
        }
    }

    @Override // com.google.android.gms.internal.zzii.zza
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public com.google.android.gms.ads.internal.formats.zzf zza(zzii zziiVar, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        SimpleArrayMap<String, Future<com.google.android.gms.ads.internal.formats.zzc>> simpleArrayMap = new SimpleArrayMap<>();
        SimpleArrayMap<String, String> simpleArrayMap2 = new SimpleArrayMap<>();
        zzky<com.google.android.gms.ads.internal.formats.zza> zzg = zziiVar.zzg(jSONObject);
        JSONArray jSONArray = jSONObject.getJSONArray("custom_assets");
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            String string = jSONObject2.getString(VastExtensionXmlManager.TYPE);
            if ("string".equals(string)) {
                zza(jSONObject2, simpleArrayMap2);
            } else if ("image".equals(string)) {
                zza(zziiVar, jSONObject2, simpleArrayMap);
            } else {
                String valueOf = String.valueOf(string);
                zzkd.zzcx(valueOf.length() != 0 ? "Unknown custom asset type: ".concat(valueOf) : new String("Unknown custom asset type: "));
            }
        }
        return new com.google.android.gms.ads.internal.formats.zzf(jSONObject.getString("custom_template_id"), zzc(simpleArrayMap), simpleArrayMap2, zzg.get());
    }
}
