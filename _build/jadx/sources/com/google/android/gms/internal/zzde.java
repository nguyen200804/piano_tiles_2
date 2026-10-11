package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.io.File;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzde {
    final Context mContext;
    final String zzarj;
    String zzbdp;
    BlockingQueue<zzdk> zzbdr;
    ExecutorService zzbds;
    LinkedHashMap<String, String> zzbdt = new LinkedHashMap<>();
    Map<String, zzdh> zzbdu = new HashMap();
    private AtomicBoolean zzbdv = new AtomicBoolean(false);
    private File zzbdw;

    public zzde(Context context, String str, String str2, Map<String, String> map) {
        File externalStorageDirectory;
        this.mContext = context;
        this.zzarj = str;
        this.zzbdp = str2;
        this.zzbdv.set(zzdc.zzazg.get().booleanValue());
        if (this.zzbdv.get() && (externalStorageDirectory = Environment.getExternalStorageDirectory()) != null) {
            this.zzbdw = new File(externalStorageDirectory, "sdk_csi_data.txt");
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.zzbdt.put(entry.getKey(), entry.getValue());
        }
        this.zzbdr = new ArrayBlockingQueue(30);
        this.zzbds = Executors.newSingleThreadExecutor();
        this.zzbds.execute(new Runnable() { // from class: com.google.android.gms.internal.zzde.1
            @Override // java.lang.Runnable
            public void run() {
                zzde.this.zzkc();
            }
        });
        this.zzbdu.put("action", zzdh.zzbdz);
        this.zzbdu.put("ad_format", zzdh.zzbdz);
        this.zzbdu.put("e", zzdh.zzbea);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.String] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void zzc(@android.support.annotation.Nullable java.io.File r4, java.lang.String r5) {
        /*
            r3 = this;
            if (r4 == 0) goto L45
            r2 = 0
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L22 java.lang.Throwable -> L36
            r0 = 1
            r1.<init>(r4, r0)     // Catch: java.io.IOException -> L22 java.lang.Throwable -> L36
            byte[] r0 = r5.getBytes()     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4d
            r1.write(r0)     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4d
            r0 = 10
            r1.write(r0)     // Catch: java.lang.Throwable -> L4b java.io.IOException -> L4d
            if (r1 == 0) goto L1a
            r1.close()     // Catch: java.io.IOException -> L1b
        L1a:
            return
        L1b:
            r0 = move-exception
            java.lang.String r1 = "CsiReporter: Cannot close file: sdk_csi_data.txt."
            com.google.android.gms.internal.zzkd.zzd(r1, r0)
            goto L1a
        L22:
            r0 = move-exception
            r1 = r2
        L24:
            java.lang.String r2 = "CsiReporter: Cannot write to file: sdk_csi_data.txt."
            com.google.android.gms.internal.zzkd.zzd(r2, r0)     // Catch: java.lang.Throwable -> L4b
            if (r1 == 0) goto L1a
            r1.close()     // Catch: java.io.IOException -> L2f
            goto L1a
        L2f:
            r0 = move-exception
            java.lang.String r1 = "CsiReporter: Cannot close file: sdk_csi_data.txt."
            com.google.android.gms.internal.zzkd.zzd(r1, r0)
            goto L1a
        L36:
            r0 = move-exception
            r1 = r2
        L38:
            if (r1 == 0) goto L3d
            r1.close()     // Catch: java.io.IOException -> L3e
        L3d:
            throw r0
        L3e:
            r1 = move-exception
            java.lang.String r2 = "CsiReporter: Cannot close file: sdk_csi_data.txt."
            com.google.android.gms.internal.zzkd.zzd(r2, r1)
            goto L3d
        L45:
            java.lang.String r0 = "CsiReporter: File doesn't exists. Cannot write CSI data to file."
            com.google.android.gms.internal.zzkd.zzcx(r0)
            goto L1a
        L4b:
            r0 = move-exception
            goto L38
        L4d:
            r0 = move-exception
            goto L24
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzde.zzc(java.io.File, java.lang.String):void");
    }

    private void zzc(Map<String, String> map, String str) {
        String zza = zza(this.zzbdp, map, str);
        if (this.zzbdv.get()) {
            zzc(this.zzbdw, zza);
        } else {
            com.google.android.gms.ads.internal.zzu.zzfq().zzc(this.mContext, this.zzarj, zza);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzkc() {
        while (true) {
            try {
                zzdk take = this.zzbdr.take();
                String zzki = take.zzki();
                if (!TextUtils.isEmpty(zzki)) {
                    zzc(zza(this.zzbdt, take.zzm()), zzki);
                }
            } catch (InterruptedException e) {
                zzkd.zzd("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }

    String zza(String str, Map<String, String> map, @NonNull String str2) {
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        StringBuilder sb = new StringBuilder(buildUpon.build().toString());
        sb.append("&").append("it").append("=").append(str2);
        return sb.toString();
    }

    Map<String, String> zza(Map<String, String> map, @Nullable Map<String, String> map2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        if (map2 == null) {
            return linkedHashMap;
        }
        for (Map.Entry<String, String> entry : map2.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            linkedHashMap.put(key, zzaq(key).zzg((String) linkedHashMap.get(key), value));
        }
        return linkedHashMap;
    }

    public boolean zza(zzdk zzdkVar) {
        return this.zzbdr.offer(zzdkVar);
    }

    public zzdh zzaq(String str) {
        zzdh zzdhVar = this.zzbdu.get(str);
        return zzdhVar != null ? zzdhVar : zzdh.zzbdy;
    }

    public void zzc(@Nullable List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.zzbdt.put("e", TextUtils.join(",", list));
    }
}
