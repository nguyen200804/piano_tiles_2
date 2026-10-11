package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import java.util.concurrent.Future;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class zzkf {

    private static abstract class zza extends zzkc {
        private zza() {
        }

        @Override // com.google.android.gms.internal.zzkc
        public void onStop() {
        }
    }

    public interface zzb {
        void zzg(Bundle bundle);
    }

    public static Future zza(final Context context, final zzb zzbVar) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzkf.5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzkc
            public void zzew() {
                SharedPreferences zzn = zzkf.zzn(context);
                Bundle bundle = new Bundle();
                bundle.putBoolean("use_https", zzn.getBoolean("use_https", true));
                if (zzbVar != null) {
                    zzbVar.zzg(bundle);
                }
            }
        }.zzpy();
    }

    public static Future zza(final Context context, final String str, final long j) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzkf.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzkc
            public void zzew() {
                SharedPreferences.Editor edit = zzkf.zzn(context).edit();
                edit.putString("app_settings_json", str);
                edit.putLong("app_settings_last_update_ms", j);
                edit.apply();
            }
        }.zzpy();
    }

    public static Future zzb(final Context context, final zzb zzbVar) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzkf.6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzkc
            public void zzew() {
                SharedPreferences zzn = zzkf.zzn(context);
                Bundle bundle = new Bundle();
                bundle.putInt("webview_cache_version", zzn.getInt("webview_cache_version", 0));
                if (zzbVar != null) {
                    zzbVar.zzg(bundle);
                }
            }
        }.zzpy();
    }

    public static Future zzc(final Context context, final zzb zzbVar) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzkf.8
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzkc
            public void zzew() {
                SharedPreferences zzn = zzkf.zzn(context);
                Bundle bundle = new Bundle();
                bundle.putBoolean("content_url_opted_out", zzn.getBoolean("content_url_opted_out", true));
                if (zzbVar != null) {
                    zzbVar.zzg(bundle);
                }
            }
        }.zzpy();
    }

    public static Future zzc(final Context context, final boolean z) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzkf.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzkc
            public void zzew() {
                SharedPreferences.Editor edit = zzkf.zzn(context).edit();
                edit.putBoolean("use_https", z);
                edit.apply();
            }
        }.zzpy();
    }

    public static Future zzd(final Context context, final zzb zzbVar) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzkf.10
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzkc
            public void zzew() {
                SharedPreferences zzn = zzkf.zzn(context);
                Bundle bundle = new Bundle();
                bundle.putString("content_url_hashes", zzn.getString("content_url_hashes", ""));
                if (zzbVar != null) {
                    zzbVar.zzg(bundle);
                }
            }
        }.zzpy();
    }

    public static Future zze(final Context context, final zzb zzbVar) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzkf.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzkc
            public void zzew() {
                SharedPreferences zzn = zzkf.zzn(context);
                Bundle bundle = new Bundle();
                bundle.putBoolean("auto_collect_location", zzn.getBoolean("auto_collect_location", false));
                if (zzbVar != null) {
                    zzbVar.zzg(bundle);
                }
            }
        }.zzpy();
    }

    public static Future zze(final Context context, final boolean z) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzkf.7
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzkc
            public void zzew() {
                SharedPreferences.Editor edit = zzkf.zzn(context).edit();
                edit.putBoolean("content_url_opted_out", z);
                edit.apply();
            }
        }.zzpy();
    }

    public static Future zzf(final Context context, final zzb zzbVar) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzkf.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzkc
            public void zzew() {
                SharedPreferences zzn = zzkf.zzn(context);
                Bundle bundle = new Bundle();
                bundle.putString("app_settings_json", zzn.getString("app_settings_json", ""));
                bundle.putLong("app_settings_last_update_ms", zzn.getLong("app_settings_last_update_ms", 0L));
                if (zzbVar != null) {
                    zzbVar.zzg(bundle);
                }
            }
        }.zzpy();
    }

    public static Future zzf(final Context context, final String str) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzkf.9
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzkc
            public void zzew() {
                SharedPreferences.Editor edit = zzkf.zzn(context).edit();
                edit.putString("content_url_hashes", str);
                edit.apply();
            }
        }.zzpy();
    }

    public static Future zzf(final Context context, final boolean z) {
        return (Future) new zza() { // from class: com.google.android.gms.internal.zzkf.11
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.google.android.gms.internal.zzkc
            public void zzew() {
                SharedPreferences.Editor edit = zzkf.zzn(context).edit();
                edit.putBoolean("auto_collect_location", z);
                edit.apply();
            }
        }.zzpy();
    }

    public static SharedPreferences zzn(Context context) {
        return context.getSharedPreferences("admob", 0);
    }
}
