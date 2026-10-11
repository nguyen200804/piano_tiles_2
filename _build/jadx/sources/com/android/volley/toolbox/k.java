package com.android.volley.toolbox;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.http.AndroidHttpClient;
import android.os.Build;
import com.android.volley.m;
import java.io.File;

/* compiled from: Volley.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class k {
    public static m a(Context context, f fVar) {
        File file = new File(context.getCacheDir(), "volley");
        String str = "volley/0";
        try {
            String packageName = context.getPackageName();
            str = packageName + "/" + context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
        }
        if (fVar == null) {
            if (Build.VERSION.SDK_INT >= 9) {
                fVar = new g();
            } else {
                fVar = new d(AndroidHttpClient.newInstance(str));
            }
        }
        m mVar = new m(new c(file), new a(fVar));
        mVar.a();
        return mVar;
    }

    public static m a(Context context) {
        return a(context, null);
    }
}
