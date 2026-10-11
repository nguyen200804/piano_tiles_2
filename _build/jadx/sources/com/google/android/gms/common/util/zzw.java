package com.google.android.gms.common.util;

import java.util.regex.Pattern;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class zzw {
    private static final Pattern Bl = Pattern.compile("\\$\\{(.*?)\\}");

    public static boolean zzib(String str) {
        return str == null || com.google.android.gms.common.internal.zzf.xN.zzb(str);
    }
}
