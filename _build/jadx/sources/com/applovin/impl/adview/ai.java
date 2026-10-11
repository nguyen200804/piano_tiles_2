package com.applovin.impl.adview;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.sdk.ca;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
class ai extends Dialog implements w {

    /* renamed from: a, reason: collision with root package name */
    private final Activity f346a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinSdk f347b;
    private final AppLovinLogger c;
    private RelativeLayout d;
    private AppLovinAdView e;
    private Runnable f;
    private af g;
    private volatile boolean h;
    private volatile boolean i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ai(AppLovinSdk appLovinSdk, Activity activity) {
        super(activity, R.style.Theme.Translucent.NoTitleBar);
        aj ajVar = null;
        this.g = null;
        this.h = false;
        this.i = false;
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        this.f347b = appLovinSdk;
        this.c = appLovinSdk.getLogger();
        this.f346a = activity;
        this.f = new f(this, ajVar);
        this.e = new AppLovinAdView(appLovinSdk, AppLovinAdSize.INTERSTITIAL, activity);
        this.e.setAutoDestroy(false);
        ((AdViewControllerImpl) this.e.getAdViewController()).setParentDialog(new WeakReference(this));
        requestWindowFeature(1);
        try {
            getWindow().setFlags(activity.getWindow().getAttributes().flags, activity.getWindow().getAttributes().flags);
        } catch (Exception e) {
            this.c.e("InterstitialAdDialog", "Set window flags failed.", e);
        }
    }

    private int a(int i) {
        return AppLovinSdkUtils.dpToPx(this.f346a, i);
    }

    private void a() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        this.e.setLayoutParams(layoutParams);
        this.d = new RelativeLayout(this.f346a);
        this.d.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.d.setBackgroundColor(-1157627904);
        this.d.addView(this.e);
        setContentView(this.d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(v vVar) {
        u a2 = u.a(this.f347b, getContext(), vVar);
        a2.setOnClickListener(new d(this));
        ca caVar = new ca(this.f347b);
        int a3 = a(caVar.l());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(a3, a3);
        layoutParams.addRule(10);
        layoutParams.addRule(caVar.y() ? 9 : 11);
        a2.a(a3);
        int a4 = a(caVar.n());
        int a5 = a(caVar.p());
        layoutParams.setMargins(a5, a4, a5, a4);
        this.e.addView(a2, layoutParams);
        a2.bringToFront();
        int a6 = a(new ca(this.f347b).r());
        View view = new View(this.f346a);
        view.setBackgroundColor(0);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(a3 + a6, a3 + a6);
        layoutParams2.addRule(10);
        layoutParams2.addRule(caVar.x() ? 9 : 11);
        layoutParams2.setMargins(0, a4 - a(5), a5 - a(5), 0);
        view.setOnClickListener(new e(this, a2));
        this.e.addView(view, layoutParams2);
        view.bringToFront();
    }

    public void a(af afVar) {
        this.e.setAdDisplayListener(new aj(this, afVar));
        this.e.setAdClickListener(new ak(this, afVar));
        this.e.setAdVideoPlaybackListener(new b(this, afVar));
        this.g = afVar;
        afVar.a(true);
    }

    public void a(AppLovinAd appLovinAd) {
        this.f346a.runOnUiThread(new c(this, appLovinAd));
    }

    @Override // android.app.Dialog, android.content.DialogInterface, com.applovin.impl.adview.w
    public void dismiss() {
        if (this.g != null) {
            this.g.g();
        }
        if (this.e != null) {
            this.e.destroy();
        }
        this.g = null;
        this.e = null;
        super.dismiss();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a();
    }
}
