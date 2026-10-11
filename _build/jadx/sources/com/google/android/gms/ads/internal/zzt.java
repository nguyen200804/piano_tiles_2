package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.VideoOptionsParcel;
import com.google.android.gms.ads.internal.client.zzu;
import com.google.android.gms.ads.internal.client.zzw;
import com.google.android.gms.ads.internal.client.zzy;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzbw;
import com.google.android.gms.internal.zzbx;
import com.google.android.gms.internal.zzdc;
import com.google.android.gms.internal.zzdo;
import com.google.android.gms.internal.zzho;
import com.google.android.gms.internal.zzhs;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzkd;
import com.google.android.gms.internal.zzkg;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzt extends zzu.zza {
    private final Context mContext;

    @Nullable
    private com.google.android.gms.ads.internal.client.zzq zzalf;
    private final VersionInfoParcel zzalo;
    private final AdSizeParcel zzani;
    private final Future<zzbw> zzanj = zzfg();
    private final zzb zzank;

    @Nullable
    private WebView zzanl;

    @Nullable
    private zzbw zzanm;
    private AsyncTask<Void, Void, Void> zzann;

    private class zza extends AsyncTask<Void, Void, Void> {
        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            try {
                zzt.this.zzanm = (zzbw) zzt.this.zzanj.get(zzdc.zzbdd.get().longValue(), TimeUnit.MILLISECONDS);
                return null;
            } catch (InterruptedException e) {
                e = e;
                zzkd.zzd("Failed to load ad data", e);
                return null;
            } catch (ExecutionException e2) {
                e = e2;
                zzkd.zzd("Failed to load ad data", e);
                return null;
            } catch (TimeoutException e3) {
                zzkd.zzcx("Timed out waiting for ad data");
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Void r3) {
            String zzfe = zzt.this.zzfe();
            if (zzt.this.zzanl != null) {
                zzt.this.zzanl.loadUrl(zzfe);
            }
        }
    }

    private static class zzb {
        private final String zzanp;
        private final Map<String, String> zzanq = new TreeMap();
        private String zzanr;
        private String zzans;

        public zzb(String str) {
            this.zzanp = str;
        }

        public String getQuery() {
            return this.zzanr;
        }

        public String zzfi() {
            return this.zzans;
        }

        public String zzfj() {
            return this.zzanp;
        }

        public Map<String, String> zzfk() {
            return this.zzanq;
        }

        public void zzh(AdRequestParcel adRequestParcel) {
            this.zzanr = adRequestParcel.zzatt.zzaxl;
            Bundle bundle = adRequestParcel.zzatw != null ? adRequestParcel.zzatw.getBundle(AdMobAdapter.class.getName()) : null;
            if (bundle == null) {
                return;
            }
            String str = zzdc.zzbdc.get();
            for (String str2 : bundle.keySet()) {
                if (str.equals(str2)) {
                    this.zzans = bundle.getString(str2);
                } else if (str2.startsWith("csa_")) {
                    this.zzanq.put(str2.substring("csa_".length()), bundle.getString(str2));
                }
            }
        }
    }

    public zzt(Context context, AdSizeParcel adSizeParcel, String str, VersionInfoParcel versionInfoParcel) {
        this.mContext = context;
        this.zzalo = versionInfoParcel;
        this.zzani = adSizeParcel;
        this.zzanl = new WebView(this.mContext);
        this.zzank = new zzb(str);
        zzfd();
    }

    private void zzfd() {
        zzj(0);
        this.zzanl.setVerticalScrollBarEnabled(false);
        this.zzanl.getSettings().setJavaScriptEnabled(true);
        this.zzanl.setWebViewClient(new WebViewClient() { // from class: com.google.android.gms.ads.internal.zzt.1
            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (zzt.this.zzalf != null) {
                    try {
                        zzt.this.zzalf.onAdFailedToLoad(0);
                    } catch (RemoteException e) {
                        zzkd.zzd("Could not call AdListener.onAdFailedToLoad().", e);
                    }
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (str.startsWith(zzt.this.zzff())) {
                    return false;
                }
                if (str.startsWith(zzdc.zzbcy.get())) {
                    if (zzt.this.zzalf != null) {
                        try {
                            zzt.this.zzalf.onAdFailedToLoad(3);
                        } catch (RemoteException e) {
                            zzkd.zzd("Could not call AdListener.onAdFailedToLoad().", e);
                        }
                    }
                    zzt.this.zzj(0);
                    return true;
                }
                if (str.startsWith(zzdc.zzbcz.get())) {
                    if (zzt.this.zzalf != null) {
                        try {
                            zzt.this.zzalf.onAdFailedToLoad(0);
                        } catch (RemoteException e2) {
                            zzkd.zzd("Could not call AdListener.onAdFailedToLoad().", e2);
                        }
                    }
                    zzt.this.zzj(0);
                    return true;
                }
                if (str.startsWith(zzdc.zzbda.get())) {
                    if (zzt.this.zzalf != null) {
                        try {
                            zzt.this.zzalf.onAdLoaded();
                        } catch (RemoteException e3) {
                            zzkd.zzd("Could not call AdListener.onAdLoaded().", e3);
                        }
                    }
                    zzt.this.zzj(zzt.this.zzw(str));
                    return true;
                }
                if (str.startsWith("gmsg://")) {
                    return true;
                }
                if (zzt.this.zzalf != null) {
                    try {
                        zzt.this.zzalf.onAdLeftApplication();
                    } catch (RemoteException e4) {
                        zzkd.zzd("Could not call AdListener.onAdLeftApplication().", e4);
                    }
                }
                zzt.this.zzy(zzt.this.zzx(str));
                return true;
            }
        });
        this.zzanl.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.gms.ads.internal.zzt.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (zzt.this.zzanm == null) {
                    return false;
                }
                try {
                    zzt.this.zzanm.zza(motionEvent);
                    return false;
                } catch (RemoteException e) {
                    zzkd.zzd("Unable to process ad data", e);
                    return false;
                }
            }
        });
    }

    private Future<zzbw> zzfg() {
        return zzkg.zza(new Callable<zzbw>() { // from class: com.google.android.gms.ads.internal.zzt.3
            @Override // java.util.concurrent.Callable
            /* renamed from: zzfh, reason: merged with bridge method [inline-methods] */
            public zzbw call() throws Exception {
                return new zzbw(zzt.this.zzalo.zzcs, zzt.this.mContext, false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String zzx(String str) {
        if (this.zzanm == null) {
            return str;
        }
        Uri parse = Uri.parse(str);
        try {
            parse = this.zzanm.zzd(parse, this.mContext);
        } catch (RemoteException e) {
            zzkd.zzd("Unable to process ad data", e);
        } catch (zzbx e2) {
            zzkd.zzd("Unable to parse ad click url", e2);
        }
        return parse.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzy(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        this.mContext.startActivity(intent);
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void destroy() throws RemoteException {
        zzab.zzhi("destroy must be called on the main UI thread.");
        this.zzann.cancel(true);
        this.zzanj.cancel(true);
        this.zzanl.destroy();
        this.zzanl = null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    @Nullable
    public String getMediationAdapterClassName() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public boolean isLoading() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public boolean isReady() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void pause() throws RemoteException {
        zzab.zzhi("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void resume() throws RemoteException {
        zzab.zzhi("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void setManualImpressionsEnabled(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void setUserId(String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void showInterstitial() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void stopLoading() throws RemoteException {
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(AdSizeParcel adSizeParcel) throws RemoteException {
        throw new IllegalStateException("AdSize must be set before initialization");
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(VideoOptionsParcel videoOptionsParcel) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(com.google.android.gms.ads.internal.client.zzp zzpVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(com.google.android.gms.ads.internal.client.zzq zzqVar) throws RemoteException {
        this.zzalf = zzqVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(zzw zzwVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(zzy zzyVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(com.google.android.gms.ads.internal.reward.client.zzd zzdVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(zzdo zzdoVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(zzho zzhoVar) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zza(zzhs zzhsVar, String str) throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public boolean zzb(AdRequestParcel adRequestParcel) throws RemoteException {
        zzab.zzb(this.zzanl, "This Search Ad has already been torn down");
        this.zzank.zzh(adRequestParcel);
        this.zzann = new zza().execute(new Void[0]);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public com.google.android.gms.dynamic.zzd zzdm() throws RemoteException {
        zzab.zzhi("getAdFrame must be called on the main UI thread.");
        return com.google.android.gms.dynamic.zze.zzac(this.zzanl);
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public AdSizeParcel zzdn() throws RemoteException {
        return this.zzani;
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    public void zzdp() throws RemoteException {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.ads.internal.client.zzu
    @Nullable
    public com.google.android.gms.ads.internal.client.zzab zzdq() {
        return null;
    }

    String zzfe() {
        Uri zzc;
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath(zzdc.zzbdb.get());
        builder.appendQueryParameter("query", this.zzank.getQuery());
        builder.appendQueryParameter("pubId", this.zzank.zzfj());
        Map<String, String> zzfk = this.zzank.zzfk();
        for (String str : zzfk.keySet()) {
            builder.appendQueryParameter(str, zzfk.get(str));
        }
        Uri build = builder.build();
        if (this.zzanm != null) {
            try {
                zzc = this.zzanm.zzc(build, this.mContext);
            } catch (RemoteException | zzbx e) {
                zzkd.zzd("Unable to process ad data", e);
            }
            String valueOf = String.valueOf(zzff());
            String valueOf2 = String.valueOf(zzc.getEncodedQuery());
            return new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length()).append(valueOf).append("#").append(valueOf2).toString();
        }
        zzc = build;
        String valueOf3 = String.valueOf(zzff());
        String valueOf22 = String.valueOf(zzc.getEncodedQuery());
        return new StringBuilder(String.valueOf(valueOf3).length() + 1 + String.valueOf(valueOf22).length()).append(valueOf3).append("#").append(valueOf22).toString();
    }

    String zzff() {
        String zzfi = this.zzank.zzfi();
        String str = TextUtils.isEmpty(zzfi) ? "www.google.com" : zzfi;
        String valueOf = String.valueOf("https://");
        String str2 = zzdc.zzbdb.get();
        return new StringBuilder(String.valueOf(valueOf).length() + 0 + String.valueOf(str).length() + String.valueOf(str2).length()).append(valueOf).append(str).append(str2).toString();
    }

    void zzj(int i) {
        if (this.zzanl == null) {
            return;
        }
        this.zzanl.setLayoutParams(new ViewGroup.LayoutParams(-1, i));
    }

    int zzw(String str) {
        String queryParameter = Uri.parse(str).getQueryParameter(VastIconXmlManager.HEIGHT);
        if (TextUtils.isEmpty(queryParameter)) {
            return 0;
        }
        try {
            return com.google.android.gms.ads.internal.client.zzm.zziw().zza(this.mContext, Integer.parseInt(queryParameter));
        } catch (NumberFormatException e) {
            return 0;
        }
    }
}
