package com.mopub.volley.toolbox;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.http.AndroidHttpClient;
import android.os.Build;
import com.mopub.volley.RequestQueue;
import java.io.File;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class Volley {
    public static RequestQueue newRequestQueue(Context context, HttpStack stack) {
        File file = new File(context.getCacheDir(), "volley");
        String str = "volley/0";
        try {
            String packageName = context.getPackageName();
            str = packageName + "/" + context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
        }
        if (stack == null) {
            if (Build.VERSION.SDK_INT >= 9) {
                stack = new HurlStack();
            } else {
                stack = new HttpClientStack(AndroidHttpClient.newInstance(str));
            }
        }
        RequestQueue requestQueue = new RequestQueue(new DiskBasedCache(file), new BasicNetwork(stack));
        requestQueue.start();
        return requestQueue;
    }

    public static RequestQueue newRequestQueue(Context context) {
        return newRequestQueue(context, null);
    }
}
