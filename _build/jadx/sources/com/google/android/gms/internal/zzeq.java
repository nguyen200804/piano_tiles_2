package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.io.BufferedOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzeq implements zzep {
    private final Context mContext;
    private final VersionInfoParcel zzalo;

    @zzin
    static class zza {
        private final String mValue;
        private final String zzaxp;

        public zza(String str, String str2) {
            this.zzaxp = str;
            this.mValue = str2;
        }

        public String getKey() {
            return this.zzaxp;
        }

        public String getValue() {
            return this.mValue;
        }
    }

    @zzin
    static class zzb {
        private final String zzbii;
        private final URL zzbij;
        private final ArrayList<zza> zzbik;
        private final String zzbil;

        public zzb(String str, URL url, ArrayList<zza> arrayList, String str2) {
            this.zzbii = str;
            this.zzbij = url;
            if (arrayList == null) {
                this.zzbik = new ArrayList<>();
            } else {
                this.zzbik = arrayList;
            }
            this.zzbil = str2;
        }

        public String zzle() {
            return this.zzbii;
        }

        public URL zzlf() {
            return this.zzbij;
        }

        public ArrayList<zza> zzlg() {
            return this.zzbik;
        }

        public String zzlh() {
            return this.zzbil;
        }
    }

    @zzin
    class zzc {
        private final zzd zzbim;
        private final boolean zzbin;
        private final String zzbio;

        public zzc(boolean z, zzd zzdVar, String str) {
            this.zzbin = z;
            this.zzbim = zzdVar;
            this.zzbio = str;
        }

        public String getReason() {
            return this.zzbio;
        }

        public boolean isSuccess() {
            return this.zzbin;
        }

        public zzd zzli() {
            return this.zzbim;
        }
    }

    @zzin
    static class zzd {
        private final String zzbfi;
        private final String zzbii;
        private final int zzbip;
        private final List<zza> zzbiq;

        public zzd(String str, int i, List<zza> list, String str2) {
            this.zzbii = str;
            this.zzbip = i;
            if (list == null) {
                this.zzbiq = new ArrayList();
            } else {
                this.zzbiq = list;
            }
            this.zzbfi = str2;
        }

        public String getBody() {
            return this.zzbfi;
        }

        public int getResponseCode() {
            return this.zzbip;
        }

        public String zzle() {
            return this.zzbii;
        }

        public Iterable<zza> zzlj() {
            return this.zzbiq;
        }
    }

    public zzeq(Context context, VersionInfoParcel versionInfoParcel) {
        this.mContext = context;
        this.zzalo = versionInfoParcel;
    }

    protected zzc zza(zzb zzbVar) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) zzbVar.zzlf().openConnection();
            com.google.android.gms.ads.internal.zzu.zzfq().zza(this.mContext, this.zzalo.zzcs, false, httpURLConnection);
            Iterator<zza> it = zzbVar.zzlg().iterator();
            while (it.hasNext()) {
                zza next = it.next();
                httpURLConnection.addRequestProperty(next.getKey(), next.getValue());
            }
            if (!TextUtils.isEmpty(zzbVar.zzlh())) {
                httpURLConnection.setDoOutput(true);
                byte[] bytes = zzbVar.zzlh().getBytes();
                httpURLConnection.setFixedLengthStreamingMode(bytes.length);
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
                bufferedOutputStream.write(bytes);
                bufferedOutputStream.close();
            }
            ArrayList arrayList = new ArrayList();
            if (httpURLConnection.getHeaderFields() != null) {
                for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
                    Iterator<String> it2 = entry.getValue().iterator();
                    while (it2.hasNext()) {
                        arrayList.add(new zza(entry.getKey(), it2.next()));
                    }
                }
            }
            return new zzc(true, new zzd(zzbVar.zzle(), httpURLConnection.getResponseCode(), arrayList, com.google.android.gms.ads.internal.zzu.zzfq().zza(new InputStreamReader(httpURLConnection.getInputStream()))), null);
        } catch (Exception e) {
            return new zzc(false, null, e.toString());
        }
    }

    protected JSONObject zza(zzd zzdVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("http_request_id", zzdVar.zzle());
            if (zzdVar.getBody() != null) {
                jSONObject.put("body", zzdVar.getBody());
            }
            JSONArray jSONArray = new JSONArray();
            for (zza zzaVar : zzdVar.zzlj()) {
                jSONArray.put(new JSONObject().put("key", zzaVar.getKey()).put("value", zzaVar.getValue()));
            }
            jSONObject.put("headers", jSONArray);
            jSONObject.put("response_code", zzdVar.getResponseCode());
        } catch (JSONException e) {
            zzkd.zzb("Error constructing JSON for http response.", e);
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.zzep
    public void zza(final zzlh zzlhVar, final Map<String, String> map) {
        zzkg.zza(new Runnable() { // from class: com.google.android.gms.internal.zzeq.1
            @Override // java.lang.Runnable
            public void run() {
                zzkd.zzcv("Received Http request.");
                final JSONObject zzav = zzeq.this.zzav((String) map.get("http_request"));
                if (zzav == null) {
                    zzkd.e("Response should not be null.");
                } else {
                    zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.internal.zzeq.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            zzlhVar.zzb("fetchHttpRequestCompleted", zzav);
                            zzkd.zzcv("Dispatched http response.");
                        }
                    });
                }
            }
        });
    }

    public JSONObject zzav(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONObject jSONObject2 = new JSONObject();
            String str2 = "";
            try {
                str2 = jSONObject.optString("http_request_id");
                zzc zza2 = zza(zzc(jSONObject));
                if (zza2.isSuccess()) {
                    jSONObject2.put("response", zza(zza2.zzli()));
                    jSONObject2.put("success", true);
                } else {
                    jSONObject2.put("response", new JSONObject().put("http_request_id", str2));
                    jSONObject2.put("success", false);
                    jSONObject2.put("reason", zza2.getReason());
                }
                return jSONObject2;
            } catch (Exception e) {
                try {
                    jSONObject2.put("response", new JSONObject().put("http_request_id", str2));
                    jSONObject2.put("success", false);
                    jSONObject2.put("reason", e.toString());
                    return jSONObject2;
                } catch (JSONException e2) {
                    return jSONObject2;
                }
            }
        } catch (JSONException e3) {
            zzkd.e("The request is not a valid JSON.");
            try {
                return new JSONObject().put("success", false);
            } catch (JSONException e4) {
                return new JSONObject();
            }
        }
    }

    protected zzb zzc(JSONObject jSONObject) {
        URL url;
        String optString = jSONObject.optString("http_request_id");
        String optString2 = jSONObject.optString("url");
        String optString3 = jSONObject.optString("post_body", null);
        try {
            url = new URL(optString2);
        } catch (MalformedURLException e) {
            zzkd.zzb("Error constructing http request.", e);
            url = null;
        }
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = jSONObject.optJSONArray("headers");
        if (optJSONArray == null) {
            optJSONArray = new JSONArray();
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                arrayList.add(new zza(optJSONObject.optString("key"), optJSONObject.optString("value")));
            }
        }
        return new zzb(optString, url, arrayList, optString3);
    }
}
