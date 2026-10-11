package com.example.luckywheel.b;

import android.content.Context;
import android.util.Log;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class a implements f {

    /* renamed from: a, reason: collision with root package name */
    private static a f2311a;

    /* renamed from: b, reason: collision with root package name */
    private Map<String, Integer> f2312b = new HashMap();
    private Map<String, String> c = new HashMap();
    private b d;
    private boolean e;

    private a() {
        b();
    }

    public static a a() {
        if (f2311a == null) {
            synchronized (a.class) {
                if (f2311a == null) {
                    f2311a = new a();
                }
            }
        }
        return f2311a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONArray jSONArray) {
        Log.d("liufan", "updateConfigMapFromJson: jsonArray = " + jSONArray);
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString(VastExtensionXmlManager.TYPE);
                String string2 = jSONObject.getString(FacebookAdapter.KEY_ID);
                int i2 = jSONObject.getInt("priority");
                this.f2312b.put(string2, Integer.valueOf(i2));
                this.c.put(string, string2);
                Log.d("liufan", "type = " + string);
                Log.d("liufan", "adId = " + string2);
                Log.d("liufan", "priority = " + i2);
            } catch (JSONException e) {
                e.printStackTrace();
                return;
            }
        }
    }

    private void b() {
        try {
            Log.d("liufan", "default id Config = [{\"type\": \"admob_interstitial\",\"id\": \"ca-app-pub-7551687826419156/8364214339\",\"priority\":4},{\"type\": \"adx_interstitial\",\"id\": \"ca-mb-app-pub-6281674756316900/8148833598/1238818601\",\"priority\":3},{\"type\": \"facebook_interstitial\",\"id\": \"XXX\",\"priority\":2 },{\"type\": \"admob_native\",\"id\": \"ca-app-pub-7551687826419156/3023423592\",\"priority\":1}]");
            a(new JSONArray("[{\"type\": \"admob_interstitial\",\"id\": \"ca-app-pub-7551687826419156/8364214339\",\"priority\":4},{\"type\": \"adx_interstitial\",\"id\": \"ca-mb-app-pub-6281674756316900/8148833598/1238818601\",\"priority\":3},{\"type\": \"facebook_interstitial\",\"id\": \"XXX\",\"priority\":2 },{\"type\": \"admob_native\",\"id\": \"ca-app-pub-7551687826419156/3023423592\",\"priority\":1}]"));
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private void b(Context context) {
        if (this.e) {
            return;
        }
        if (this.d == null) {
            this.d = new b(context, new n(this));
        }
        this.d.f();
    }

    public String a(String str) {
        return this.c.get(str);
    }

    @Override // com.example.luckywheel.b.f
    public void a(Context context) {
        b(context);
    }

    @Override // com.example.luckywheel.b.f
    public void a(Context context, String str) {
        b(context);
        com.example.luckywheel.ad.e.c().b(context);
    }

    public int b(String str) {
        if (this.f2312b.containsKey(str)) {
            return this.f2312b.get(str).intValue();
        }
        return 0;
    }
}
