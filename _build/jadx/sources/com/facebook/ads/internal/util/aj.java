package com.facebook.ads.internal.util;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.InterstitialAdActivity;
import java.util.Iterator;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class aj {
    private Intent a(Uri uri) {
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setComponent(null);
        if (Build.VERSION.SDK_INT >= 15) {
            intent.setSelector(null);
        }
        return intent;
    }

    private boolean a(Context context) {
        Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/")), 0).iterator();
        while (it.hasNext()) {
            if (it.next().activityInfo.applicationInfo.packageName.equals("com.android.vending")) {
                return true;
            }
        }
        return false;
    }

    private void b(Context context, Uri uri) {
        context.startActivity(c(context, uri));
    }

    private void b(Context context, Uri uri, String str) {
        Intent intent = new Intent(context, (Class<?>) AudienceNetworkActivity.class);
        intent.addFlags(268435456);
        intent.putExtra(AudienceNetworkActivity.VIEW_TYPE, AudienceNetworkActivity.Type.BROWSER);
        intent.putExtra(AudienceNetworkActivity.BROWSER_URL, uri.toString());
        intent.putExtra(AudienceNetworkActivity.CLIENT_TOKEN, str);
        intent.putExtra(AudienceNetworkActivity.HANDLER_TIME, System.currentTimeMillis());
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            intent.setClass(context, InterstitialAdActivity.class);
            try {
                context.startActivity(intent);
            } catch (ActivityNotFoundException e2) {
                b(context, uri);
            }
        }
    }

    private Intent c(Context context, Uri uri) {
        Intent a2 = a(uri);
        a2.addCategory("android.intent.category.BROWSABLE");
        a2.addFlags(268435456);
        a2.putExtra("com.android.browser.application_id", context.getPackageName());
        a2.putExtra("create_new_tab", false);
        return a2;
    }

    void a(Context context, Uri uri) {
        if (!a(context)) {
            throw new t();
        }
        Intent c = c(context, uri);
        c.setPackage("com.android.vending");
        context.startActivity(c);
    }

    void a(Context context, Uri uri, String str) {
        if (com.facebook.ads.internal.view.a.d.a(uri.getScheme()) && com.facebook.ads.internal.j.e(context)) {
            b(context, uri, str);
        } else {
            b(context, uri);
        }
    }
}
