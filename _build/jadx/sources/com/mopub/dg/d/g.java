package com.mopub.dg.d;

import android.content.Context;
import java.io.File;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    private static File f4296a;

    /* renamed from: b, reason: collision with root package name */
    private static g f4297b;

    private g(Context context) {
        File cacheDir = context.getCacheDir();
        f4296a = cacheDir;
        if (cacheDir.exists()) {
            return;
        }
        f4296a.mkdirs();
    }

    public static g a(Context context) {
        if (f4297b == null) {
            synchronized (g.class) {
                if (f4297b == null) {
                    f4297b = new g(context);
                }
            }
        }
        return f4297b;
    }

    public static File a(String str) {
        return new File(f4296a, String.valueOf(str.hashCode()));
    }
}
