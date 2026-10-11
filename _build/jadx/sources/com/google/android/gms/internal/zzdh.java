package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.Map;

@zzin
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public abstract class zzdh {

    @zzin
    public static final zzdh zzbdy = new zzdh() { // from class: com.google.android.gms.internal.zzdh.1
        @Override // com.google.android.gms.internal.zzdh
        public String zzg(@Nullable String str, String str2) {
            return str2;
        }
    };

    @zzin
    public static final zzdh zzbdz = new zzdh() { // from class: com.google.android.gms.internal.zzdh.2
        @Override // com.google.android.gms.internal.zzdh
        public String zzg(@Nullable String str, String str2) {
            return str != null ? str : str2;
        }
    };

    @zzin
    public static final zzdh zzbea = new zzdh() { // from class: com.google.android.gms.internal.zzdh.3
        @Nullable
        private String zzar(@Nullable String str) {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            int i = 0;
            int length = str.length();
            while (i < str.length() && str.charAt(i) == ',') {
                i++;
            }
            while (length > 0 && str.charAt(length - 1) == ',') {
                length--;
            }
            return (i == 0 && length == str.length()) ? str : str.substring(i, length);
        }

        @Override // com.google.android.gms.internal.zzdh
        public String zzg(@Nullable String str, String str2) {
            String zzar = zzar(str);
            String zzar2 = zzar(str2);
            return TextUtils.isEmpty(zzar) ? zzar2 : TextUtils.isEmpty(zzar2) ? zzar : new StringBuilder(String.valueOf(zzar).length() + 1 + String.valueOf(zzar2).length()).append(zzar).append(",").append(zzar2).toString();
        }
    };

    public final void zza(Map<String, String> map, String str, String str2) {
        map.put(str, zzg(map.get(str), str2));
    }

    public abstract String zzg(@Nullable String str, String str2);
}
