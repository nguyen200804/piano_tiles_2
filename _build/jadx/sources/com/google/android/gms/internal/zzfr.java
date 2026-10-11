package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import com.facebook.ads.AudienceNetworkActivity;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzfp;
import com.google.android.gms.internal.zzli;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzfr implements zzfp {
    private final zzlh zzbgf;

    public zzfr(Context context, VersionInfoParcel versionInfoParcel, @Nullable zzas zzasVar) {
        this.zzbgf = com.google.android.gms.ads.internal.zzu.zzfr().zza(context, new AdSizeParcel(), false, false, zzasVar, versionInfoParcel);
        this.zzbgf.getWebView().setWillNotDraw(true);
    }

    private void runOnUiThread(Runnable runnable) {
        if (com.google.android.gms.ads.internal.client.zzm.zziw().zztx()) {
            runnable.run();
        } else {
            zzkh.zzclc.post(runnable);
        }
    }

    @Override // com.google.android.gms.internal.zzfp
    public void destroy() {
        this.zzbgf.destroy();
    }

    @Override // com.google.android.gms.internal.zzfp
    public void zza(com.google.android.gms.ads.internal.client.zza zzaVar, com.google.android.gms.ads.internal.overlay.zzg zzgVar, zzel zzelVar, com.google.android.gms.ads.internal.overlay.zzp zzpVar, boolean z, zzer zzerVar, zzet zzetVar, com.google.android.gms.ads.internal.zze zzeVar, zzhg zzhgVar) {
        this.zzbgf.zzuj().zza(zzaVar, zzgVar, zzelVar, zzpVar, z, zzerVar, zzetVar, new com.google.android.gms.ads.internal.zze(this.zzbgf.getContext(), false), zzhgVar, null);
    }

    @Override // com.google.android.gms.internal.zzfp
    public void zza(final zzfp.zza zzaVar) {
        this.zzbgf.zzuj().zza(new zzli.zza() { // from class: com.google.android.gms.internal.zzfr.6
            @Override // com.google.android.gms.internal.zzli.zza
            public void zza(zzlh zzlhVar, boolean z) {
                zzaVar.zzlz();
            }
        });
    }

    @Override // com.google.android.gms.internal.zzft
    public void zza(String str, zzep zzepVar) {
        this.zzbgf.zzuj().zza(str, zzepVar);
    }

    @Override // com.google.android.gms.internal.zzft
    public void zza(final String str, final JSONObject jSONObject) {
        runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzfr.1
            @Override // java.lang.Runnable
            public void run() {
                zzfr.this.zzbgf.zza(str, jSONObject);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzft
    public void zzb(String str, zzep zzepVar) {
        this.zzbgf.zzuj().zzb(str, zzepVar);
    }

    @Override // com.google.android.gms.internal.zzft
    public void zzb(String str, JSONObject jSONObject) {
        this.zzbgf.zzb(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.zzfp
    public void zzbg(String str) {
        final String format = String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str);
        runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzfr.3
            @Override // java.lang.Runnable
            public void run() {
                zzfr.this.zzbgf.loadData(format, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, "UTF-8");
            }
        });
    }

    @Override // com.google.android.gms.internal.zzfp
    public void zzbh(final String str) {
        runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzfr.5
            @Override // java.lang.Runnable
            public void run() {
                zzfr.this.zzbgf.loadUrl(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzfp
    public void zzbi(final String str) {
        runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzfr.4
            @Override // java.lang.Runnable
            public void run() {
                zzfr.this.zzbgf.loadData(str, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, "UTF-8");
            }
        });
    }

    @Override // com.google.android.gms.internal.zzft
    public void zzj(final String str, final String str2) {
        runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzfr.2
            @Override // java.lang.Runnable
            public void run() {
                zzfr.this.zzbgf.zzj(str, str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzfp
    public zzfu zzly() {
        return new zzfv(this);
    }
}
