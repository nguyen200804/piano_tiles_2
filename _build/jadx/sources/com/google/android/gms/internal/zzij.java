package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.internal.zzii;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzij implements zzii.zza<com.google.android.gms.ads.internal.formats.zzd> {
    private final boolean zzcaa;
    private final boolean zzcab;

    public zzij(boolean z, boolean z2) {
        this.zzcaa = z;
        this.zzcab = z2;
    }

    @Override // com.google.android.gms.internal.zzii.zza
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public com.google.android.gms.ads.internal.formats.zzd zza(zzii zziiVar, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException {
        List<zzky<com.google.android.gms.ads.internal.formats.zzc>> zza = zziiVar.zza(jSONObject, "images", true, this.zzcaa, this.zzcab);
        zzky<com.google.android.gms.ads.internal.formats.zzc> zza2 = zziiVar.zza(jSONObject, "app_icon", true, this.zzcaa);
        zzky<com.google.android.gms.ads.internal.formats.zza> zzg = zziiVar.zzg(jSONObject);
        ArrayList arrayList = new ArrayList();
        Iterator<zzky<com.google.android.gms.ads.internal.formats.zzc>> it = zza.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().get());
        }
        return new com.google.android.gms.ads.internal.formats.zzd(jSONObject.getString("headline"), arrayList, jSONObject.getString("body"), zza2.get(), jSONObject.getString("call_to_action"), jSONObject.optDouble("rating", -1.0d), jSONObject.optString("store"), jSONObject.optString(InAppPurchaseMetaData.KEY_PRICE), zzg.get(), new Bundle());
    }
}
