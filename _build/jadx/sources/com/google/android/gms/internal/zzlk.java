package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Map;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class zzlk extends FrameLayout implements zzlh {
    private final zzlh zzcpa;
    private final zzlg zzcpb;

    public zzlk(zzlh zzlhVar) {
        super(zzlhVar.getContext());
        this.zzcpa = zzlhVar;
        this.zzcpb = new zzlg(zzlhVar.zzuf(), this, this);
        zzli zzuj = this.zzcpa.zzuj();
        if (zzuj != null) {
            zzuj.zzl(this);
        }
        addView(this.zzcpa.getView());
    }

    @Override // com.google.android.gms.internal.zzlh
    public void destroy() {
        this.zzcpa.destroy();
    }

    @Override // com.google.android.gms.internal.zzlh
    public String getRequestId() {
        return this.zzcpa.getRequestId();
    }

    @Override // com.google.android.gms.internal.zzlh
    public int getRequestedOrientation() {
        return this.zzcpa.getRequestedOrientation();
    }

    @Override // com.google.android.gms.internal.zzlh
    public View getView() {
        return this;
    }

    @Override // com.google.android.gms.internal.zzlh
    public WebView getWebView() {
        return this.zzcpa.getWebView();
    }

    @Override // com.google.android.gms.internal.zzlh
    public boolean isDestroyed() {
        return this.zzcpa.isDestroyed();
    }

    @Override // com.google.android.gms.internal.zzlh
    public void loadData(String str, String str2, String str3) {
        this.zzcpa.loadData(str, str2, str3);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.zzcpa.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void loadUrl(String str) {
        this.zzcpa.loadUrl(str);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void onPause() {
        this.zzcpb.onPause();
        this.zzcpa.onPause();
    }

    @Override // com.google.android.gms.internal.zzlh
    public void onResume() {
        this.zzcpa.onResume();
    }

    @Override // android.view.View, com.google.android.gms.internal.zzlh
    public void setBackgroundColor(int i) {
        this.zzcpa.setBackgroundColor(i);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void setContext(Context context) {
        this.zzcpa.setContext(context);
    }

    @Override // android.view.View, com.google.android.gms.internal.zzlh
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.zzcpa.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, com.google.android.gms.internal.zzlh
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.zzcpa.setOnTouchListener(onTouchListener);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void setRequestedOrientation(int i) {
        this.zzcpa.setRequestedOrientation(i);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void setWebChromeClient(WebChromeClient webChromeClient) {
        this.zzcpa.setWebChromeClient(webChromeClient);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void setWebViewClient(WebViewClient webViewClient) {
        this.zzcpa.setWebViewClient(webViewClient);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void stopLoading() {
        this.zzcpa.stopLoading();
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zza(Context context, AdSizeParcel adSizeParcel, zzdk zzdkVar) {
        this.zzcpb.onDestroy();
        this.zzcpa.zza(context, adSizeParcel, zzdkVar);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zza(AdSizeParcel adSizeParcel) {
        this.zzcpa.zza(adSizeParcel);
    }

    @Override // com.google.android.gms.internal.zzce
    public void zza(zzcd zzcdVar, boolean z) {
        this.zzcpa.zza(zzcdVar, z);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zza(zzlm zzlmVar) {
        this.zzcpa.zza(zzlmVar);
    }

    @Override // com.google.android.gms.internal.zzft
    public void zza(String str, zzep zzepVar) {
        this.zzcpa.zza(str, zzepVar);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zza(String str, Map<String, ?> map) {
        this.zzcpa.zza(str, map);
    }

    @Override // com.google.android.gms.internal.zzlh, com.google.android.gms.internal.zzft
    public void zza(String str, JSONObject jSONObject) {
        this.zzcpa.zza(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zzaf(int i) {
        this.zzcpa.zzaf(i);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zzah(boolean z) {
        this.zzcpa.zzah(z);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zzai(boolean z) {
        this.zzcpa.zzai(z);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zzaj(boolean z) {
        this.zzcpa.zzaj(z);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zzb(com.google.android.gms.ads.internal.overlay.zzd zzdVar) {
        this.zzcpa.zzb(zzdVar);
    }

    @Override // com.google.android.gms.internal.zzft
    public void zzb(String str, zzep zzepVar) {
        this.zzcpa.zzb(str, zzepVar);
    }

    @Override // com.google.android.gms.internal.zzft
    public void zzb(String str, JSONObject jSONObject) {
        this.zzcpa.zzb(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zzc(com.google.android.gms.ads.internal.overlay.zzd zzdVar) {
        this.zzcpa.zzc(zzdVar);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zzcy(String str) {
        this.zzcpa.zzcy(str);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zzcz(String str) {
        this.zzcpa.zzcz(str);
    }

    @Override // com.google.android.gms.internal.zzlh
    public AdSizeParcel zzdn() {
        return this.zzcpa.zzdn();
    }

    @Override // com.google.android.gms.ads.internal.zzs
    public void zzef() {
        this.zzcpa.zzef();
    }

    @Override // com.google.android.gms.ads.internal.zzs
    public void zzeg() {
        this.zzcpa.zzeg();
    }

    @Override // com.google.android.gms.internal.zzlh, com.google.android.gms.internal.zzft
    public void zzj(String str, String str2) {
        this.zzcpa.zzj(str, str2);
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zzoa() {
        this.zzcpa.zzoa();
    }

    @Override // com.google.android.gms.internal.zzlh
    public boolean zzou() {
        return this.zzcpa.zzou();
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zzuc() {
        this.zzcpa.zzuc();
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zzud() {
        this.zzcpa.zzud();
    }

    @Override // com.google.android.gms.internal.zzlh
    public Activity zzue() {
        return this.zzcpa.zzue();
    }

    @Override // com.google.android.gms.internal.zzlh
    public Context zzuf() {
        return this.zzcpa.zzuf();
    }

    @Override // com.google.android.gms.internal.zzlh
    public com.google.android.gms.ads.internal.zzd zzug() {
        return this.zzcpa.zzug();
    }

    @Override // com.google.android.gms.internal.zzlh
    public com.google.android.gms.ads.internal.overlay.zzd zzuh() {
        return this.zzcpa.zzuh();
    }

    @Override // com.google.android.gms.internal.zzlh
    public com.google.android.gms.ads.internal.overlay.zzd zzui() {
        return this.zzcpa.zzui();
    }

    @Override // com.google.android.gms.internal.zzlh
    public zzli zzuj() {
        return this.zzcpa.zzuj();
    }

    @Override // com.google.android.gms.internal.zzlh
    public boolean zzuk() {
        return this.zzcpa.zzuk();
    }

    @Override // com.google.android.gms.internal.zzlh
    public zzas zzul() {
        return this.zzcpa.zzul();
    }

    @Override // com.google.android.gms.internal.zzlh
    public VersionInfoParcel zzum() {
        return this.zzcpa.zzum();
    }

    @Override // com.google.android.gms.internal.zzlh
    public boolean zzun() {
        return this.zzcpa.zzun();
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zzuo() {
        this.zzcpb.onDestroy();
        this.zzcpa.zzuo();
    }

    @Override // com.google.android.gms.internal.zzlh
    public boolean zzup() {
        return this.zzcpa.zzup();
    }

    @Override // com.google.android.gms.internal.zzlh
    public zzlg zzuq() {
        return this.zzcpb;
    }

    @Override // com.google.android.gms.internal.zzlh
    public zzdi zzur() {
        return this.zzcpa.zzur();
    }

    @Override // com.google.android.gms.internal.zzlh
    public zzdj zzus() {
        return this.zzcpa.zzus();
    }

    @Override // com.google.android.gms.internal.zzlh
    public zzlm zzut() {
        return this.zzcpa.zzut();
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zzuu() {
        this.zzcpa.zzuu();
    }

    @Override // com.google.android.gms.internal.zzlh
    public void zzuv() {
        this.zzcpa.zzuv();
    }

    @Override // com.google.android.gms.internal.zzlh
    public View.OnClickListener zzuw() {
        return this.zzcpa.zzuw();
    }
}
