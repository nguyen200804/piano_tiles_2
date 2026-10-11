package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.api.Releasable;
import com.mopub.mobileads.VastExtensionXmlManager;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzfd implements Releasable {
    protected Context mContext;
    protected String zzbjf;
    protected WeakReference<zzlh> zzbjg;

    public zzfd(zzlh zzlhVar) {
        this.mContext = zzlhVar.getContext();
        this.zzbjf = com.google.android.gms.ads.internal.zzu.zzfq().zzg(this.mContext, zzlhVar.zzum().zzcs);
        this.zzbjg = new WeakReference<>(zzlhVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(String str, Map<String, String> map) {
        zzlh zzlhVar = this.zzbjg.get();
        if (zzlhVar != null) {
            zzlhVar.zza(str, map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String zzbb(String str) {
        switch (str) {
        }
        return "internal";
    }

    public abstract void abort();

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
    }

    protected void zza(final String str, final String str2, final int i) {
        com.google.android.gms.ads.internal.util.client.zza.zzcnb.post(new Runnable() { // from class: com.google.android.gms.internal.zzfd.2
            @Override // java.lang.Runnable
            public void run() {
                HashMap hashMap = new HashMap();
                hashMap.put("event", "precacheComplete");
                hashMap.put("src", str);
                hashMap.put("cachedSrc", str2);
                hashMap.put("totalBytes", Integer.toString(i));
                zzfd.this.zza("onPrecacheEvent", hashMap);
            }
        });
    }

    protected void zza(final String str, final String str2, final int i, final int i2, final boolean z) {
        com.google.android.gms.ads.internal.util.client.zza.zzcnb.post(new Runnable() { // from class: com.google.android.gms.internal.zzfd.1
            @Override // java.lang.Runnable
            public void run() {
                HashMap hashMap = new HashMap();
                hashMap.put("event", "precacheProgress");
                hashMap.put("src", str);
                hashMap.put("cachedSrc", str2);
                hashMap.put("bytesLoaded", Integer.toString(i));
                hashMap.put("totalBytes", Integer.toString(i2));
                hashMap.put("cacheReady", z ? "1" : "0");
                zzfd.this.zza("onPrecacheEvent", hashMap);
            }
        });
    }

    protected void zza(final String str, final String str2, final String str3, final String str4) {
        com.google.android.gms.ads.internal.util.client.zza.zzcnb.post(new Runnable() { // from class: com.google.android.gms.internal.zzfd.3
            @Override // java.lang.Runnable
            public void run() {
                HashMap hashMap = new HashMap();
                hashMap.put("event", "precacheCanceled");
                hashMap.put("src", str);
                if (!TextUtils.isEmpty(str2)) {
                    hashMap.put("cachedSrc", str2);
                }
                hashMap.put(VastExtensionXmlManager.TYPE, zzfd.this.zzbb(str3));
                hashMap.put("reason", str3);
                if (!TextUtils.isEmpty(str4)) {
                    hashMap.put("message", str4);
                }
                zzfd.this.zza("onPrecacheEvent", hashMap);
            }
        });
    }

    public abstract boolean zzaz(String str);

    protected String zzba(String str) {
        return com.google.android.gms.ads.internal.client.zzm.zziw().zzcu(str);
    }
}
