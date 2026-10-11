package com.mopub.dg.b;

import android.content.Context;
import android.os.Build;
import com.mopub.dg.adapi.AdData;
import com.mopub.dg.c.g;
import com.mopub.dg.d.h;
import com.mopub.dg.d.n;
import com.mopub.dg.d.o;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a extends b {
    public a(Context context) {
        super(context);
    }

    @Override // com.mopub.dg.b.b
    public final String a() {
        String str = null;
        StringBuffer stringBuffer = new StringBuffer("http://adr.krmobi.com/search.php");
        stringBuffer.append("?");
        stringBuffer.append("sid=" + b(this.f4254b));
        stringBuffer.append("&aid=" + b(this.f4253a));
        stringBuffer.append("&udid=" + b(h.a(this.d).b()));
        stringBuffer.append("&gaid=" + b(h.a(this.d).a()));
        stringBuffer.append("&os=1");
        stringBuffer.append("&osv=" + b(Build.VERSION.RELEASE));
        stringBuffer.append("&dt=0");
        StringBuilder sb = new StringBuilder("&dml=");
        new Build();
        stringBuffer.append(sb.append(b(Build.MODEL)).toString());
        stringBuffer.append("&dpd=" + b(Build.PRODUCT));
        stringBuffer.append("&so=0");
        StringBuilder sb2 = new StringBuilder("&mcc=");
        String a2 = o.a(this.d);
        stringBuffer.append(sb2.append(b((a2 == null || a2.length() <= 6) ? null : a2.substring(0, 3))).toString());
        StringBuilder sb3 = new StringBuilder("&mnc=");
        String a3 = o.a(this.d);
        if (a3 != null && a3.length() > 6) {
            str = a3.substring(4, 9);
        }
        stringBuffer.append(sb3.append(b(str)).toString());
        stringBuffer.append("&withapk=1");
        stringBuffer.append("&adnum=" + g.l);
        stringBuffer.append("&ngp=1");
        if (this.c != null && !this.c.equals("")) {
            stringBuffer.append("&pkg=" + this.c);
        }
        if (this.d != null) {
            stringBuffer.append("&pk=");
            stringBuffer.append(this.d.getPackageName());
        }
        return stringBuffer.toString();
    }

    @Override // com.mopub.dg.b.b
    public final ArrayList a(String str) {
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            try {
                JSONArray jSONArray = new JSONObject(str).getJSONArray("ads");
                if (jSONArray != null && jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        try {
                            JSONObject jSONObject = jSONArray.getJSONObject(i);
                            String string = jSONObject.getString("app_package_name");
                            String string2 = jSONObject.getString("ad_id");
                            String string3 = jSONObject.getString("click_track_url");
                            String string4 = jSONObject.getString("click_record_url");
                            String string5 = jSONObject.getString("title");
                            String string6 = jSONObject.getString("icon_image_url");
                            String string7 = jSONObject.getString("main_content");
                            String string8 = jSONObject.getString("main_image_url");
                            boolean z = jSONObject.has("preload") ? jSONObject.getInt("preload") == 1 : false;
                            if (jSONObject.has("dl_flag")) {
                                jSONObject.getString("dl_flag");
                            }
                            if (jSONObject.has("apk_downloadurl")) {
                                String string9 = jSONObject.getString("apk_downloadurl");
                                if (!string9.contains("http://")) {
                                    String str2 = "http://" + string9;
                                }
                            }
                            AdData adData = new AdData();
                            adData.setPackageName(string);
                            adData.setAdID(string2);
                            adData.setTitle(string5);
                            adData.setIconUrl(string6);
                            adData.setImageUrl(string8);
                            adData.setContent(string7);
                            adData.setClickRecordUrl(string4);
                            adData.setClickTrackUrl(string3);
                            adData.setPreload(z);
                            Context context = this.d;
                            String packageName = adData.getPackageName();
                            String a2 = com.mopub.dg.d.a.a(context);
                            if ((com.mopub.dg.d.a.a(packageName) || com.mopub.dg.d.a.a(a2)) ? true : !packageName.equals(a2)) {
                                arrayList.add(adData);
                            }
                        } catch (Exception e) {
                            n.a(e);
                        }
                    }
                    return arrayList;
                }
            } catch (Exception e2) {
                n.a(e2);
            }
        } else {
            n.b("get ad data is null");
        }
        return arrayList;
    }
}
