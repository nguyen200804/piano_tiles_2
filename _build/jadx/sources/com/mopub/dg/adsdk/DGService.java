package com.mopub.dg.adsdk;

import android.app.IntentService;
import android.content.Intent;
import com.mopub.dg.adapi.DGAdApi;
import com.mopub.dg.c.g;
import com.mopub.dg.c.m;
import com.mopub.dg.d.b.b;
import com.mopub.dg.e.a.a.a;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class DGService extends IntentService {
    public DGService() {
        super("DGService");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        String stringExtra;
        try {
            String stringExtra2 = intent.getStringExtra("intent_action");
            if (stringExtra2.equals("android.intent.action.PACKAGE_ADDED") && (stringExtra = intent.getStringExtra("intent_package_name")) != null && !stringExtra.equals("")) {
                if (Boolean.valueOf(b.a(getApplicationContext()).c("TrackInstall")).booleanValue() && g.A) {
                    DGAdApi.getInstance(getApplicationContext()).trackAd(stringExtra);
                }
                a.a(getApplicationContext(), stringExtra);
            }
            if (stringExtra2.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                m.a(getApplicationContext()).a();
            }
        } catch (Exception e) {
        }
    }
}
