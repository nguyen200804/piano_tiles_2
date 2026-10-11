package com.applovin.impl.sdk;

import android.app.Activity;
import android.widget.Toast;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class ao {

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinSdkImpl f428a;

    /* renamed from: b, reason: collision with root package name */
    private final String f429b;
    private final Activity c;

    public ao(AppLovinSdkImpl appLovinSdkImpl, Activity activity, String str) {
        this.f428a = appLovinSdkImpl;
        this.f429b = str;
        this.c = activity;
    }

    void a() {
        this.c.runOnUiThread(new s(this));
    }

    void a(String str, Throwable th) {
        this.f428a.getLogger().userError("IncentivizedConfirmationManager", "Unable to show incentivized ad reward dialog. Have you defined com.applovin.adview.AppLovinConfirmationActivity in your manifest?", th);
        Toast.makeText(this.c, str, 1).show();
    }

    String b() {
        return this.f429b.equals("accepted") ? (String) this.f428a.a(av.ac) : this.f429b.equals("quota_exceeded") ? (String) this.f428a.a(av.ad) : this.f429b.equals("rejected") ? (String) this.f428a.a(av.ae) : (String) this.f428a.a(av.af);
    }
}
