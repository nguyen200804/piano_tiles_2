package com.google.android.gms.internal;

import android.content.Context;
import com.facebook.ads.AudienceNetworkActivity;
import com.google.android.gms.internal.zzic;
import com.google.android.gms.internal.zzju;
import com.google.android.gms.internal.zzli;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzid extends zzhy implements zzli.zza {
    zzid(Context context, zzju.zza zzaVar, zzlh zzlhVar, zzic.zza zzaVar2) {
        super(context, zzaVar, zzlhVar, zzaVar2);
    }

    @Override // com.google.android.gms.internal.zzhy
    protected void zzpw() {
        if (this.zzbxs.errorCode != -2) {
            return;
        }
        this.zzbgf.zzuj().zza(this);
        zzqd();
        zzkd.zzcv("Loading HTML in WebView.");
        this.zzbgf.loadDataWithBaseURL(com.google.android.gms.ads.internal.zzu.zzfq().zzco(this.zzbxs.zzbto), this.zzbxs.body, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, "UTF-8", null);
    }

    protected void zzqd() {
    }
}
