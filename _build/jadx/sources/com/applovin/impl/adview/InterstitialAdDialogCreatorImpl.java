package com.applovin.impl.adview;

import android.app.Activity;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.adview.InterstitialAdDialogCreator;
import com.applovin.sdk.AppLovinSdk;
import java.lang.ref.WeakReference;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class InterstitialAdDialogCreatorImpl implements InterstitialAdDialogCreator {

    /* renamed from: a, reason: collision with root package name */
    private static final Object f333a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private static WeakReference f334b = new WeakReference(null);
    private static WeakReference c = new WeakReference(null);

    @Override // com.applovin.adview.InterstitialAdDialogCreator
    public AppLovinInterstitialAdDialog createInterstitialAdDialog(AppLovinSdk appLovinSdk, Activity activity) {
        af afVar;
        if (appLovinSdk == null) {
            appLovinSdk = AppLovinSdk.getInstance(activity);
        }
        synchronized (f333a) {
            afVar = (af) f334b.get();
            if (afVar != null && afVar.isShowing() && c.get() == activity) {
                appLovinSdk.getLogger().w("InterstitialAdDialogCreator", "An interstitial dialog is already showing, returning it");
            } else {
                afVar = new af(appLovinSdk, activity);
                f334b = new WeakReference(afVar);
                c = new WeakReference(activity);
            }
        }
        return afVar;
    }
}
