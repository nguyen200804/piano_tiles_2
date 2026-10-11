package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.zzu;
import com.google.android.gms.internal.zzhs;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzkc;
import com.google.android.gms.internal.zzkd;
import com.google.android.gms.internal.zzkh;
import com.google.pay.util.IabHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzc extends zzkc implements ServiceConnection {
    private Context mContext;
    private final Object zzail;
    private zzhs zzbld;
    private boolean zzbwr;
    private zzb zzbws;
    private zzh zzbwt;
    private List<zzf> zzbwu;
    private zzk zzbwv;

    public zzc(Context context, zzhs zzhsVar, zzk zzkVar) {
        this(context, zzhsVar, zzkVar, new zzb(context), zzh.zzs(context.getApplicationContext()));
    }

    zzc(Context context, zzhs zzhsVar, zzk zzkVar, zzb zzbVar, zzh zzhVar) {
        this.zzail = new Object();
        this.zzbwr = false;
        this.zzbwu = null;
        this.mContext = context;
        this.zzbld = zzhsVar;
        this.zzbwv = zzkVar;
        this.zzbws = zzbVar;
        this.zzbwt = zzhVar;
        this.zzbwu = this.zzbwt.zzg(10L);
    }

    private void zze(long j) {
        do {
            if (!zzf(j)) {
                zzkd.v("Timeout waiting for pending transaction to be processed.");
            }
        } while (!this.zzbwr);
    }

    private boolean zzf(long j) {
        long elapsedRealtime = 60000 - (SystemClock.elapsedRealtime() - j);
        if (elapsedRealtime <= 0) {
            return false;
        }
        try {
            this.zzail.wait(elapsedRealtime);
        } catch (InterruptedException e) {
            zzkd.zzcx("waitWithTimeout_lock interrupted");
        }
        return true;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.zzail) {
            this.zzbws.zzas(iBinder);
            zzpq();
            this.zzbwr = true;
            this.zzail.notify();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        zzkd.zzcw("In-app billing service disconnected.");
        this.zzbws.destroy();
    }

    @Override // com.google.android.gms.internal.zzkc
    public void onStop() {
        synchronized (this.zzail) {
            com.google.android.gms.common.stats.zzb.zzaux().zza(this.mContext, this);
            this.zzbws.destroy();
        }
    }

    protected void zza(final zzf zzfVar, String str, String str2) {
        final Intent intent = new Intent();
        zzu.zzga();
        intent.putExtra(IabHelper.RESPONSE_CODE, 0);
        zzu.zzga();
        intent.putExtra(IabHelper.RESPONSE_INAPP_PURCHASE_DATA, str);
        zzu.zzga();
        intent.putExtra(IabHelper.RESPONSE_INAPP_SIGNATURE, str2);
        zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.ads.internal.purchase.zzc.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (zzc.this.zzbwv.zza(zzfVar.zzbxg, -1, intent)) {
                        zzc.this.zzbld.zza(new zzg(zzc.this.mContext, zzfVar.zzbxh, true, -1, intent, zzfVar));
                    } else {
                        zzc.this.zzbld.zza(new zzg(zzc.this.mContext, zzfVar.zzbxh, false, -1, intent, zzfVar));
                    }
                } catch (RemoteException e) {
                    zzkd.zzcx("Fail to verify and dispatch pending transaction");
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.zzkc
    public void zzew() {
        synchronized (this.zzail) {
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage("com.android.vending");
            com.google.android.gms.common.stats.zzb.zzaux().zza(this.mContext, intent, this, 1);
            zze(SystemClock.elapsedRealtime());
            com.google.android.gms.common.stats.zzb.zzaux().zza(this.mContext, this);
            this.zzbws.destroy();
        }
    }

    protected void zzpq() {
        if (this.zzbwu.isEmpty()) {
            return;
        }
        HashMap hashMap = new HashMap();
        for (zzf zzfVar : this.zzbwu) {
            hashMap.put(zzfVar.zzbxh, zzfVar);
        }
        String str = null;
        while (true) {
            Bundle zzn = this.zzbws.zzn(this.mContext.getPackageName(), str);
            if (zzn == null || zzu.zzga().zze(zzn) != 0) {
                break;
            }
            ArrayList<String> stringArrayList = zzn.getStringArrayList(IabHelper.RESPONSE_INAPP_ITEM_LIST);
            ArrayList<String> stringArrayList2 = zzn.getStringArrayList(IabHelper.RESPONSE_INAPP_PURCHASE_DATA_LIST);
            ArrayList<String> stringArrayList3 = zzn.getStringArrayList(IabHelper.RESPONSE_INAPP_SIGNATURE_LIST);
            String string = zzn.getString(IabHelper.INAPP_CONTINUATION_TOKEN);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= stringArrayList.size()) {
                    break;
                }
                if (hashMap.containsKey(stringArrayList.get(i2))) {
                    String str2 = stringArrayList.get(i2);
                    String str3 = stringArrayList2.get(i2);
                    String str4 = stringArrayList3.get(i2);
                    zzf zzfVar2 = (zzf) hashMap.get(str2);
                    if (zzfVar2.zzbxg.equals(zzu.zzga().zzby(str3))) {
                        zza(zzfVar2, str3, str4);
                        hashMap.remove(str2);
                    }
                }
                i = i2 + 1;
            }
            if (string == null || hashMap.isEmpty()) {
                break;
            } else {
                str = string;
            }
        }
        Iterator it = hashMap.keySet().iterator();
        while (it.hasNext()) {
            this.zzbwt.zza((zzf) hashMap.get((String) it.next()));
        }
    }
}
