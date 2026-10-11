package com.mopub.dg.e.a.b;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.support.v4.view.GravityCompat;
import android.util.Log;
import com.mopub.dg.d.n;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class b {
    public static void a(String str, Context context) {
        boolean z;
        if (n.a(5)) {
            Log.w("DG", str == null ? "" : str);
        }
        boolean z2 = false;
        if (a(str)) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(GravityCompat.RELATIVE_LAYOUT_DIRECTION);
            intent.addFlags(268435456);
            intent.addFlags(1073741824);
            intent.addFlags(65536);
            intent.addFlags(67108864);
            try {
                Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(intent, 65536).iterator();
                while (it.hasNext()) {
                    if (it.next().activityInfo.packageName.equals("com.android.vending")) {
                        intent.setPackage("com.android.vending");
                        context.startActivity(intent);
                        z = true;
                    } else {
                        z = z2;
                    }
                    z2 = z;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (z2) {
            return;
        }
        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent2.addFlags(268435456);
        context.startActivity(intent2);
    }

    public static boolean a(String str) {
        if (str == null) {
            return false;
        }
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        String host = parse.getHost();
        if ("play.google.com".equals(host) || "market.android.com".equals(host)) {
            return true;
        }
        return "market".equals(scheme);
    }
}
