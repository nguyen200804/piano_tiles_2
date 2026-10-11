package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzdc;
import com.google.android.gms.internal.zzep;
import com.google.android.gms.internal.zzfs;
import com.google.android.gms.internal.zzft;
import com.google.android.gms.internal.zzin;
import com.google.android.gms.internal.zzjw;
import com.google.android.gms.internal.zzkd;
import com.google.android.gms.internal.zzkh;
import com.google.android.gms.internal.zzla;
import com.google.android.gms.internal.zzlh;
import java.util.Map;
import org.json.JSONObject;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzg {
    private Context mContext;
    private final Object zzail = new Object();
    public final zzep zzaku = new zzep() { // from class: com.google.android.gms.ads.internal.zzg.1
        @Override // com.google.android.gms.internal.zzep
        public void zza(zzlh zzlhVar, Map<String, String> map) {
            zzlhVar.zzb("/appSettingsFetched", this);
            synchronized (zzg.this.zzail) {
                if (map != null) {
                    if ("true".equalsIgnoreCase(map.get("isSuccessful"))) {
                        zzu.zzft().zzd(zzg.this.mContext, map.get("appSettingsJson"));
                    }
                }
            }
        }
    };

    private static boolean zza(@Nullable zzjw zzjwVar) {
        if (zzjwVar == null) {
            return true;
        }
        return (((zzu.zzfu().currentTimeMillis() - zzjwVar.zzse()) > zzdc.zzbcv.get().longValue() ? 1 : ((zzu.zzfu().currentTimeMillis() - zzjwVar.zzse()) == zzdc.zzbcv.get().longValue() ? 0 : -1)) > 0) || !zzjwVar.zzsf();
    }

    public void zza(final Context context, VersionInfoParcel versionInfoParcel, final boolean z, @Nullable zzjw zzjwVar, final String str, @Nullable final String str2) {
        if (zza(zzjwVar)) {
            if (context == null) {
                zzkd.zzcx("Context not provided to fetch application settings");
                return;
            }
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                zzkd.zzcx("App settings could not be fetched. Required parameters missing");
                return;
            }
            this.mContext = context;
            final zzfs zzc = zzu.zzfq().zzc(context, versionInfoParcel);
            zzkh.zzclc.post(new Runnable() { // from class: com.google.android.gms.ads.internal.zzg.2
                @Override // java.lang.Runnable
                public void run() {
                    zzc.zzma().zza(new zzla.zzc<zzft>() { // from class: com.google.android.gms.ads.internal.zzg.2.1
                        @Override // com.google.android.gms.internal.zzla.zzc
                        /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
                        public void zzd(zzft zzftVar) {
                            zzftVar.zza("/appSettingsFetched", zzg.this.zzaku);
                            try {
                                JSONObject jSONObject = new JSONObject();
                                if (!TextUtils.isEmpty(str)) {
                                    jSONObject.put("app_id", str);
                                } else if (!TextUtils.isEmpty(str2)) {
                                    jSONObject.put("ad_unit_id", str2);
                                }
                                jSONObject.put("is_init", z);
                                jSONObject.put("pn", context.getPackageName());
                                zzftVar.zza("AFMA_fetchAppSettings", jSONObject);
                            } catch (Exception e) {
                                zzftVar.zzb("/appSettingsFetched", zzg.this.zzaku);
                                zzkd.zzb("Error requesting application settings", e);
                            }
                        }
                    }, new zzla.zzb());
                }
            });
        }
    }
}
