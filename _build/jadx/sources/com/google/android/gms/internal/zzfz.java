package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzfz {
    public final String zzbmu;
    public final String zzbmv;
    public final List<String> zzbmw;
    public final String zzbmx;
    public final String zzbmy;
    public final List<String> zzbmz;
    public final List<String> zzbna;
    public final List<String> zzbnb;
    public final String zzbnc;
    public final List<String> zzbnd;
    public final List<String> zzbne;

    @Nullable
    public final String zzbnf;

    @Nullable
    public final String zzbng;
    public final String zzbnh;

    @Nullable
    public final List<String> zzbni;
    public final String zzbnj;

    public zzfz(String str, String str2, List<String> list, String str3, String str4, List<String> list2, List<String> list3, String str5, String str6, List<String> list4, List<String> list5, String str7, String str8, String str9, List<String> list6, String str10, List<String> list7) {
        this.zzbmu = str;
        this.zzbmv = str2;
        this.zzbmw = list;
        this.zzbmx = str3;
        this.zzbmy = str4;
        this.zzbmz = list2;
        this.zzbna = list3;
        this.zzbnc = str5;
        this.zzbnd = list4;
        this.zzbne = list5;
        this.zzbnf = str7;
        this.zzbng = str8;
        this.zzbnh = str9;
        this.zzbni = list6;
        this.zzbnj = str10;
        this.zzbnb = list7;
    }

    public zzfz(JSONObject jSONObject) throws JSONException {
        this.zzbmv = jSONObject.getString(FacebookAdapter.KEY_ID);
        JSONArray jSONArray = jSONObject.getJSONArray("adapters");
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        this.zzbmw = Collections.unmodifiableList(arrayList);
        this.zzbmx = jSONObject.optString("allocation_id", null);
        this.zzbmz = com.google.android.gms.ads.internal.zzu.zzgf().zza(jSONObject, "clickurl");
        this.zzbna = com.google.android.gms.ads.internal.zzu.zzgf().zza(jSONObject, "imp_urls");
        this.zzbnb = com.google.android.gms.ads.internal.zzu.zzgf().zza(jSONObject, "fill_urls");
        this.zzbnd = com.google.android.gms.ads.internal.zzu.zzgf().zza(jSONObject, "video_start_urls");
        this.zzbne = com.google.android.gms.ads.internal.zzu.zzgf().zza(jSONObject, "video_complete_urls");
        JSONObject optJSONObject = jSONObject.optJSONObject("ad");
        this.zzbmu = optJSONObject != null ? optJSONObject.toString() : null;
        JSONObject optJSONObject2 = jSONObject.optJSONObject("data");
        this.zzbnc = optJSONObject2 != null ? optJSONObject2.toString() : null;
        this.zzbmy = optJSONObject2 != null ? optJSONObject2.optString("class_name") : null;
        this.zzbnf = jSONObject.optString("html_template", null);
        this.zzbng = jSONObject.optString("ad_base_url", null);
        JSONObject optJSONObject3 = jSONObject.optJSONObject("assets");
        this.zzbnh = optJSONObject3 != null ? optJSONObject3.toString() : null;
        this.zzbni = com.google.android.gms.ads.internal.zzu.zzgf().zza(jSONObject, "template_ids");
        JSONObject optJSONObject4 = jSONObject.optJSONObject("ad_loader_options");
        this.zzbnj = optJSONObject4 != null ? optJSONObject4.toString() : null;
    }
}
