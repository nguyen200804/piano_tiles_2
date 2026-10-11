package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.FilenameUtils;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzdk {
    boolean zzbdo;
    private String zzbeh;
    private zzdi zzbei;

    @Nullable
    private zzdk zzbej;
    private final List<zzdi> zzbef = new LinkedList();
    private final Map<String, String> zzbeg = new LinkedHashMap();
    private final Object zzail = new Object();

    public zzdk(boolean z, String str, String str2) {
        this.zzbdo = z;
        this.zzbeg.put("action", str);
        this.zzbeg.put("ad_format", str2);
    }

    public boolean zza(zzdi zzdiVar, long j, String... strArr) {
        synchronized (this.zzail) {
            for (String str : strArr) {
                this.zzbef.add(new zzdi(j, str, zzdiVar));
            }
        }
        return true;
    }

    public boolean zza(@Nullable zzdi zzdiVar, String... strArr) {
        if (!this.zzbdo || zzdiVar == null) {
            return false;
        }
        return zza(zzdiVar, com.google.android.gms.ads.internal.zzu.zzfu().elapsedRealtime(), strArr);
    }

    public void zzas(String str) {
        if (this.zzbdo) {
            synchronized (this.zzail) {
                this.zzbeh = str;
            }
        }
    }

    @Nullable
    public zzdi zzc(long j) {
        if (this.zzbdo) {
            return new zzdi(j, null, null);
        }
        return null;
    }

    public void zzc(@Nullable zzdk zzdkVar) {
        synchronized (this.zzail) {
            this.zzbej = zzdkVar;
        }
    }

    public void zzh(String str, String str2) {
        zzde zzsl;
        if (!this.zzbdo || TextUtils.isEmpty(str2) || (zzsl = com.google.android.gms.ads.internal.zzu.zzft().zzsl()) == null) {
            return;
        }
        synchronized (this.zzail) {
            zzsl.zzaq(str).zza(this.zzbeg, str, str2);
        }
    }

    public zzdi zzkg() {
        return zzc(com.google.android.gms.ads.internal.zzu.zzfu().elapsedRealtime());
    }

    public void zzkh() {
        synchronized (this.zzail) {
            this.zzbei = zzkg();
        }
    }

    public String zzki() {
        String sb;
        StringBuilder sb2 = new StringBuilder();
        synchronized (this.zzail) {
            for (zzdi zzdiVar : this.zzbef) {
                long time = zzdiVar.getTime();
                String zzkd = zzdiVar.zzkd();
                zzdi zzke = zzdiVar.zzke();
                if (zzke != null && time > 0) {
                    sb2.append(zzkd).append(FilenameUtils.EXTENSION_SEPARATOR).append(time - zzke.getTime()).append(',');
                }
            }
            this.zzbef.clear();
            if (!TextUtils.isEmpty(this.zzbeh)) {
                sb2.append(this.zzbeh);
            } else if (sb2.length() > 0) {
                sb2.setLength(sb2.length() - 1);
            }
            sb = sb2.toString();
        }
        return sb;
    }

    public zzdi zzkj() {
        zzdi zzdiVar;
        synchronized (this.zzail) {
            zzdiVar = this.zzbei;
        }
        return zzdiVar;
    }

    Map<String, String> zzm() {
        Map<String, String> zza;
        synchronized (this.zzail) {
            zzde zzsl = com.google.android.gms.ads.internal.zzu.zzft().zzsl();
            zza = (zzsl == null || this.zzbej == null) ? this.zzbeg : zzsl.zza(this.zzbeg, this.zzbej.zzm());
        }
        return zza;
    }
}
