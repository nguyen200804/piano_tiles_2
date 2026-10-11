package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.SystemClock;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.android.gms.ads.internal.zzu;
import com.google.android.gms.internal.zzhn;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzkd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzd extends zzhn.zza {
    private Context mContext;
    private String zzarj;
    private String zzbwy;
    private ArrayList<String> zzbwz;

    public zzd(String str, ArrayList<String> arrayList, Context context, String str2) {
        this.zzbwy = str;
        this.zzbwz = arrayList;
        this.zzarj = str2;
        this.mContext = context;
    }

    @Override // com.google.android.gms.internal.zzhn
    public String getProductId() {
        return this.zzbwy;
    }

    @Override // com.google.android.gms.internal.zzhn
    public void recordPlayBillingResolution(int i) {
        if (i == 0) {
            zzps();
        }
        Map<String, String> zzpr = zzpr();
        zzpr.put("google_play_status", String.valueOf(i));
        zzpr.put(AppLovinEventParameters.PRODUCT_IDENTIFIER, this.zzbwy);
        zzpr.put("status", String.valueOf(zzai(i)));
        LinkedList linkedList = new LinkedList();
        Iterator<String> it = this.zzbwz.iterator();
        while (it.hasNext()) {
            linkedList.add(zzu.zzfq().zzb(it.next(), zzpr));
        }
        zzu.zzfq().zza(this.mContext, this.zzarj, linkedList);
    }

    @Override // com.google.android.gms.internal.zzhn
    public void recordResolution(int i) {
        if (i == 1) {
            zzps();
        }
        Map<String, String> zzpr = zzpr();
        zzpr.put("status", String.valueOf(i));
        zzpr.put(AppLovinEventParameters.PRODUCT_IDENTIFIER, this.zzbwy);
        LinkedList linkedList = new LinkedList();
        Iterator<String> it = this.zzbwz.iterator();
        while (it.hasNext()) {
            linkedList.add(zzu.zzfq().zzb(it.next(), zzpr));
        }
        zzu.zzfq().zza(this.mContext, this.zzarj, linkedList);
    }

    protected int zzai(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            return 2;
        }
        return i == 4 ? 3 : 0;
    }

    Map<String, String> zzpr() {
        String packageName = this.mContext.getPackageName();
        String str = "";
        try {
            str = this.mContext.getPackageManager().getPackageInfo(packageName, 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            zzkd.zzd("Error to retrieve app version", e);
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - zzu.zzft().zzsk().zzsx();
        HashMap hashMap = new HashMap();
        hashMap.put("sessionid", zzu.zzft().getSessionId());
        hashMap.put("appid", packageName);
        hashMap.put("osversion", String.valueOf(Build.VERSION.SDK_INT));
        hashMap.put("sdkversion", this.zzarj);
        hashMap.put("appversion", str);
        hashMap.put("timestamp", String.valueOf(elapsedRealtime));
        return hashMap;
    }

    void zzps() {
        try {
            this.mContext.getClassLoader().loadClass("com.google.ads.conversiontracking.IAPConversionReporter").getDeclaredMethod("reportWithProductId", Context.class, String.class, String.class, Boolean.TYPE).invoke(null, this.mContext, this.zzbwy, "", true);
        } catch (ClassNotFoundException e) {
            zzkd.zzcx("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
        } catch (NoSuchMethodException e2) {
            zzkd.zzcx("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
        } catch (Exception e3) {
            zzkd.zzd("Fail to report a conversion.", e3);
        }
    }
}
