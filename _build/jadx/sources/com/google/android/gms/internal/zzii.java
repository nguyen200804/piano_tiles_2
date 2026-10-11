package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.formats.zzh;
import com.google.android.gms.internal.zzih;
import com.google.android.gms.internal.zzju;
import com.google.android.gms.internal.zzkn;
import com.google.android.gms.internal.zzkx;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzii implements Callable<zzju> {
    private static final long zzbyt = TimeUnit.SECONDS.toMillis(60);
    private final Context mContext;
    private final Object zzail = new Object();
    private final zzih zzbgb;
    private final zzas zzbgd;
    private final zzju.zza zzbxr;
    private int zzbyi;
    private final zzkn zzbzc;
    private final com.google.android.gms.ads.internal.zzq zzbzd;
    private boolean zzbze;
    private List<String> zzbzf;
    private JSONObject zzbzg;

    public interface zza<T extends zzh.zza> {
        T zza(zzii zziiVar, JSONObject jSONObject) throws JSONException, InterruptedException, ExecutionException;
    }

    class zzb {
        public zzep zzbzz;

        zzb() {
        }
    }

    public zzii(Context context, com.google.android.gms.ads.internal.zzq zzqVar, zzkn zzknVar, zzas zzasVar, zzju.zza zzaVar) {
        this.mContext = context;
        this.zzbzd = zzqVar;
        this.zzbzc = zzknVar;
        this.zzbxr = zzaVar;
        this.zzbgd = zzasVar;
        this.zzbgb = zza(context, zzaVar, zzqVar, zzasVar);
        this.zzbgb.zzqg();
        this.zzbze = false;
        this.zzbyi = -2;
        this.zzbzf = null;
    }

    private zzh.zza zza(zza zzaVar, JSONObject jSONObject, String str) throws ExecutionException, InterruptedException, JSONException {
        if (zzqs()) {
            return null;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("tracking_urls_and_actions");
        String[] zzc = zzc(jSONObject2, "impression_tracking_urls");
        this.zzbzf = zzc == null ? null : Arrays.asList(zzc);
        this.zzbzg = jSONObject2.optJSONObject("active_view");
        zzh.zza zza2 = zzaVar.zza(this, jSONObject);
        if (zza2 == null) {
            zzkd.e("Failed to retrieve ad assets.");
            return null;
        }
        zza2.zzb(new com.google.android.gms.ads.internal.formats.zzi(this.mContext, this.zzbzd, this.zzbgb, this.zzbgd, jSONObject, zza2, this.zzbxr.zzcip.zzaow, str));
        return zza2;
    }

    private zzky<com.google.android.gms.ads.internal.formats.zzc> zza(JSONObject jSONObject, final boolean z, boolean z2) throws JSONException {
        final String string = z ? jSONObject.getString("url") : jSONObject.optString("url");
        final double optDouble = jSONObject.optDouble("scale", 1.0d);
        if (!TextUtils.isEmpty(string)) {
            return z2 ? new zzkw(new com.google.android.gms.ads.internal.formats.zzc(null, Uri.parse(string), optDouble)) : this.zzbzc.zza(string, new zzkn.zza<com.google.android.gms.ads.internal.formats.zzc>() { // from class: com.google.android.gms.internal.zzii.6
                @Override // com.google.android.gms.internal.zzkn.zza
                /* renamed from: zzg, reason: merged with bridge method [inline-methods] */
                public com.google.android.gms.ads.internal.formats.zzc zzh(InputStream inputStream) {
                    byte[] bArr;
                    try {
                        bArr = com.google.android.gms.common.util.zzo.zzk(inputStream);
                    } catch (IOException e) {
                        bArr = null;
                    }
                    if (bArr == null) {
                        zzii.this.zza(2, z);
                        return null;
                    }
                    Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                    if (decodeByteArray == null) {
                        zzii.this.zza(2, z);
                        return null;
                    }
                    decodeByteArray.setDensity((int) (160.0d * optDouble));
                    return new com.google.android.gms.ads.internal.formats.zzc(new BitmapDrawable(Resources.getSystem(), decodeByteArray), Uri.parse(string), optDouble);
                }

                @Override // com.google.android.gms.internal.zzkn.zza
                /* renamed from: zzqt, reason: merged with bridge method [inline-methods] */
                public com.google.android.gms.ads.internal.formats.zzc zzqu() {
                    zzii.this.zza(2, z);
                    return null;
                }
            });
        }
        zza(0, z);
        return new zzkw(null);
    }

    private void zza(zzh.zza zzaVar) {
        if (zzaVar instanceof com.google.android.gms.ads.internal.formats.zzf) {
            final com.google.android.gms.ads.internal.formats.zzf zzfVar = (com.google.android.gms.ads.internal.formats.zzf) zzaVar;
            zzb zzbVar = new zzb();
            final zzep zzepVar = new zzep() { // from class: com.google.android.gms.internal.zzii.3
                @Override // com.google.android.gms.internal.zzep
                public void zza(zzlh zzlhVar, Map<String, String> map) {
                    zzii.this.zzb(zzfVar, map.get("asset"));
                }
            };
            zzbVar.zzbzz = zzepVar;
            this.zzbgb.zza(new zzih.zza() { // from class: com.google.android.gms.internal.zzii.4
                @Override // com.google.android.gms.internal.zzih.zza
                public void zze(zzft zzftVar) {
                    zzftVar.zza("/nativeAdCustomClick", zzepVar);
                }
            });
        }
    }

    private zzju zzb(zzh.zza zzaVar) {
        int i;
        synchronized (this.zzail) {
            i = this.zzbyi;
            if (zzaVar == null && this.zzbyi == -2) {
                i = 0;
            }
        }
        return new zzju(this.zzbxr.zzcip.zzcar, null, this.zzbxr.zzciq.zzbnm, i, this.zzbxr.zzciq.zzbnn, this.zzbzf, this.zzbxr.zzciq.orientation, this.zzbxr.zzciq.zzbns, this.zzbxr.zzcip.zzcau, false, null, null, null, null, null, 0L, this.zzbxr.zzapa, this.zzbxr.zzciq.zzcbx, this.zzbxr.zzcik, this.zzbxr.zzcil, this.zzbxr.zzciq.zzccd, this.zzbzg, i != -2 ? null : zzaVar, null, null, null, this.zzbxr.zzciq.zzccq, this.zzbxr.zzciq.zzccr, null, this.zzbxr.zzciq.zzbnp);
    }

    private Integer zzb(JSONObject jSONObject, String str) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(zzdz zzdzVar, String str) {
        try {
            zzed zzv = this.zzbzd.zzv(zzdzVar.getCustomTemplateId());
            if (zzv != null) {
                zzv.zza(zzdzVar, str);
            }
        } catch (RemoteException e) {
            zzkd.zzd(new StringBuilder(String.valueOf(str).length() + 40).append("Failed to call onCustomClick for asset ").append(str).append(".").toString(), e);
        }
    }

    private String[] zzc(JSONObject jSONObject, String str) throws JSONException {
        JSONArray optJSONArray = jSONObject.optJSONArray(str);
        if (optJSONArray == null) {
            return null;
        }
        String[] strArr = new String[optJSONArray.length()];
        for (int i = 0; i < optJSONArray.length(); i++) {
            strArr[i] = optJSONArray.getString(i);
        }
        return strArr;
    }

    private JSONObject zzcb(final String str) throws ExecutionException, InterruptedException, TimeoutException, JSONException {
        if (zzqs()) {
            return null;
        }
        final zzkv zzkvVar = new zzkv();
        final zzb zzbVar = new zzb();
        this.zzbgb.zza(new zzih.zza() { // from class: com.google.android.gms.internal.zzii.1
            @Override // com.google.android.gms.internal.zzih.zza
            public void zze(final zzft zzftVar) {
                zzep zzepVar = new zzep() { // from class: com.google.android.gms.internal.zzii.1.1
                    @Override // com.google.android.gms.internal.zzep
                    public void zza(zzlh zzlhVar, Map<String, String> map) {
                        zzftVar.zzb("/nativeAdPreProcess", zzbVar.zzbzz);
                        try {
                            String str2 = map.get("success");
                            if (!TextUtils.isEmpty(str2)) {
                                zzkvVar.zzh(new JSONObject(str2).getJSONArray("ads").getJSONObject(0));
                                return;
                            }
                        } catch (JSONException e) {
                            zzkd.zzb("Malformed native JSON response.", e);
                        }
                        zzii.this.zzan(0);
                        com.google.android.gms.common.internal.zzab.zza(zzii.this.zzqs(), "Unable to set the ad state error!");
                        zzkvVar.zzh(null);
                    }
                };
                zzbVar.zzbzz = zzepVar;
                zzftVar.zza("/nativeAdPreProcess", zzepVar);
                try {
                    JSONObject jSONObject = new JSONObject(zzii.this.zzbxr.zzciq.body);
                    jSONObject.put("ads_id", str);
                    zzftVar.zza("google.afma.nativeAds.preProcessJsonGmsg", jSONObject);
                } catch (JSONException e) {
                    zzkd.zzd("Exception occurred while invoking javascript", e);
                    zzkvVar.zzh(null);
                }
            }

            @Override // com.google.android.gms.internal.zzih.zza
            public void zzqq() {
                zzkvVar.zzh(null);
            }
        });
        return (JSONObject) zzkvVar.get(zzbyt, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<Drawable> zzh(List<com.google.android.gms.ads.internal.formats.zzc> list) throws RemoteException {
        ArrayList arrayList = new ArrayList();
        Iterator<com.google.android.gms.ads.internal.formats.zzc> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((Drawable) com.google.android.gms.dynamic.zze.zzad(it.next().zzkt()));
        }
        return arrayList;
    }

    zzih zza(Context context, zzju.zza zzaVar, com.google.android.gms.ads.internal.zzq zzqVar, zzas zzasVar) {
        return new zzih(context, zzaVar, zzqVar, zzasVar);
    }

    public zzky<com.google.android.gms.ads.internal.formats.zzc> zza(JSONObject jSONObject, String str, boolean z, boolean z2) throws JSONException {
        JSONObject jSONObject2 = z ? jSONObject.getJSONObject(str) : jSONObject.optJSONObject(str);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return zza(jSONObject2, z, z2);
    }

    public List<zzky<com.google.android.gms.ads.internal.formats.zzc>> zza(JSONObject jSONObject, String str, boolean z, boolean z2, boolean z3) throws JSONException {
        JSONArray jSONArray = z ? jSONObject.getJSONArray(str) : jSONObject.optJSONArray(str);
        ArrayList arrayList = new ArrayList();
        if (jSONArray == null || jSONArray.length() == 0) {
            zza(0, z);
            return arrayList;
        }
        int length = z3 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            if (jSONObject2 == null) {
                jSONObject2 = new JSONObject();
            }
            arrayList.add(zza(jSONObject2, z, z2));
        }
        return arrayList;
    }

    public Future<com.google.android.gms.ads.internal.formats.zzc> zza(JSONObject jSONObject, String str, boolean z) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject(str);
        boolean optBoolean = jSONObject2.optBoolean("require", true);
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        return zza(jSONObject2, optBoolean, z);
    }

    public void zza(int i, boolean z) {
        if (z) {
            zzan(i);
        }
    }

    public void zzan(int i) {
        synchronized (this.zzail) {
            this.zzbze = true;
            this.zzbyi = i;
        }
    }

    protected zza zzf(JSONObject jSONObject) throws ExecutionException, InterruptedException, JSONException, TimeoutException {
        if (zzqs()) {
            return null;
        }
        String string = jSONObject.getString("template_id");
        boolean z = this.zzbxr.zzcip.zzapo != null ? this.zzbxr.zzcip.zzapo.zzbgp : false;
        boolean z2 = this.zzbxr.zzcip.zzapo != null ? this.zzbxr.zzcip.zzapo.zzbgr : false;
        if ("2".equals(string)) {
            return new zzij(z, z2);
        }
        if ("1".equals(string)) {
            return new zzik(z, z2);
        }
        if ("3".equals(string)) {
            final String string2 = jSONObject.getString("custom_template_id");
            final zzkv zzkvVar = new zzkv();
            zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.internal.zzii.2
                @Override // java.lang.Runnable
                public void run() {
                    zzkvVar.zzh(zzii.this.zzbzd.zzfb().get(string2));
                }
            });
            if (zzkvVar.get(zzbyt, TimeUnit.MILLISECONDS) != null) {
                return new zzil(z);
            }
            String valueOf = String.valueOf(jSONObject.getString("custom_template_id"));
            zzkd.e(valueOf.length() != 0 ? "No handler for custom template: ".concat(valueOf) : new String("No handler for custom template: "));
        } else {
            zzan(0);
        }
        return null;
    }

    public zzky<com.google.android.gms.ads.internal.formats.zza> zzg(JSONObject jSONObject) throws JSONException {
        JSONObject optJSONObject = jSONObject.optJSONObject("attribution");
        if (optJSONObject == null) {
            return new zzkw(null);
        }
        final String optString = optJSONObject.optString("text");
        final int optInt = optJSONObject.optInt("text_size", -1);
        final Integer zzb2 = zzb(optJSONObject, "text_color");
        final Integer zzb3 = zzb(optJSONObject, "bg_color");
        final int optInt2 = optJSONObject.optInt("animation_ms", 1000);
        final int optInt3 = optJSONObject.optInt("presentation_ms", 4000);
        final int i = (this.zzbxr.zzcip.zzapo == null || this.zzbxr.zzcip.zzapo.versionCode < 2) ? 1 : this.zzbxr.zzcip.zzapo.zzbgs;
        List<zzky<com.google.android.gms.ads.internal.formats.zzc>> arrayList = new ArrayList<>();
        if (optJSONObject.optJSONArray("images") != null) {
            arrayList = zza(optJSONObject, "images", false, false, true);
        } else {
            arrayList.add(zza(optJSONObject, "image", false, false));
        }
        return zzkx.zza(zzkx.zzn(arrayList), new zzkx.zza<List<com.google.android.gms.ads.internal.formats.zzc>, com.google.android.gms.ads.internal.formats.zza>() { // from class: com.google.android.gms.internal.zzii.5
            @Override // com.google.android.gms.internal.zzkx.zza
            /* renamed from: zzj, reason: merged with bridge method [inline-methods] */
            public com.google.android.gms.ads.internal.formats.zza apply(List<com.google.android.gms.ads.internal.formats.zzc> list) {
                com.google.android.gms.ads.internal.formats.zza zzaVar;
                if (list != null) {
                    try {
                        if (!list.isEmpty()) {
                            zzaVar = new com.google.android.gms.ads.internal.formats.zza(optString, zzii.zzh(list), zzb3, zzb2, optInt > 0 ? Integer.valueOf(optInt) : null, optInt3 + optInt2, i);
                            return zzaVar;
                        }
                    } catch (RemoteException e) {
                        zzkd.zzb("Could not get attribution icon", e);
                        return null;
                    }
                }
                zzaVar = null;
                return zzaVar;
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x002b  */
    @Override // java.util.concurrent.Callable
    /* renamed from: zzqr, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.zzju call() {
        /*
            r3 = this;
            com.google.android.gms.internal.zzih r0 = r3.zzbgb     // Catch: org.json.JSONException -> L21 java.util.concurrent.TimeoutException -> L35 java.lang.InterruptedException -> L3c java.util.concurrent.ExecutionException -> L3e java.util.concurrent.CancellationException -> L40
            r0.zzqh()     // Catch: org.json.JSONException -> L21 java.util.concurrent.TimeoutException -> L35 java.lang.InterruptedException -> L3c java.util.concurrent.ExecutionException -> L3e java.util.concurrent.CancellationException -> L40
            java.util.UUID r0 = java.util.UUID.randomUUID()     // Catch: org.json.JSONException -> L21 java.util.concurrent.TimeoutException -> L35 java.lang.InterruptedException -> L3c java.util.concurrent.ExecutionException -> L3e java.util.concurrent.CancellationException -> L40
            java.lang.String r0 = r0.toString()     // Catch: org.json.JSONException -> L21 java.util.concurrent.TimeoutException -> L35 java.lang.InterruptedException -> L3c java.util.concurrent.ExecutionException -> L3e java.util.concurrent.CancellationException -> L40
            org.json.JSONObject r1 = r3.zzcb(r0)     // Catch: org.json.JSONException -> L21 java.util.concurrent.TimeoutException -> L35 java.lang.InterruptedException -> L3c java.util.concurrent.ExecutionException -> L3e java.util.concurrent.CancellationException -> L40
            com.google.android.gms.internal.zzii$zza r2 = r3.zzf(r1)     // Catch: org.json.JSONException -> L21 java.util.concurrent.TimeoutException -> L35 java.lang.InterruptedException -> L3c java.util.concurrent.ExecutionException -> L3e java.util.concurrent.CancellationException -> L40
            com.google.android.gms.ads.internal.formats.zzh$zza r0 = r3.zza(r2, r1, r0)     // Catch: org.json.JSONException -> L21 java.util.concurrent.TimeoutException -> L35 java.lang.InterruptedException -> L3c java.util.concurrent.ExecutionException -> L3e java.util.concurrent.CancellationException -> L40
            r3.zza(r0)     // Catch: org.json.JSONException -> L21 java.util.concurrent.TimeoutException -> L35 java.lang.InterruptedException -> L3c java.util.concurrent.ExecutionException -> L3e java.util.concurrent.CancellationException -> L40
            com.google.android.gms.internal.zzju r0 = r3.zzb(r0)     // Catch: org.json.JSONException -> L21 java.util.concurrent.TimeoutException -> L35 java.lang.InterruptedException -> L3c java.util.concurrent.ExecutionException -> L3e java.util.concurrent.CancellationException -> L40
        L20:
            return r0
        L21:
            r0 = move-exception
            java.lang.String r1 = "Malformed native JSON response."
            com.google.android.gms.internal.zzkd.zzd(r1, r0)
        L27:
            boolean r0 = r3.zzbze
            if (r0 != 0) goto L2f
            r0 = 0
            r3.zzan(r0)
        L2f:
            r0 = 0
            com.google.android.gms.internal.zzju r0 = r3.zzb(r0)
            goto L20
        L35:
            r0 = move-exception
            java.lang.String r1 = "Timeout when loading native ad."
            com.google.android.gms.internal.zzkd.zzd(r1, r0)
            goto L27
        L3c:
            r0 = move-exception
            goto L27
        L3e:
            r0 = move-exception
            goto L27
        L40:
            r0 = move-exception
            goto L27
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzii.call():com.google.android.gms.internal.zzju");
    }

    public boolean zzqs() {
        boolean z;
        synchronized (this.zzail) {
            z = this.zzbze;
        }
        return z;
    }
}
