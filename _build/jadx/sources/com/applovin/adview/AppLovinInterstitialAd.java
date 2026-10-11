package com.applovin.adview;

import android.app.Activity;
import android.util.AttributeSet;
import android.view.View;
import com.applovin.impl.adview.InterstitialAdDialogCreatorImpl;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AppLovinInterstitialAd extends View {

    /* renamed from: a, reason: collision with root package name */
    private AppLovinInterstitialAdDialog f299a;

    public AppLovinInterstitialAd(Activity activity, AttributeSet attributeSet) {
        this(activity, attributeSet, 0);
    }

    public AppLovinInterstitialAd(Activity activity, AttributeSet attributeSet, int i) {
        super(activity, attributeSet, i);
        this.f299a = null;
        AppLovinSdk appLovinSdk = AppLovinSdk.getInstance(activity);
        if (appLovinSdk != null && !appLovinSdk.hasCriticalErrors()) {
            this.f299a = new InterstitialAdDialogCreatorImpl().createInterstitialAdDialog(appLovinSdk, activity);
        }
        setVisibility(8);
    }

    public static AppLovinInterstitialAdDialog create(AppLovinSdk appLovinSdk, Activity activity) {
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        return new InterstitialAdDialogCreatorImpl().createInterstitialAdDialog(appLovinSdk, activity);
    }

    public static boolean isAdReadyToDisplay(Activity activity) {
        return AppLovinSdk.getInstance(activity).getAdService().hasPreloadedAd(AppLovinAdSize.INTERSTITIAL);
    }

    public static void show(Activity activity) {
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        AppLovinSdk appLovinSdk = AppLovinSdk.getInstance(activity);
        if (appLovinSdk == null || appLovinSdk.hasCriticalErrors()) {
            return;
        }
        show(appLovinSdk, activity);
    }

    public static void show(AppLovinSdk appLovinSdk, Activity activity) {
        if (appLovinSdk == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        }
        activity.runOnUiThread(new u(appLovinSdk, activity));
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f299a != null) {
            this.f299a.show();
        }
    }
}
