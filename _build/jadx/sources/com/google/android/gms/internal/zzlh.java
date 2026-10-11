package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Map;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public interface zzlh extends com.google.android.gms.ads.internal.zzs, zzce, zzft {
    void destroy();

    Context getContext();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    int getMeasuredHeight();

    int getMeasuredWidth();

    ViewParent getParent();

    String getRequestId();

    int getRequestedOrientation();

    View getView();

    WebView getWebView();

    boolean isDestroyed();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, @Nullable String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    void onPause();

    void onResume();

    void setBackgroundColor(int i);

    void setContext(Context context);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setRequestedOrientation(int i);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    void stopLoading();

    void zza(Context context, AdSizeParcel adSizeParcel, zzdk zzdkVar);

    void zza(AdSizeParcel adSizeParcel);

    void zza(zzlm zzlmVar);

    void zza(String str, Map<String, ?> map);

    @Override // com.google.android.gms.internal.zzft
    void zza(String str, JSONObject jSONObject);

    void zzaf(int i);

    void zzah(boolean z);

    void zzai(boolean z);

    void zzaj(boolean z);

    void zzb(com.google.android.gms.ads.internal.overlay.zzd zzdVar);

    void zzc(com.google.android.gms.ads.internal.overlay.zzd zzdVar);

    void zzcy(String str);

    void zzcz(String str);

    AdSizeParcel zzdn();

    @Override // com.google.android.gms.internal.zzft
    void zzj(String str, String str2);

    void zzoa();

    boolean zzou();

    void zzuc();

    void zzud();

    Activity zzue();

    Context zzuf();

    com.google.android.gms.ads.internal.zzd zzug();

    com.google.android.gms.ads.internal.overlay.zzd zzuh();

    com.google.android.gms.ads.internal.overlay.zzd zzui();

    @Nullable
    zzli zzuj();

    boolean zzuk();

    zzas zzul();

    VersionInfoParcel zzum();

    boolean zzun();

    void zzuo();

    boolean zzup();

    @Nullable
    zzlg zzuq();

    @Nullable
    zzdi zzur();

    zzdj zzus();

    @Nullable
    zzlm zzut();

    void zzuu();

    void zzuv();

    @Nullable
    View.OnClickListener zzuw();
}
