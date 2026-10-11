package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@TargetApi(11)
@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzlp extends zzli {
    public zzlp(zzlh zzlhVar, boolean z) {
        super(zzlhVar, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        if (this.zzcot != null) {
            this.zzcot.zzcj(str);
        }
        try {
            if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
                return super.shouldInterceptRequest(webView, str);
            }
            if (!(webView instanceof zzlh)) {
                zzkd.zzcx("Tried to intercept request from a WebView that wasn't an AdWebView.");
                return super.shouldInterceptRequest(webView, str);
            }
            zzlh zzlhVar = (zzlh) webView;
            zzlhVar.zzuj().zznx();
            String str2 = zzlhVar.zzdn().zzaus ? zzdc.zzazd.get() : zzlhVar.zzun() ? zzdc.zzazc.get() : zzdc.zzazb.get();
            zzkd.v(new StringBuilder(String.valueOf(str2).length() + 24).append("shouldInterceptRequest(").append(str2).append(")").toString());
            return zzd(zzlhVar.getContext(), this.zzbgf.zzum().zzcs, str2);
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            String valueOf = String.valueOf(e.getMessage());
            zzkd.zzcx(valueOf.length() != 0 ? "Could not fetch MRAID JS. ".concat(valueOf) : new String("Could not fetch MRAID JS. "));
            return super.shouldInterceptRequest(webView, str);
        }
    }

    protected WebResourceResponse zzd(Context context, String str, String str2) throws IOException, ExecutionException, InterruptedException, TimeoutException {
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", com.google.android.gms.ads.internal.zzu.zzfq().zzg(context, str));
        hashMap.put("Cache-Control", "max-stale=3600");
        String str3 = new zzkn(context).zzc(str2, hashMap).get(60L, TimeUnit.SECONDS);
        if (str3 == null) {
            return null;
        }
        return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
    }
}
