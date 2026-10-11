package com.google.android.gms.internal;

import android.content.SharedPreferences;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzcy<T> {
    private final int zzaxo;
    private final String zzaxp;
    private final T zzaxq;

    private zzcy(int i, String str, T t) {
        this.zzaxo = i;
        this.zzaxp = str;
        this.zzaxq = t;
        com.google.android.gms.ads.internal.zzu.zzfy().zza(this);
    }

    public static zzcy<String> zza(int i, String str) {
        zzcy<String> zza = zza(i, str, (String) null);
        com.google.android.gms.ads.internal.zzu.zzfy().zzb(zza);
        return zza;
    }

    public static zzcy<Integer> zza(int i, String str, int i2) {
        return new zzcy<Integer>(i, str, Integer.valueOf(i2)) { // from class: com.google.android.gms.internal.zzcy.2
            @Override // com.google.android.gms.internal.zzcy
            /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
            public Integer zza(SharedPreferences sharedPreferences) {
                return Integer.valueOf(sharedPreferences.getInt(getKey(), zzjw().intValue()));
            }
        };
    }

    public static zzcy<Long> zza(int i, String str, long j) {
        return new zzcy<Long>(i, str, Long.valueOf(j)) { // from class: com.google.android.gms.internal.zzcy.3
            @Override // com.google.android.gms.internal.zzcy
            /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
            public Long zza(SharedPreferences sharedPreferences) {
                return Long.valueOf(sharedPreferences.getLong(getKey(), zzjw().longValue()));
            }
        };
    }

    public static zzcy<Boolean> zza(int i, String str, Boolean bool) {
        return new zzcy<Boolean>(i, str, bool) { // from class: com.google.android.gms.internal.zzcy.1
            @Override // com.google.android.gms.internal.zzcy
            /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
            public Boolean zza(SharedPreferences sharedPreferences) {
                return Boolean.valueOf(sharedPreferences.getBoolean(getKey(), zzjw().booleanValue()));
            }
        };
    }

    public static zzcy<String> zza(int i, String str, String str2) {
        return new zzcy<String>(i, str, str2) { // from class: com.google.android.gms.internal.zzcy.4
            @Override // com.google.android.gms.internal.zzcy
            /* renamed from: zze, reason: merged with bridge method [inline-methods] */
            public String zza(SharedPreferences sharedPreferences) {
                return sharedPreferences.getString(getKey(), zzjw());
            }
        };
    }

    public static zzcy<String> zzb(int i, String str) {
        zzcy<String> zza = zza(i, str, (String) null);
        com.google.android.gms.ads.internal.zzu.zzfy().zzc(zza);
        return zza;
    }

    public T get() {
        return (T) com.google.android.gms.ads.internal.zzu.zzfz().zzd(this);
    }

    public String getKey() {
        return this.zzaxp;
    }

    protected abstract T zza(SharedPreferences sharedPreferences);

    public T zzjw() {
        return this.zzaxq;
    }
}
