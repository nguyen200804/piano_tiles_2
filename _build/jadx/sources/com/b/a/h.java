package com.b.a;

import android.content.Context;
import android.text.TextUtils;

/* compiled from: InternalConfig.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static String[] f645a = new String[2];

    public static String[] a(Context context) {
        String[] a2;
        if (!TextUtils.isEmpty(f645a[0]) && !TextUtils.isEmpty(f645a[1])) {
            return f645a;
        }
        if (context != null && (a2 = k.a(context).a()) != null) {
            f645a[0] = a2[0];
            f645a[1] = a2[1];
            return f645a;
        }
        return null;
    }
}
