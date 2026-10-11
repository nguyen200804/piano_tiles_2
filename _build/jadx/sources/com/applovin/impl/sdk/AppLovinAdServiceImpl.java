package com.applovin.impl.sdk;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.adview.AdViewControllerImpl;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdUpdateListener;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: F:\Code\piano-tiles-2\classes.dex */
public class AppLovinAdServiceImpl implements AppLovinAdService {
    public static String URI_NO_OP = "/adservice/no_op";
    public static String URI_TRACK_CLICK_IMMEDIATELY = "/adservice/track_click_now";

    /* renamed from: a, reason: collision with root package name */
    private final AppLovinSdkImpl f394a;

    /* renamed from: b, reason: collision with root package name */
    private final AppLovinLogger f395b;
    private Handler c;
    private final Map d;

    AppLovinAdServiceImpl(AppLovinSdkImpl appLovinSdkImpl) {
        cm cmVar = null;
        if (appLovinSdkImpl == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f394a = appLovinSdkImpl;
        this.f395b = appLovinSdkImpl.getLogger();
        this.c = new Handler(Looper.getMainLooper());
        this.d = new HashMap(2);
        Iterator it = AppLovinAdType.allTypes().iterator();
        while (it.hasNext()) {
            this.d.put((AppLovinAdType) it.next(), new HashMap());
        }
        ((Map) this.d.get(AppLovinAdType.REGULAR)).put(AppLovinAdSize.BANNER, new cq(AppLovinAdSize.BANNER, cmVar));
        ((Map) this.d.get(AppLovinAdType.REGULAR)).put(AppLovinAdSize.MREC, new cq(AppLovinAdSize.MREC, cmVar));
        ((Map) this.d.get(AppLovinAdType.REGULAR)).put(AppLovinAdSize.INTERSTITIAL, new cq(AppLovinAdSize.INTERSTITIAL, cmVar));
        ((Map) this.d.get(AppLovinAdType.REGULAR)).put(AppLovinAdSize.LEADER, new cq(AppLovinAdSize.LEADER, cmVar));
        ((Map) this.d.get(AppLovinAdType.INCENTIVIZED)).put(AppLovinAdSize.INTERSTITIAL, new cq(AppLovinAdSize.INTERSTITIAL, cmVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Uri uri, AppLovinAdImpl appLovinAdImpl, AppLovinAdView appLovinAdView, AdViewControllerImpl adViewControllerImpl) {
        adViewControllerImpl.removeClickTrackingOverlay();
        expireAdLoadState(appLovinAdImpl);
        AppLovinSdkUtils.openUri(appLovinAdView.getContext(), uri, this.f394a);
        adViewControllerImpl.dismissInterstitialIfRequired();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, AppLovinAdLoadListener appLovinAdLoadListener) {
        c cVar = new c(appLovinAdSize, appLovinAdType);
        AppLovinAd appLovinAd = (AppLovinAd) this.f394a.c().b(cVar);
        if (appLovinAd != null) {
            this.f395b.d("AppLovinAdService", "Using pre-loaded ad: " + appLovinAd + " for size " + appLovinAdSize + " and type " + appLovinAdType);
            appLovinAdLoadListener.adReceived(appLovinAd);
        } else {
            this.f394a.a().a(new bi(appLovinAdSize, appLovinAdType, appLovinAdLoadListener, this.f394a), bp.MAIN);
        }
        this.f394a.c().f(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a() {
        return ((PowerManager) this.f394a.getApplicationContext().getSystemService("power")).isScreenOn();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(AppLovinAdSize appLovinAdSize) {
        if (appLovinAdSize == AppLovinAdSize.BANNER) {
            return ((Boolean) this.f394a.a(av.z)).booleanValue();
        }
        if (appLovinAdSize == AppLovinAdSize.MREC) {
            return ((Boolean) this.f394a.a(av.B)).booleanValue();
        }
        if (appLovinAdSize == AppLovinAdSize.LEADER) {
            return ((Boolean) this.f394a.a(av.D)).booleanValue();
        }
        return false;
    }

    private boolean a(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType) {
        if (!((Boolean) this.f394a.a(av.G)).booleanValue()) {
            return false;
        }
        if (appLovinAdType.equals(AppLovinAdType.INCENTIVIZED)) {
            return ((Boolean) this.f394a.a(av.aD)).booleanValue() && ((Boolean) this.f394a.a(av.K)).booleanValue();
        }
        if (appLovinAdSize.equals(AppLovinAdSize.INTERSTITIAL)) {
            return ((Boolean) this.f394a.a(av.aE)).booleanValue() && ((String) this.f394a.a(av.J)).contains(AppLovinAdSize.INTERSTITIAL.getLabel());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long b(AppLovinAdSize appLovinAdSize) {
        if (appLovinAdSize == AppLovinAdSize.BANNER) {
            return ((Long) this.f394a.a(av.A)).longValue();
        }
        if (appLovinAdSize == AppLovinAdSize.MREC) {
            return ((Long) this.f394a.a(av.C)).longValue();
        }
        if (appLovinAdSize == AppLovinAdSize.LEADER) {
            return ((Long) this.f394a.a(av.E)).longValue();
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(AppLovinAdSize appLovinAdSize) {
        long b2 = b(appLovinAdSize);
        if (b2 > 0) {
            this.f394a.a().a(new cr(this, appLovinAdSize), bp.MAIN, (b2 + 2) * 1000);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void addAdUpdateListener(AppLovinAdUpdateListener appLovinAdUpdateListener) {
        addAdUpdateListener(appLovinAdUpdateListener, AppLovinAdSize.BANNER);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void addAdUpdateListener(AppLovinAdUpdateListener appLovinAdUpdateListener, AppLovinAdSize appLovinAdSize) {
        Collection collection;
        boolean z;
        Collection collection2;
        if (appLovinAdUpdateListener == null) {
            throw new IllegalArgumentException("No ad listener specified");
        }
        cq cqVar = (cq) ((Map) this.d.get(AppLovinAdType.REGULAR)).get(appLovinAdSize);
        synchronized (cqVar.f504b) {
            collection = cqVar.f;
            if (collection.contains(appLovinAdUpdateListener)) {
                z = false;
            } else {
                collection2 = cqVar.f;
                collection2.add(appLovinAdUpdateListener);
                z = true;
                this.f395b.d("AppLovinAdService", "Added update listener: " + appLovinAdUpdateListener);
            }
        }
        if (z) {
            this.f394a.a().a(new cr(this, appLovinAdSize), bp.MAIN);
        }
    }

    public void expireAdLoadState(AppLovinAd appLovinAd) {
        if (appLovinAd == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        cq cqVar = (cq) ((Map) this.d.get(appLovinAdImpl.getType())).get(appLovinAdImpl.getSize());
        synchronized (cqVar.f504b) {
            cqVar.c = null;
            cqVar.d = 0L;
        }
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public boolean hasPreloadedAd(AppLovinAdSize appLovinAdSize) {
        return this.f394a.c().e(new c(appLovinAdSize, AppLovinAdType.REGULAR));
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAd(AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener) {
        loadNextAd(appLovinAdSize, AppLovinAdType.REGULAR, appLovinAdLoadListener);
    }

    public void loadNextAd(AppLovinAdSize appLovinAdSize, AppLovinAdType appLovinAdType, AppLovinAdLoadListener appLovinAdLoadListener) {
        Collection collection;
        AppLovinAd appLovinAd;
        if (appLovinAdSize == null) {
            throw new IllegalArgumentException("No ad size specified");
        }
        if (appLovinAdLoadListener == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        if (appLovinAdType == null) {
            throw new IllegalArgumentException("No ad type specificed");
        }
        if (appLovinAdSize.equals(AppLovinAdSize.BANNER) || appLovinAdSize.equals(AppLovinAdSize.MREC) || appLovinAdSize.equals(AppLovinAdSize.LEADER)) {
            this.f394a.getLogger().userError("AppLovinAdService", "Banners, MRecs and Leaderboards are deprecated and will be removed in a future SDK version!");
        }
        cq cqVar = (cq) ((Map) this.d.get(appLovinAdType)).get(appLovinAdSize);
        synchronized (cqVar.f504b) {
            boolean z = System.currentTimeMillis() > cqVar.d;
            if (cqVar.c == null || z) {
                this.f395b.d("AppLovinAdService", "Loading next ad...");
                collection = cqVar.g;
                collection.add(appLovinAdLoadListener);
                if (!cqVar.e) {
                    cqVar.e = true;
                    cp cpVar = new cp(this, (cq) ((Map) this.d.get(appLovinAdType)).get(appLovinAdSize), null);
                    if (!a(appLovinAdSize, appLovinAdType)) {
                        this.f395b.d("AppLovinAdService", "Task merge not necessary.");
                        a(appLovinAdSize, appLovinAdType, cpVar);
                    } else if (this.f394a.c().a(new c(appLovinAdSize, appLovinAdType), cpVar)) {
                        this.f395b.d("AppLovinAdService", "Attaching load listener to initial preload task...");
                        appLovinAd = null;
                    } else {
                        this.f395b.d("AppLovinAdService", "Skipped attach of initial preload callback.");
                        a(appLovinAdSize, appLovinAdType, cpVar);
                        appLovinAd = null;
                    }
                }
                appLovinAd = null;
            } else {
                appLovinAd = cqVar.c;
            }
        }
        if (appLovinAd != null) {
            appLovinAdLoadListener.adReceived(appLovinAd);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void preloadAd(AppLovinAdSize appLovinAdSize) {
        this.f394a.c().f(new c(appLovinAdSize, AppLovinAdType.REGULAR));
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void removeAdUpdateListener(AppLovinAdUpdateListener appLovinAdUpdateListener, AppLovinAdSize appLovinAdSize) {
        Collection collection;
        if (appLovinAdUpdateListener == null) {
            return;
        }
        cq cqVar = (cq) ((Map) this.d.get(AppLovinAdType.REGULAR)).get(appLovinAdSize);
        synchronized (cqVar.f504b) {
            collection = cqVar.f;
            collection.remove(appLovinAdUpdateListener);
        }
        this.f395b.d("AppLovinAdService", "Removed update listener: " + appLovinAdUpdateListener);
    }

    public void trackClickOn(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView, AdViewControllerImpl adViewControllerImpl, Uri uri) {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        String supplementalClickTrackingUrl = appLovinAdImpl.getSupplementalClickTrackingUrl();
        if (AppLovinSdkUtils.isValidString(supplementalClickTrackingUrl)) {
            this.f394a.getPersistentPostbackManager().a(supplementalClickTrackingUrl, (Map) null);
        }
        a(uri, appLovinAdImpl, appLovinAdView, adViewControllerImpl);
    }

    public void trackForegroundClick(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView, AdViewControllerImpl adViewControllerImpl, Uri uri) {
        if (appLovinAd == null) {
            throw new IllegalArgumentException("No ad specified");
        }
        this.f395b.d("AppLovinAdService", "Tracking foreground click on an ad...");
        int intValue = ((Integer) this.f394a.a(av.bp)).intValue();
        int intValue2 = ((Integer) this.f394a.a(av.bq)).intValue();
        int intValue3 = ((Integer) this.f394a.a(av.br)).intValue();
        this.f394a.getPostbackService().dispatchPostbackAsync(((AppLovinAdImpl) appLovinAd).getSupplementalClickTrackingUrl(), null, intValue, intValue2, intValue3, new cm(this, adViewControllerImpl, uri, (AppLovinAdImpl) appLovinAd, appLovinAdView));
    }
}
