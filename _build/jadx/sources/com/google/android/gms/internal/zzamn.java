package com.google.android.gms.internal;

import java.lang.reflect.Field;
import java.util.Locale;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public enum zzamn implements zzamo {
    IDENTITY { // from class: com.google.android.gms.internal.zzamn.1
        @Override // com.google.android.gms.internal.zzamo
        public String zzc(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE { // from class: com.google.android.gms.internal.zzamn.2
        @Override // com.google.android.gms.internal.zzamo
        public String zzc(Field field) {
            return zzamn.zztm(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES { // from class: com.google.android.gms.internal.zzamn.3
        @Override // com.google.android.gms.internal.zzamo
        public String zzc(Field field) {
            return zzamn.zztm(zzamn.zzbx(field.getName(), " "));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES { // from class: com.google.android.gms.internal.zzamn.4
        @Override // com.google.android.gms.internal.zzamo
        public String zzc(Field field) {
            return zzamn.zzbx(field.getName(), "_").toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES { // from class: com.google.android.gms.internal.zzamn.5
        @Override // com.google.android.gms.internal.zzamo
        public String zzc(Field field) {
            return zzamn.zzbx(field.getName(), "-").toLowerCase(Locale.ENGLISH);
        }
    };

    private static String zza(char c, String str, int i) {
        if (i >= str.length()) {
            return String.valueOf(c);
        }
        String valueOf = String.valueOf(str.substring(i));
        return new StringBuilder(String.valueOf(valueOf).length() + 1).append(c).append(valueOf).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzbx(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zztm(String str) {
        int i = 0;
        StringBuilder sb = new StringBuilder();
        char charAt = str.charAt(0);
        while (i < str.length() - 1 && !Character.isLetter(charAt)) {
            sb.append(charAt);
            i++;
            charAt = str.charAt(i);
        }
        return i == str.length() ? sb.toString() : !Character.isUpperCase(charAt) ? sb.append(zza(Character.toUpperCase(charAt), str, i + 1)).toString() : str;
    }
}
