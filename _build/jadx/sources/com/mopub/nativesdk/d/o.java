package com.mopub.nativesdk.d;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;

/* compiled from: SDKUtil.java */
/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class o {
    public static void a(Context context, String str, String str2) {
        Intent intent = new Intent("com.android.vending.INSTALL_REFERRER");
        if (Build.VERSION.SDK_INT >= 13) {
            intent.addFlags(32);
        }
        intent.putExtra("referrer", str2.replace("%3D", "=").replace("%26", "&"));
        intent.setPackage(str);
        context.sendBroadcast(intent);
    }

    public static String a(String str) {
        if (str != null) {
            String[] split = str.split("referrer=");
            if (split.length >= 2 && split[1] != null) {
                return split[1];
            }
        }
        return null;
    }

    public static void a(Context context, String str) {
        if (str != null && context != null) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent.addFlags(268435456);
                ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
                if (resolveActivity != null) {
                    intent.setClassName(resolveActivity.activityInfo.packageName, resolveActivity.activityInfo.name);
                }
                context.startActivity(intent);
            } catch (Exception e) {
                try {
                    Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                    intent2.addFlags(268435456);
                    context.startActivity(intent2);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }
}
