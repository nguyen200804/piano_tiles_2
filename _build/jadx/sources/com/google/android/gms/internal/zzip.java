package com.google.android.gms.internal;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.request.zzk;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzfs;
import com.google.android.gms.internal.zziz;
import com.google.android.gms.internal.zzla;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzip extends zzk.zza {
    private static final Object zzamr = new Object();
    private static zzip zzcdx;
    private final Context mContext;
    private final zzio zzcdy;
    private final zzcv zzcdz;
    private final zzfs zzcea;

    zzip(Context context, zzcv zzcvVar, zzio zzioVar) {
        this.mContext = context;
        this.zzcdy = zzioVar;
        this.zzcdz = zzcvVar;
        this.zzcea = new zzfs(context.getApplicationContext() != null ? context.getApplicationContext() : context, new VersionInfoParcel(9452208, 9452208, true), zzcvVar.zzjv(), new zzkl<zzfp>() { // from class: com.google.android.gms.internal.zzip.4
            @Override // com.google.android.gms.internal.zzkl
            /* renamed from: zza, reason: merged with bridge method [inline-methods] */
            public void zzd(zzfp zzfpVar) {
                zzfpVar.zza("/log", zzeo.zzbhv);
            }
        }, new zzfs.zzb());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static AdResponseParcel zza(final Context context, final zzfs zzfsVar, zzcv zzcvVar, final zzio zzioVar, final AdRequestInfoParcel adRequestInfoParcel) {
        Bundle bundle;
        zzky zzkyVar;
        String string;
        zzkd.zzcv("Starting ad request from service using: AFMA_getAd");
        zzdc.initialize(context);
        final zzdk zzdkVar = new zzdk(zzdc.zzaze.get().booleanValue(), "load_ad", adRequestInfoParcel.zzapa.zzaur);
        if (adRequestInfoParcel.versionCode > 10 && adRequestInfoParcel.zzcbj != -1) {
            zzdkVar.zza(zzdkVar.zzc(adRequestInfoParcel.zzcbj), "cts");
        }
        zzdi zzkg = zzdkVar.zzkg();
        final Bundle bundle2 = (adRequestInfoParcel.versionCode < 4 || adRequestInfoParcel.zzcay == null) ? null : adRequestInfoParcel.zzcay;
        if (!zzdc.zzazn.get().booleanValue() || zzioVar.zzcdw == null) {
            bundle = bundle2;
            zzkyVar = null;
        } else {
            if (bundle2 == null && zzdc.zzazo.get().booleanValue()) {
                zzkd.v("contentInfo is not present, but we'll still launch the app index task");
                bundle2 = new Bundle();
            }
            if (bundle2 != null) {
                bundle = bundle2;
                zzkyVar = zzkg.zza(new Callable<Void>() { // from class: com.google.android.gms.internal.zzip.1
                    @Override // java.util.concurrent.Callable
                    /* renamed from: zzcx, reason: merged with bridge method [inline-methods] */
                    public Void call() throws Exception {
                        zzio.this.zzcdw.zza(context, adRequestInfoParcel.zzcas.packageName, bundle2);
                        return null;
                    }
                });
            } else {
                bundle = bundle2;
                zzkyVar = null;
            }
        }
        zzky zzkwVar = new zzkw(null);
        Bundle bundle3 = adRequestInfoParcel.zzcar.extras;
        zzky zza = (!adRequestInfoParcel.zzcbq || (bundle3 != null && bundle3.getString("_ad") != null)) ? zzkwVar : zzioVar.zzcds.zza(adRequestInfoParcel.applicationInfo);
        zziv zzy = com.google.android.gms.ads.internal.zzu.zzfw().zzy(context);
        if (zzy.zzcgp == -1) {
            zzkd.zzcv("Device is offline.");
            return new AdResponseParcel(2);
        }
        String uuid = adRequestInfoParcel.versionCode >= 7 ? adRequestInfoParcel.zzcbg : UUID.randomUUID().toString();
        final zzir zzirVar = new zzir(uuid, adRequestInfoParcel.applicationInfo.packageName);
        if (adRequestInfoParcel.zzcar.extras != null && (string = adRequestInfoParcel.zzcar.extras.getString("_ad")) != null) {
            return zziq.zza(context, adRequestInfoParcel, string);
        }
        List<String> zza2 = zzioVar.zzcdq.zza(adRequestInfoParcel);
        String zzf = zzioVar.zzcdt.zzf(adRequestInfoParcel);
        zziz.zza zzz = zzioVar.zzcdu.zzz(context);
        if (zzkyVar != null) {
            try {
                zzkd.v("Waiting for app index fetching task.");
                zzkyVar.get(zzdc.zzazp.get().longValue(), TimeUnit.MILLISECONDS);
                zzkd.v("App index fetching task completed.");
            } catch (InterruptedException e) {
                e = e;
                zzkd.zzd("Failed to fetch app index signal", e);
            } catch (ExecutionException e2) {
                e = e2;
                zzkd.zzd("Failed to fetch app index signal", e);
            } catch (TimeoutException e3) {
                zzkd.zzcv("Timed out waiting for app index fetching task");
            }
        }
        String zzck = zzioVar.zzcdp.zzck(adRequestInfoParcel.zzcas.packageName);
        JSONObject zza3 = zziq.zza(context, adRequestInfoParcel, zzy, zzz, zzb(zza), zzcvVar, zzf, zza2, bundle, zzck);
        if (zza3 == null) {
            return new AdResponseParcel(0);
        }
        if (adRequestInfoParcel.versionCode < 7) {
            try {
                zza3.put("request_id", uuid);
            } catch (JSONException e4) {
            }
        }
        try {
            zza3.put("prefetch_mode", "url");
        } catch (JSONException e5) {
            zzkd.zzd("Failed putting prefetch parameters to ad request.", e5);
        }
        final String jSONObject = zza3.toString();
        zzdkVar.zza(zzkg, "arc");
        final zzdi zzkg2 = zzdkVar.zzkg();
        zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.internal.zzip.2
            @Override // java.lang.Runnable
            public void run() {
                zzfs.zzc zzma = zzfs.this.zzma();
                zzirVar.zzb(zzma);
                zzdkVar.zza(zzkg2, "rwc");
                final zzdi zzkg3 = zzdkVar.zzkg();
                zzma.zza(new zzla.zzc<zzft>() { // from class: com.google.android.gms.internal.zzip.2.1
                    @Override // com.google.android.gms.internal.zzla.zzc
                    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
                    public void zzd(zzft zzftVar) {
                        zzdkVar.zza(zzkg3, "jsf");
                        zzdkVar.zzkh();
                        zzftVar.zza("/invalidRequest", zzirVar.zzcep);
                        zzftVar.zza("/loadAdURL", zzirVar.zzceq);
                        zzftVar.zza("/loadAd", zzirVar.zzcer);
                        try {
                            zzftVar.zzj("AFMA_getAd", jSONObject);
                        } catch (Exception e6) {
                            zzkd.zzb("Error requesting an ad url", e6);
                        }
                    }
                }, new zzla.zza() { // from class: com.google.android.gms.internal.zzip.2.2
                    @Override // com.google.android.gms.internal.zzla.zza
                    public void run() {
                    }
                });
            }
        });
        try {
            zziu zziuVar = zzirVar.zzrh().get(10L, TimeUnit.SECONDS);
            if (zziuVar == null) {
                return new AdResponseParcel(0);
            }
            if (zziuVar.getErrorCode() != -2) {
                return new AdResponseParcel(zziuVar.getErrorCode());
            }
            if (zzdkVar.zzkj() != null) {
                zzdkVar.zza(zzdkVar.zzkj(), "rur");
            }
            AdResponseParcel zza4 = TextUtils.isEmpty(zziuVar.zzrm()) ? null : zziq.zza(context, adRequestInfoParcel, zziuVar.zzrm());
            if (zza4 == null && !TextUtils.isEmpty(zziuVar.getUrl())) {
                zza4 = zza(adRequestInfoParcel, context, adRequestInfoParcel.zzaow.zzcs, zziuVar.getUrl(), zzck, zziuVar, zzdkVar, zzioVar);
            }
            if (zza4 == null) {
                zza4 = new AdResponseParcel(0);
            }
            zzdkVar.zza(zzkg, "tts");
            zza4.zzccl = zzdkVar.zzki();
            return zza4;
        } catch (Exception e6) {
            return new AdResponseParcel(0);
        } finally {
            zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.internal.zzip.3
                @Override // java.lang.Runnable
                public void run() {
                    zzio.this.zzcdr.zza(context, zzirVar, adRequestInfoParcel.zzaow);
                }
            });
        }
    }

    public static AdResponseParcel zza(AdRequestInfoParcel adRequestInfoParcel, Context context, String str, String str2, String str3, zziu zziuVar, zzdk zzdkVar, zzio zzioVar) {
        HttpURLConnection httpURLConnection;
        int responseCode;
        InputStreamReader inputStreamReader;
        BufferedOutputStream bufferedOutputStream;
        zzdi zzkg = zzdkVar != null ? zzdkVar.zzkg() : null;
        try {
            zzis zzisVar = new zzis(adRequestInfoParcel);
            String valueOf = String.valueOf(str2);
            zzkd.zzcv(valueOf.length() != 0 ? "AdRequestServiceImpl: Sending request: ".concat(valueOf) : new String("AdRequestServiceImpl: Sending request: "));
            URL url = new URL(str2);
            long elapsedRealtime = com.google.android.gms.ads.internal.zzu.zzfu().elapsedRealtime();
            int i = 0;
            URL url2 = url;
            while (true) {
                if (zzioVar != null) {
                    zzioVar.zzcdv.zzro();
                }
                httpURLConnection = (HttpURLConnection) url2.openConnection();
                try {
                    com.google.android.gms.ads.internal.zzu.zzfq().zza(context, str, false, httpURLConnection);
                    if (!TextUtils.isEmpty(str3) && zziuVar.zzrl()) {
                        httpURLConnection.addRequestProperty("x-afma-drt-cookie", str3);
                    }
                    String str4 = adRequestInfoParcel.zzcbr;
                    if (!TextUtils.isEmpty(str4)) {
                        zzkd.zzcv("Sending webview cookie in ad request header.");
                        httpURLConnection.addRequestProperty("Cookie", str4);
                    }
                    if (zziuVar != null && !TextUtils.isEmpty(zziuVar.zzrk())) {
                        httpURLConnection.setDoOutput(true);
                        byte[] bytes = zziuVar.zzrk().getBytes();
                        httpURLConnection.setFixedLengthStreamingMode(bytes.length);
                        try {
                            bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
                            try {
                                bufferedOutputStream.write(bytes);
                                com.google.android.gms.common.util.zzo.zzb(bufferedOutputStream);
                            } catch (Throwable th) {
                                th = th;
                                com.google.android.gms.common.util.zzo.zzb(bufferedOutputStream);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedOutputStream = null;
                        }
                    }
                    responseCode = httpURLConnection.getResponseCode();
                    Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                    if (responseCode >= 200 && responseCode < 300) {
                        String url3 = url2.toString();
                        try {
                            inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream());
                        } catch (Throwable th3) {
                            th = th3;
                            inputStreamReader = null;
                        }
                        try {
                            String zza = com.google.android.gms.ads.internal.zzu.zzfq().zza(inputStreamReader);
                            com.google.android.gms.common.util.zzo.zzb(inputStreamReader);
                            zza(url3, headerFields, zza, responseCode);
                            zzisVar.zzb(url3, headerFields, zza);
                            if (zzdkVar != null) {
                                zzdkVar.zza(zzkg, "ufe");
                            }
                            return zzisVar.zzj(elapsedRealtime);
                        } catch (Throwable th4) {
                            th = th4;
                            com.google.android.gms.common.util.zzo.zzb(inputStreamReader);
                            throw th;
                        }
                    }
                    zza(url2.toString(), headerFields, null, responseCode);
                    if (responseCode < 300 || responseCode >= 400) {
                        break;
                    }
                    String headerField = httpURLConnection.getHeaderField("Location");
                    if (TextUtils.isEmpty(headerField)) {
                        zzkd.zzcx("No location header to follow redirect.");
                        AdResponseParcel adResponseParcel = new AdResponseParcel(0);
                        httpURLConnection.disconnect();
                        if (zzioVar != null) {
                            zzioVar.zzcdv.zzrp();
                        }
                        return adResponseParcel;
                    }
                    URL url4 = new URL(headerField);
                    int i2 = i + 1;
                    if (i2 > 5) {
                        zzkd.zzcx("Too many redirects.");
                        AdResponseParcel adResponseParcel2 = new AdResponseParcel(0);
                        httpURLConnection.disconnect();
                        if (zzioVar != null) {
                            zzioVar.zzcdv.zzrp();
                        }
                        return adResponseParcel2;
                    }
                    zzisVar.zzj(headerFields);
                    httpURLConnection.disconnect();
                    if (zzioVar != null) {
                        zzioVar.zzcdv.zzrp();
                    }
                    i = i2;
                    url2 = url4;
                } finally {
                    httpURLConnection.disconnect();
                    if (zzioVar != null) {
                        zzioVar.zzcdv.zzrp();
                    }
                }
            }
            zzkd.zzcx(new StringBuilder(46).append("Received error HTTP response code: ").append(responseCode).toString());
            AdResponseParcel adResponseParcel3 = new AdResponseParcel(0);
            httpURLConnection.disconnect();
            if (zzioVar != null) {
                zzioVar.zzcdv.zzrp();
            }
            return adResponseParcel3;
        } catch (IOException e) {
            String valueOf2 = String.valueOf(e.getMessage());
            zzkd.zzcx(valueOf2.length() != 0 ? "Error while connecting to ad server: ".concat(valueOf2) : new String("Error while connecting to ad server: "));
            return new AdResponseParcel(2);
        }
    }

    public static zzip zza(Context context, zzcv zzcvVar, zzio zzioVar) {
        zzip zzipVar;
        synchronized (zzamr) {
            if (zzcdx == null) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                zzcdx = new zzip(context, zzcvVar, zzioVar);
            }
            zzipVar = zzcdx;
        }
        return zzipVar;
    }

    private static void zza(String str, Map<String, List<String>> map, String str2, int i) {
        if (zzkd.zzaz(2)) {
            zzkd.v(new StringBuilder(String.valueOf(str).length() + 39).append("Http Response: {\n  URL:\n    ").append(str).append("\n  Headers:").toString());
            if (map != null) {
                for (String str3 : map.keySet()) {
                    zzkd.v(new StringBuilder(String.valueOf(str3).length() + 5).append("    ").append(str3).append(":").toString());
                    Iterator<String> it = map.get(str3).iterator();
                    while (it.hasNext()) {
                        String valueOf = String.valueOf(it.next());
                        zzkd.v(valueOf.length() != 0 ? "      ".concat(valueOf) : new String("      "));
                    }
                }
            }
            zzkd.v("  Body:");
            if (str2 != null) {
                for (int i2 = 0; i2 < Math.min(str2.length(), 100000); i2 += 1000) {
                    zzkd.v(str2.substring(i2, Math.min(str2.length(), i2 + 1000)));
                }
            } else {
                zzkd.v("    null");
            }
            zzkd.v(new StringBuilder(34).append("  Response Code:\n    ").append(i).append("\n}").toString());
        }
    }

    private static Location zzb(zzky<Location> zzkyVar) {
        try {
            return zzkyVar.get(zzdc.zzbcp.get().longValue(), TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            zzkd.zzd("Exception caught while getting location", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.request.zzk
    public void zza(final AdRequestInfoParcel adRequestInfoParcel, final com.google.android.gms.ads.internal.request.zzl zzlVar) {
        com.google.android.gms.ads.internal.zzu.zzft().zzb(this.mContext, adRequestInfoParcel.zzaow);
        zzkg.zza(new Runnable() { // from class: com.google.android.gms.internal.zzip.5
            @Override // java.lang.Runnable
            public void run() {
                AdResponseParcel adResponseParcel;
                try {
                    adResponseParcel = zzip.this.zzd(adRequestInfoParcel);
                } catch (Exception e) {
                    com.google.android.gms.ads.internal.zzu.zzft().zzb((Throwable) e, true);
                    zzkd.zzd("Could not fetch ad response due to an Exception.", e);
                    adResponseParcel = null;
                }
                if (adResponseParcel == null) {
                    adResponseParcel = new AdResponseParcel(0);
                }
                try {
                    zzlVar.zzb(adResponseParcel);
                } catch (RemoteException e2) {
                    zzkd.zzd("Fail to forward ad response.", e2);
                }
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.request.zzk
    public AdResponseParcel zzd(AdRequestInfoParcel adRequestInfoParcel) {
        return zza(this.mContext, this.zzcea, this.zzcdz, this.zzcdy, adRequestInfoParcel);
    }
}
