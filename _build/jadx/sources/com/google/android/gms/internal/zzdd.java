package com.google.android.gms.internal;

import android.content.Context;
import android.os.Build;
import java.util.LinkedHashMap;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzdd {
    private Context mContext;
    private String zzarj;
    private boolean zzbdo = zzdc.zzaze.get().booleanValue();
    private String zzbdp = zzdc.zzazf.get();
    private Map<String, String> zzbdq = new LinkedHashMap();

    public zzdd(Context context, String str) {
        this.mContext = null;
        this.zzarj = null;
        this.mContext = context;
        this.zzarj = str;
        this.zzbdq.put("s", "gmob_sdk");
        this.zzbdq.put("v", "3");
        this.zzbdq.put("os", Build.VERSION.RELEASE);
        this.zzbdq.put("sdk", Build.VERSION.SDK);
        this.zzbdq.put("device", com.google.android.gms.ads.internal.zzu.zzfq().zztg());
        this.zzbdq.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        this.zzbdq.put("is_lite_sdk", com.google.android.gms.ads.internal.zzu.zzfq().zzan(context) ? "1" : "0");
        zziv zzy = com.google.android.gms.ads.internal.zzu.zzfw().zzy(this.mContext);
        this.zzbdq.put("network_coarse", Integer.toString(zzy.zzcgp));
        this.zzbdq.put("network_fine", Integer.toString(zzy.zzcgq));
    }

    Context getContext() {
        return this.mContext;
    }

    String zzhl() {
        return this.zzarj;
    }

    boolean zzjz() {
        return this.zzbdo;
    }

    String zzka() {
        return this.zzbdp;
    }

    Map<String, String> zzkb() {
        return this.zzbdq;
    }
}
