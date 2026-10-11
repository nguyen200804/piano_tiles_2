package com.google.android.gms.internal;

import android.text.TextUtils;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzen implements zzep {
    private void zzb(zzlh zzlhVar, Map<String, String> map) {
        String str = map.get("label");
        String str2 = map.get("start_label");
        String str3 = map.get("timestamp");
        if (TextUtils.isEmpty(str)) {
            zzkd.zzcx("No label given for CSI tick.");
            return;
        }
        if (TextUtils.isEmpty(str3)) {
            zzkd.zzcx("No timestamp given for CSI tick.");
            return;
        }
        try {
            long zzd = zzd(Long.parseLong(str3));
            if (TextUtils.isEmpty(str2)) {
                str2 = "native:view_load";
            }
            zzlhVar.zzus().zza(str, str2, zzd);
        } catch (NumberFormatException e) {
            zzkd.zzd("Malformed timestamp for CSI tick.", e);
        }
    }

    private void zzc(zzlh zzlhVar, Map<String, String> map) {
        String str = map.get("value");
        if (TextUtils.isEmpty(str)) {
            zzkd.zzcx("No value given for CSI experiment.");
            return;
        }
        zzdk zzkf = zzlhVar.zzus().zzkf();
        if (zzkf == null) {
            zzkd.zzcx("No ticker for WebView, dropping experiment ID.");
        } else {
            zzkf.zzh("e", str);
        }
    }

    private long zzd(long j) {
        return (j - com.google.android.gms.ads.internal.zzu.zzfu().currentTimeMillis()) + com.google.android.gms.ads.internal.zzu.zzfu().elapsedRealtime();
    }

    private void zzd(zzlh zzlhVar, Map<String, String> map) {
        String str = map.get(MediationMetaData.KEY_NAME);
        String str2 = map.get("value");
        if (TextUtils.isEmpty(str2)) {
            zzkd.zzcx("No value given for CSI extra.");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            zzkd.zzcx("No name given for CSI extra.");
            return;
        }
        zzdk zzkf = zzlhVar.zzus().zzkf();
        if (zzkf == null) {
            zzkd.zzcx("No ticker for WebView, dropping extra parameter.");
        } else {
            zzkf.zzh(str, str2);
        }
    }

    @Override // com.google.android.gms.internal.zzep
    public void zza(zzlh zzlhVar, Map<String, String> map) {
        String str = map.get("action");
        if ("tick".equals(str)) {
            zzb(zzlhVar, map);
        } else if ("experiment".equals(str)) {
            zzc(zzlhVar, map);
        } else if ("extra".equals(str)) {
            zzd(zzlhVar, map);
        }
    }
}
