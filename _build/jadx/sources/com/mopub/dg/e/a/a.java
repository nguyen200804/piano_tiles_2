package com.mopub.dg.e.a;

import android.content.Context;
import android.content.Intent;
import com.mopub.dg.adapi.DGAdApi;
import com.mopub.dg.adsdk.DGService;
import com.mopub.dg.c.g;
import com.mopub.dg.c.m;
import com.mopub.dg.d.b.b;
import com.mopub.dg.e.a.b.f;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public final class a {
    public static void a(Context context, Intent intent) {
        DGAdApi dGAdApi;
        if (intent.getAction().equals("android.intent.action.PACKAGE_ADDED")) {
            String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
            if (f.b(context)) {
                Intent intent2 = new Intent(context, (Class<?>) DGService.class);
                intent2.putExtra("intent_action", intent.getAction());
                intent2.putExtra("intent_package_name", schemeSpecificPart);
                context.startService(intent2);
            } else {
                if (Boolean.valueOf(b.a(context).c("TrackInstall")).booleanValue() && g.A && (dGAdApi = DGAdApi.getInstance(context)) != null) {
                    dGAdApi.trackAd(schemeSpecificPart);
                }
                com.mopub.dg.e.a.a.a.a(context, schemeSpecificPart);
            }
        }
        if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE") && com.mopub.dg.d.a.b(context)) {
            if (!f.b(context)) {
                m.a(context).a();
                return;
            }
            Intent intent3 = new Intent(context, (Class<?>) DGService.class);
            intent3.putExtra("intent_action", intent.getAction());
            context.startService(intent3);
        }
    }
}
